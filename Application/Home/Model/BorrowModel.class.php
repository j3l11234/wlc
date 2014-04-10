<?php
namespace Home\Model;
use Think\Model;

class BorrowModel extends Model {
	
	/**
	 * 新增借用申请
	 * 
	 * @param int $user_id			用户id
	 * @param string $date			提交日期
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $goods_name	物品名称
	 * @param string $goods_parts	物品配件
	 * @param int $goods_number		物品种类
	 * @param string $reason		借用原因
	 * @return 新增失败则返回null 否则返回数据条目
	 */
	public function addBorrow($user_id,$date,$start_date,$end_date,$goods_name,$goods_parts,$goods_number,$reason){
		$data = array(
			'user_id'		=>	$user_id,
			'date'			=>	$date,
			'start_date'	=>	$start_date,
			'end_date'		=>	$end_date,
			'goods_name'	=>	$goods_name,
			'goods_parts'	=>	$goods_parts,
			'goods_number'	=>	$goods_number,
			'reason'		=>	$reason,
		);

		if(!$this->add($data))
			return null;
		else
			return $data;
	}


	/**
	 * 查询用户的借用申请
	 * 
	 * @param int $user_id			用户id
	 * @param string $start_date	借出时间
	 * @param string $end_date		归还时间
	 * @param int $check_status		审批状态
	 * @param int $page				第几页
	 * @param int $per_page			每页显示的数量
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function userQuery($user_id, $start_date = '', $end_date = '', $check_status = 0, $return = 0, $page = 1,$per_page = 0){

		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';
		
		$where = array(
			'user_id'		=>	$user_id,
			'start_date'	=>	array('egt',$start_date),
			'end_date'		=>	array('elt',$end_date),
		);
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;
		
		if($return >= 1 && $return <= 2)
			$where['return'] = $return;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->field('borrow_id,date,start_date,end_date,goods_name,goods_parts,goods_number,reason,check_status,check_datetime,check_comment,return');

		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();

		//判断是否需要归还
		$now = time();
		foreach ($list as $key => $record){
			if($list[$key]['return'] ==1 && $now < strtotime($record['end_date'].' 00:00:00'))
				$list[$key]['return'] = 0;	
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}


	/**
	 * 删除请假申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $borrow_id		请假申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteBorrow($user_id,$borrow_id){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编删除未审批的记录
		if($data['check_status'] != 1)
			return null;

		//检测是否删除成功
		if($this->where(array('borrow_id' => $borrow_id))->delete() == 0)
			return null;

		return $data;
	}


	/**
	 * 修改借用申请
	 * 
	 * @param int $user_id			用户id
	 * @param int $borrow_id		申请条目id
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $goods_name	物品名称
	 * @param string $goods_parts	物品配件
	 * @param int $goods_number		物品种类
	 * @param string $reason		借用原因
	 * @return 修改失败null 否则返回数据条目
	 */
	public function editBorrow($user_id,$borrow_id,$start_date,$end_date,$goods_name,$goods_parts,$goods_number,$reason){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		
		if(!$data)
			return null;
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编辑未审批的记录
		if($data['check_status'] != 1)
			return null;

		$data['start_date']		=	$start_date;
		$data['end_date']		=	$end_date;
		$data['goods_name']		=	$goods_name;
		$data['goods_parts']	=	$goods_parts;
		$data['goods_number']	=	$goods_number;
		$data['reason']			=	$reason;

		$this->save($data);

		$result = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		return $result;
	}

	/**
	 * 归还
	 * 
	 * @param int $user_id		用户id
	 * @param int $borrow_id	申请条目id
	 * @return 审批失败null 否则返回数据条目
	 */
	public function returnBorrow($user_id,$borrow_id){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		
		if(!$data)
			return null;
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		$data['return'] = 2;

		$this->save($data);

		$result = $this->where(array('borrow_id' => $borrow_id))->select()[0];

		//print_r($result);
		return $result;
	}


	/**
	 * 查询用户的请假申请--管理员用
	 * 
	 * @param int $department_id	部门id
	 * @param int $user_id			用户id
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param int $checkStatus		审批状态
	 * @param int $return			是否归还
	 * @param int $order			顺序
	 * @param int $page				第几页
	 * @param int $perPage			每页显示的数量
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function adminQuery($department_id = 0, $user_id = 0, $start_date='', $end_date='', $check_status = 0, $return = 0, $order='', $page = 1,$perPage = 0){
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
			$where['wlc_borrow.user_id'] = $user_id;
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;

		if($return >= 1 && $return <= 2)
			$where['return'] = $return;

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

		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_borrow.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_borrow.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$this->field('borrow_id,date,start_date,end_date,goods_name,goods_parts,goods_number,reason,check_status,check_datetime,check_comment,return,wlc_user.alias,department_name')
		->where($where)->order($order);
		//var_dump($count);
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		//判断是否需要归还
		$now = time();
		foreach ($list as $key => $record){
			if($list[$key]['return'] ==1 && $now < strtotime($record['end_date'].' 00:00:00'))
				$list[$key]['return'] = 0;	
		}

		$return = array('count' => $count, 'list' => $list);
			return $return;
	}


	/**
	 * 审批申请
	 * 
	 * @param int $checker_id			审批者id
	 * @param int $leave_id				请假申请条目id
	 * @param int $isAgree				是否同意
	 * @param timestamp $check_datetime	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateBorrow($borrow_id,$isAgree,$check_datetime,$check_comment){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		
		if(!$data)
			return null;

		$data['check_status'] = $isAgree=='true' ? 2 : 3;
		$data['check_datetime']	=	date('Y-m-d H:i:s',$check_datetime);
		$data['check_comment']	=	$check_comment;
		$data['return'] = 1;

		$this->save($data);

		$result = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		return $result;
	}



	/**
	 * 获取待审批数量
	 * @return 待审批数量
	 */
	public function getPendingNum(){
		return $this->where(array('check_status' => 1))->count();
	}

	/**
	 * 获取待销假数量
	 * @return 待销假数量
	 */
	public function getPendingReturntNum($user_id){
		$list = $this->where(array(
			'user_id' => $user_id,
			'check_status' => 2,
			'return' =>1,
			))->select();

		//判断销假
		$count = 0;
		$now = time();
		foreach ($list as $key => $record){
			if($now > strtotime($record['end_date'].' 00:00:00'))
				$count++;
		}

		return $count;
	}
}