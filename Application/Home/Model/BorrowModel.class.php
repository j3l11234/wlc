<?php
namespace Home\Model;
use Think\Model;

class BorrowModel extends Model {

	/**
	 * 提交借用申请
	 * 
	 * @param int $user_id			用户id
	 * @param int $borrow_id		申请条目id
	 * @param string $date			申请日期
	 * @param string $start_date	开始时间
	 * @param string $end_date		结束时间
	 * @param string $goods_name	物品名称
	 * @param string $goods_parts	物品配件
	 * @param int $goods_number		物品种类
	 * @param string $reason		借用原因
	 * @return 修改失败null 否则返回数据条目
	 */
	public function submitBorrow($user_id,$borrow_id,$date,$start_date,$goods_id,$reason){
		if(empty($borrow_id)){ //新增记录
			$data = array(
				'user_id'		=>	$user_id,
				'date'			=>	$date,
				'check_status'	=>	1,
			);
		}else{//编辑记录
			//获取记录
			$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
			if(!$data)
				return null;
			//检查记录所有者
			if($data['user_id'] != $user_id)
				return null;
			//只能编辑未审批的记录
			if($data['check_status'] != 1 && $data['check_status'] != 3)
				return null;
			$data['check_status'] = 1;
		}	

		$data['start_date']		=	$start_date;
		$data['end_date']		=	$end_date;
		$data['goods_id']		=	json_encode($goods_id);
		$data['reason']			=	$reason;

		if(!$this->add($data,array(),true))
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
			'end_date'		=>	array(array('elt',$end_date),array('exp',' is NULL'),"OR"),
		);
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;
		
		if($return >= 1 && $return <= 2)
			$where['return'] = $return;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->field('borrow_id,date,start_date,end_date,wlc_borrow.goods_id,reason,
			check_status,check_datetime,check_comment,return');

		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();

		//判断是否需要归还以及货物名称
		$now = time();
		foreach ($list as $key => $record){
			if($list[$key]['return'] ==1 && $now < strtotime($record['end_date'].' 00:00:00'))
				$list[$key]['return'] = 0;	
			$list[$key]['goods_id'] = json_decode($record['goods_id']);
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
	public function deleteBorrow($user_id,$borrow_id,$admin=false){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		if(!$data)
			return null;

		if(!$admin){
			//检查记录所有者
			if($data['user_id'] != $user_id)
				return null;

			//只能编删除未审批的记录
			if($data['check_status'] != 1 && $data['check_status'] != 3)
				return null;
		}		

		//检测是否删除成功
		if($this->where(array('borrow_id' => $borrow_id))->delete() == 0)
			return null;

		return $data;
	}


	

	/**
	 * 归还
	 * 
	 * @param int $user_id		用户id
	 * @param int $borrow_id	申请条目id
	 * @return 审批失败null 否则返回数据条目
	 */
	public function returnBorrow($user_id,$borrow_id,$end_date){
		//获取记录
		$data = $this->where(array('borrow_id' => $borrow_id))->select()[0];
		
		if(!$data)
			return null;

		$data['return'] = 2;
		$data['end_date'] = $end_date;

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
			'end_date'		=>	array(array('elt',$end_date),array('exp',' is NULL'),"OR"),
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
		$this->field('borrow_id,date,start_date,end_date,wlc_borrow.goods_id,reason,
			check_status,check_datetime,check_comment,return,wlc_user.alias,department_name')
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
			$list[$key]['goods_id'] = json_decode($record['goods_id']);
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

	/**
	 * 获取货物列表
	 * @param $only			不需要获取物品状态，而且以goods_id为下标
	 * @param $username		是否得到借用人
	 * @return 待审批数量
	 */
	public function getGoodsList($only = false,$username = false){
		$Goods = M('Goods');
		$list = $Goods->select();
		$goodsList = array();
		foreach ($list as $key => $value) {
			$value['status'] = 0;
			$value['username'] = "";
			$goodsList[$value['goods_id']] = $value;
		}
		if($only)
			return $goodsList;

		//根据借用记录查询物品状态
		$borrowList = $this->where(array(
			'check_status' => array('in','1,2'),
			'return' => 1,
			))->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_borrow.user_id')
		->order('date')->select();
		foreach ($borrowList as $key => $value) {
			$borrowList[$key]['goods_id'] = json_decode($value['goods_id']);
			//标记物品状态
			foreach ($borrowList[$key]['goods_id'] as $key2 => $value2){
				if($borrowList[$key]['check_status'] >= $goodsList[$value2]['status']){
					$goodsList[$value2]['status'] = $borrowList[$key]['check_status'];
					if($username)
						$goodsList[$value2]['username'] = $borrowList[$key]['alias'];
				}
			}
		}

		$list = array();
		foreach ($goodsList as $key => $value) {
			array_push($list,$value);
		}
		return $list;
	}

}