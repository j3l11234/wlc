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
		
		if($check_status >= 1 && $check_status <= 4)
			$where['check_status'] = $check_status;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_errand.checker_id')
		->field('errand_id,date,start_date,end_date,place,reason,object,cost,cost_sum,summary,attachment_name,attachment_path,
			check_status,checker.alias AS checker,check_datetime,check_comment');

		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}

	/**
	 * 新增/修改申请
	 * 
	 * @param int $user_id			用户id
	 * @param int $errand_id		申请条目id 为null则新增记录
	 * @param string $date			申请日期
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $reason		出差事由
	 * @param string $is_summary	是否总结
	 * @param string $place			出差地点
	 * @param string $object		出访目标
	 * @param string $cost			报销金额细节
	 * @param int $cost_sum			报销金额
	 * @param string $summary		出差总结
	 * @return 修改失败null 否则返回数据条目
	 */
	public function submitErrand(
		$user_id,$errand_id,$date,$start_date,$end_date,$place,$reason,
		$is_summary,$object="",$cost="",$cost_sum="",$summary="",$attachment_name="",$attachment_path=""){
		if($errand_id == null){ //新增记录
			$data = array(
				'user_id'		=>	$user_id,
				'date'			=>	$date,
				'check_status'	=>	1,
			);
		}else{//编辑记录
			//获取记录
			$data = $this->where(array('errand_id' => $errand_id))->select()[0];
			if(!$data)
				return null;
			//检查记录所有者
			if($data['user_id'] != $user_id)
				return null;
			//只能编辑未审批的记录
			if($data['check_status'] > 2)
				return null;
		}	

		$data['start_date']	=	$start_date;
		$data['end_date']	=	$end_date;
		$data['place']		=	$place;
		$data['reason']		=	$reason;
		if($is_summary){
			$data['check_status']		=	2;
			$data['object']				=	$object;
			$data['cost']				=	$cost;
			$data['cost_sum']			=	$cost_sum;
			$data['summary']			=	$summary;

			if($attachment_name != ""){ //更新附件
				if($data['attachment_path'] != null)
					$delete = 'Uploads'.$data['attachment_path'];
				else
					$delete = null;
				$data['attachment_name'] = $attachment_name;
				$data['attachment_path'] = $attachment_path;
			}
			
		}else{
			if($data['check_status'] == 2) //不允许总结退回到申请
				return null;
		}	
		///print_r($data);
		//die("ddasfsdf");
		if(!$this->add($data,array(),true))
			return null;
		else{
			if($delete != null)
				$this->deleteAttachment($delete);
			return $data;
		}
	}


	/**
	 * 删除申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $errand_id	申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteErrand($user_id,$errand_id,$admin=false){
		//获取记录
		$data = $this->where(array('errand_id' => $errand_id))->select()[0];
		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id && !$admin)
			return null;

		//只能编删除未审批的记录
		if($data['check_status'] > 2)
			return null;

		//检测是否删除成功
		if($this->where(array('errand_id' => $errand_id))->delete() == 0)
			return null;

		if($data['attachment_path'] != null)
			$this->deleteAttachment('Uploads'.$data['attachment_path']);

		return $data;
	}


	/**
	 * 查询用户的出差申请--管理员用
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
		
		if($check_status >= 1 && $check_status <= 4)
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
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_errand.checker_id');
		$this->field('errand_id,department_name,wlc_user.alias,
			date,start_date,end_date,place,reason,object,cost,cost_sum,summary,attachment_name,attachment_path,
			check_status,checker.alias AS checker,check_datetime,check_comment')
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

		$data['check_status']	=	$is_agree=='true' ? 3 : 4;
		$data['checker_id']		=	$checker_id;
		$data['check_datetime']	=	date('Y-m-d H:i:s',$check_datetime);
		$data['check_comment']	=	$check_comment;

		$this->save($data);

		$result = $this->where(array('errand_id' => $errand_id))->select()[0];
		return $result;
	}


	/**
	 * 获取待审批数量
	 * @return 待审批数量
	 */
	public function getPendingNum($user_id){
		return $this->where(array(
			'check_status' => 1,
			'checker_id' => $user_id,
			))->count();
	}
	
	public function deleteAttachment($path){
		@unlink($path);
	}
}