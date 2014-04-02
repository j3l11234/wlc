<?php
namespace Home\Model;
use Think\Model;

class OrderModel extends Model {

	/**
	 * 新增订餐申请
	 * 
	 * @param int $user_id			用户id
	 * @param timestamp $datetime	提交日期
	 * @param string $place			开始时间
	 * @param string $reason		请假原因
	 * @param int $number			订餐人数
	 * @param int $standard			没人标准
	 * @return 新增失败则返回null 否则返回数据条目
	 */
	public function addOrder($user_id, $datetime, $place, $reason, $number, $standard){
		$data = array(
			'user_id'	=>	$user_id,
			'datetime'	=>	date('Y-m-d H:i:s',$datetime),
			'place'		=>	$place,
			'reason'	=>	$reason,
			'number'	=>	$number,
			'standard'	=>	$standard,
		);
		//print_r($data);
		if(!$this->add($data))
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
			'user_id'	=>	$user_id,
			'datetime'		=>	array('between',array($start_date, $end_date)),
		);
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;
		
		//var_dump(expression)
		$count = $this->where($where)->count();
		$this->where($where)->order('datetime desc')
		->field('order_id,datetime,place,reason,number,standard,check_status,check_datetime,check_comment,check_comment');

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
	 * 修改订餐申请
	 * @param int $user_id			用户id
	 * @param int $order_id			申请条目id
	 * @param timestamp $datetime	提交日期
	 * @param string $place			开始时间
	 * @param string $reason		请假原因
	 * @param int $number			订餐人数
	 * @param int $standard			没人标准
	 * @return 修改失败null 否则返回数据条目
	 */
	public function editLeave($user_id, $order_id, $place, $reason, $number, $standard){
		//获取记录
		$data = $this->where(array('order_id' => $order_id))->select()[0];
		
		if(!$data)
			return null;
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编辑未审批的记录
		if($data['check_status'] != 1)
			return null;

		$data['place']		=	$place;
		$data['reason']		=	$reason;
		$data['number']		=	$number;
		$data['standard']	=	$standard;

		$this->save($data);

		$result = $this->where(array('order_id' => $order_id))->select()[0];
		return $result;
	}


	/**
	 * 删除订餐申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $order_id		请假申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteLeave($user_id,$order_id){
		//获取记录
		$data = $this->where(array('order_id' => $order_id))->select()[0];
		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编删除未审批的记录
		if($data['check_status'] != 1)
			return null;

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
			'datetime'	=>	array('between',array($start_date, $end_date)),
		);
		
		if($department_id != 0)
			$where['wlc_user.department_id'] = $department_id;
		
		if($user_id != 0)
			$where['wlc_order.user_id'] = $user_id;
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;

		switch ($order){
			case 0: //日期倒序
				$order = 'datetime desc,wlc_user.department_id,wlc_user.alias'; 
				break;  
			case 1: //日期顺序
				$order = 'datetime ,wlc_user.department_id,wlc_user.alias'; 
				break;
			case 2: //部门顺序
				$order = 'wlc_user.department_id,wlc_user.alias,datetime desc'; 
				break;
			case 3: //名称顺序
				$order = 'wlc_user.alias,wlc_user.department_id,datetime desc'; 
				break;
			default:
				$order = 'datetime desc,wlc_user.department_id, wlc_user.alias'; 
		}

		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_order.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_order.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$this->field('order_id,datetime,place,reason,number,standard,check_status,check_datetime,check_comment,alias,department_name')
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
	 * @param timestamp $check_datetime	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateOrder($order_id,$is_agree,$check_datetime,$check_comment){
		//获取记录
		$data = $this->where(array('order_id' => $order_id))->select()[0];
		
		if(!$data)
			return null;

		$data['check_status'] 	= 	$is_agree=='true' ? 2 : 3;
		$data['check_datetime']	=	date('Y-m-d H:i:s',$check_datetime);
		$data['check_comment']	=	$check_comment;

		$this->save($data);

		$result = $this->where(array('order_id' => $order_id))->select()[0];
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