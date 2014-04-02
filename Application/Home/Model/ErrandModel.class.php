<?php
namespace Home\Model;
use Think\Model;

class ErrandModel extends Model {
	
	

	/**
	 * 查询用户的申请
	 * 
	 * @param int $user_id			用户id
	 * @param string $start_date	出发时间
	 * @param string $end_date		返回时间
	 * @param int $check_status		审批状态
	 * @param int $page				第几页
	 * @param int $per_page			每页显示的数量
	 * @return 
	 */
	public function userQuery($user_id, $start_date = '', $end_date = '', $check_status = 0, $page = 1,$per_page = 0){

		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';
		
		$where = array(
			'wlc_errand.user_id'	=>	$user_id,
			'start_date'			=>	array('egt',$start_date),
			'end_date'				=>	array('elt',$end_date),
		);
		
		if($check_status >= 1 && $check_status <= 8)
			$where['check_status'] = $check_status;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_errand.checker_id')
		->join('LEFT JOIN wlc_user AS checker2 ON checker2.user_id = wlc_errand.checker2_id')
		->field('errand_id,date,start_date,end_date,place,reason,object,cost,summary,check_status,
			checker.alias AS checker,check_datetime,check_comment,
			checker2.alias AS checker2,check2_datetime,check2_comment,
			check3_datetime,check3_comment');

		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}
	
	
	/**
	 * 新增请假申请
	 * 
	 * @param int $user_id			用户id
	 * @param string $date			提交日期
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $reason		出差事由
	 * @param string $place			出差地点
	 * @return 新增失败则返回null 否则返回数据条目
	 */
	public function addErrand($user_id, $date, $start_date, $end_date, $place, $reason){
		
		$data = array(
			'user_id'		=>	$user_id,
			'type'			=>	$type,
			'date'			=>	$date,
			'start_date'	=>	$start_date,
			'end_date'		=>	$end_date,
			'reason'		=>	$reason,
			'place'			=>	$place,
		);
		
		if(!$this->add($data))
			return null;
		else
			return $data;
	}


	/**
	 * 修改申请
	 * 
	 * @param int $user_id			用户id
	 * @param int $errand_id		申请条目id
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $reason		出差事由
	 * @param string $place			出差地点
	 * @return 修改失败null 否则返回数据条目
	 */
	public function editErrand($user_id, $errand_id, $start_date, $end_date, $place, $reason){
		//获取记录
		$data = $this->where(array('errand_id' => $errand_id))->select()[0];
		
		if(!$data)
			return null;
		
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编辑未审批的记录
		if($data['check_status'] != 1)
			return null;

		$data['start_date']	=	$start_date;
		$data['end_date']	=	$end_date;
		$data['place']		=	$place;
		$data['reason']		=	$reason;
		
		$this->save($data);

		$result = $this->where(array('errand_id' => $errand_id))->select()[0];
		return $result;
	}


	/**
	 * 删除申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $errand_id	申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteErrand($user_id,$errand_id){
		//获取记录
		$data = $this->where(array('errand_id' => $errand_id))->select()[0];
		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编删除未审批的记录
		if($data['check_status'] != 1)
			return null;

		//检测是否删除成功
		if($this->where(array('errand_id' => $errand_id))->delete() == 0)
			return null;

		return $data;
	}


	/**
	 * 总结出差
	 * 
	 * @param int $user_id			用户id
	 * @param int $errand_id		申请条目id
	 * @param string $object		出访目标
	 * @param int $cost				报销金额
	 * @param string $summary		出差总结
	 * @return 修改失败null 否则返回数据条目
	 */
	public function summarizeErrand($user_id, $errand_id, $object, $cost, $summary){
		//获取记录
		$data = $this->where(array('errand_id' => $errand_id))->select()[0];
		
		if(!$data)
			return null;
		
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能总结申请通过的记录
		if($data['check_status'] != 2 && $data['check_status'] != 4)
			return null;

		$data['object']			=	$object;
		$data['cost']			=	$cost;
		$data['summary']		=	$summary;
		$data['check_status']	=	4;

		$this->save($data);

		$result = $this->where(array('errand_id' => $errand_id))->select()[0];
		return $result;
	}


	/**
	 * 查询用户的请假申请--管理员用
	 * 
	 * @param int $department_id	部门id
	 * @param int $userId			用户id
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param int $checkStatus		审批状态
	 * @param int $order			顺序
	 * @param int $page				第几页
	 * @param int $perPage			每页显示的数量
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function adminQuery($department_id = 0, $user_id = 0, $start_date='', $end_date='', $check_status = null, $order='', $page = 1,$perPage = 0){
		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';

		$where = array(
			'start_date'	=>	array('egt',$start_date),
			'end_date'		=>	array('elt',$end_date),
			);
		
		if($department_id != 0)
			$where['wlc_user.department_id'] = $department_id;
		
		if($user_id != 0)
			$where['wlc_errand.user_id'] = $user_id;
		
		if($check_status >= 1 && $check_status <= 8)
			$where['check_status'] = $check_status;


		switch ($order){
			case 0: //日期倒序
				$order = 'date desc,wlc_user.department_id,wlc_user.alias'; 
				break;  
			case 1: //日期顺序
				$order = 'date ,wlc_user.department_id,wlc_user.alias'; 
				break;
			case 2: //部门顺序
				$order = 'wlc_user.department_id,wlc_user.alias,date desc'; 
				break;
			case 3: //名称顺序
				$order = 'wlc_user.alias,wlc_user.department_id,date desc'; 
				break;
			default:
				$order = 'date desc,wlc_user.department_id, wlc_user.alias'; 
		}

		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_errand.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_errand.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_errand.checker_id')
		->join('LEFT JOIN wlc_user AS checker2 ON checker2.user_id = wlc_errand.checker_id');
		$this->field('errand_id,department_name,wlc_user.alias,date,start_date,end_date,place,reason,object,cost,summary,check_status,
			checker.alias AS checker,check_datetime,check_comment,
			checker2.alias AS checker2,check2_datetime,check2_comment,
			check3_datetime,check3_comment')
		->where($where)->order($order);
		//var_dump($count);
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();	

		$return = array('count' => $count, 'list' => $list);
			return $return;
	}


	/**
	 * 审批请假申请
	 * 
	 * @param int $checker_id			审批者id
	 * @param int $errand_id			申请条目id
	 * @param int $isAgree				是否同意
	 * @param timestamp $check_datetime	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateErrand($checker_id, $errand_id, $is_agree, $check_datetime, $check_comment){
		//获取记录
		$data = $this->where(array('errand_id' => $errand_id))->select()[0];
		
		if(!$data)
			return null;

		if($is_agree == 2 || $is_agree == 3 ){  //申请审批
			if($data['check_status'] != 1 && $data['check_status'] != 2 && $data['check_status'] != 3)
				return null;
			$data['checker_id'] = $checker_id;
			$data['check_datetime']	= date('Y-m-d H:i:s',$check_datetime);
			$data['check_comment'] = $check_comment;

		}elseif($is_agree == 5 || $is_agree == 6){  //申请总结
			if($data['check_status'] != 4 && $data['check_status'] != 5 && $data['check_status'] != 6)
				return null;
			$data['checker2_id'] = $checker_id;
			$data['check2_datetime'] = date('Y-m-d H:i:s',$check_datetime);
			$data['check2_comment'] = $check_comment;

			

		}elseif($is_agree == 7 || $is_agree == 8){ //金额审批
			if($data['check_status'] != 5 && $data['check_status'] != 7 && $data['check_status'] != 8)
				return null;
			$data['check3_datetime'] = date('Y-m-d H:i:s',$check_datetime);
			$data['check3_comment'] = $check_comment;
		}else
			return null;
		
		$data['check_status'] = $is_agree;

		$this->save($data);

		$result = $this->where(array('errand_id' => $errand_id))->select()[0];
		return $result;
	}


	/**
	 * 获取待审批数量
	 * @return 待审批数量
	 */
	public function getPendingNum(){
		return $this->where(array('check_status' => 1))->count();
	}
}