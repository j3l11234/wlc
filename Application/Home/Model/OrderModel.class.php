<?php
namespace Home\Model;
use Think\Model;

class OrderModel extends Model {

	/**
	 * 新增订餐申请
	 * 
	 * @param int $user_id			用户id
	 * @param int $order_id			申请条目id
	 * @param string $date			提交日期
	 * @param string $place			开始时间
	 * @param string $reason		请假原因
	 * @param int $number			订餐人数
	 * @param int $standard			没人标准
	 * @return 新增失败则返回null 否则返回数据条目
	 */
	public function submitOrder($user_id, $order_id, $date, $place, $reason, $number, $standard){
		if(empty($order_id)){ //新增记录
			$data = array(
				'user_id'		=>	$user_id,
				'date'			=>	$date,
				'check_status'	=>	2, //默认全部通过
				'checker_id'	=>	D('User')->getChecker($user_id),
			);
		}else{//编辑记录
			//获取记录
			$data = $this->where(array('order_id' => $order_id))->select()[0];
			if(!$data)
				return null;
			//检查记录所有者
			if($data['user_id'] != $user_id)
				return null;
			//只能编辑未审批的记录
			//if($data['check_status'] > 1)
			//	return null;
		}	

		$data['place']		=	$place;
		$data['reason']		=	$reason;
		$data['number']		=	$number;
		$data['standard']	=	$standard;

		if(!$this->add($data,array(),true))
			return null;
		else
			return $data;
	}


	/**
	 * 查询用户的订餐申请
	 * 
	 * @param int $user_id			用户id
	 * @param string $startDate		开始时间
	 * @param string $endDate		结束时间
	 * @param int $checkStatus		审批状态
	 * @param int $page				第几页
	 * @param int $perPage			每页显示的数量
	 * @return 没用户则返回null 否则返回数据条目
	 */
	public function userQuery($user_id, $start_date='', $end_date='', $check_status = 4, $page = 1,$per_page = 8){
		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';
		
		$where = array(
			'wlc_order.user_id'	=>	$user_id,
			'date'				=>	array('between',array($start_date, $end_date)),
		);
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;
		
		//var_dump($where);
		$count = $this->where($where)->count();
		$this->where($where)->order('date desc')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_order.checker_id')
		->field('order_id,date,place,reason,number,standard,
			check_status,checker.alias AS checker,check_datetime,check_comment');

		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();
		
		//计算数量金额
		foreach ($list as $key => $record){
			$list[$key]['cost'] = $list[$key]['number'] * $list[$key]['standard'];
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}


	/**
	 * 删除订餐申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $order_id		请假申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteOrder($user_id,$order_id,$admin=false){
		//获取记录
		$data = $this->where(array('order_id' => $order_id))->select()[0];
		if(!$data)
			return null;

		if(!$admin){
			//检查记录所有者
			if($data['user_id'] != $user_id)
				return null;

			//只能编删除未审批的记录
			//if($data['check_status'] != 1)
			//	return null;
		}		

		$this->where(array('order_id' => $order_id))->delete();
		//检测是否删除成功
		if($this->where(array('order_id' => $order_id))->select()[0] != null)
			return null;

		return $data;
	}


	/**
	 * 查询用户的请假申请--管理员用
	 * 
	 * @param int $department_id	部门id
	 * @param int $user_id			用户id
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param int $check_status		审批状态
	 * @param int $order			顺序
	 * @param int $page				第几页
	 * @param int $per_page			每页显示的数量
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function adminQuery($department_id = 0, $user_id = 0, $start_date='', $end_date='', $check_status = null, $order='', $page = 1,$per_page = 0){
		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';

		$where = array(
			'date'	=>	array('between',array($start_date, $end_date)),
		);
		
		if($department_id != 0)
			$where['wlc_user.department_id'] = $department_id;
		
		if($user_id != 0)
			$where['wlc_order.user_id'] = $user_id;
		
		if($check_status >= 1 && $check_status <= 3)
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
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_order.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_order.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_order.checker_id');
		$this->field('order_id,wlc_user.alias,department_name,date,place,reason,number,standard,
			check_status,checker.alias AS checker,check_datetime,check_comment')
		->where($where)->order($order);

		//var_dump($count);
		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();
		//var_dump($list);

		//计算数量金额
		foreach ($list as $key => $record){
			$list[$key]['cost'] = $list[$key]['number'] * $list[$key]['standard'];
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}


	/**
	 * 审批请假申请
	 * 
	 * @param int $order_id				请假申请条目id
	 * @param int $is_agree				是否同意
	 * @param timestamp $check_date	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateOrder($checker_id,$order_id,$is_agree,$check_date,$check_comment){
		//获取记录
		$data = $this->where(array('order_id' => $order_id))->select()[0];
		
		if(!$data)
			return null;

		$data['checker_id']		=	$checker_id;
		$data['check_status'] 	= 	$is_agree=='true' ? 2 : 3;
		$data['check_date']	=	date('Y-m-d H:i:s',$check_date);
		$data['check_comment']	=	$check_comment;


		$this->save($data);

		$result = $this->where(array('order_id' => $order_id))->select()[0];
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
}