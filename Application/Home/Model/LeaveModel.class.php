<?php
namespace Home\Model;
use Think\Model;

class LeaveModel extends Model {
	
	
	/**
	 * 查询用户的请假申请
	 * 
	 * @param int $userId			用户id
	 * @param string $startDate		开始时间
	 * @param string $endDate		结束时间
	 * @param int $checkStatus		审批状态
	 * @param int $page				第几页
	 * @param int $perPage			每页显示的数量
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function userQuery($userId, $startDate='', $endDate='', $checkStatus = 4, $page = 1,$perPage = 0){
		if(empty($startDate))
			$startDate = '0000-00-00';
		if(empty($endDate))
			$endDate = '9999-12-31';
		
		$where = array(
			'wlc_leave.user_id'		=>	$userId,
			'start_date'	=>	array('egt',$startDate),
			'end_date'		=>	array('elt',$endDate),
		);
		
		if($checkStatus >= 1 && $checkStatus <= 3)
			$where['check_status'] = $checkStatus;
		
		$count = $this->where($where)->count();
		$this->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_leave.checker_id')->where($where)->order('date desc')
		->field('leave_id,date,type,start_date,start_time,end_date,end_time,reason,check_status,checker.alias AS checker,check_datetime,check_comment,report');
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		//判断是否可以销假
		$now = time();
		foreach ($list as $key => $record){
			if($now < strtotime($record['end_date'].' '.$record['end_time']))
				$list[$key]['report'] = 0;	
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}
	
	
	/**
	 * 新增请假申请
	 * 
	 * @param int $userId		用户id
	 * @param int $type			请假类型
	 * @param timestamp $date	提交日期
	 * @param timestamp $start	开始时间
	 * @param timestamp $end	结束时间
	 * @param string $reason	请假原因
	 * @return 新增失败则返回null 否则返回数据条目
	 */
	public function submitLeave($userId,$date,$type,$start,$end,$reason){
		
		$data = array(
			'user_id'		=>	$userId,
			'type'	=>	$type,
			'date'	=>	date('Y-m-d',$date),
			'start_date'	=>	date('Y-m-d',$start),
			'start_time'	=>	date('H:i:s',$start),
			'end_date'		=>	date('Y-m-d',$end),
			'end_time'		=>	date('H:i:s',$end),
			'reason'		=>	$reason,
		);
		
		if(!$this->add($data))
			return null;
		else
			return $data;
	}


	/**
	 * 修改请假申请
	 * 
	 * @param int $userId		用户id
	 * @param int $leaveId		请假申请条目id
	 * @param int $type			请假类型
	 * @param timestamp $start	开始时间
	 * @param timestamp $end	结束时间
	 * @param string $reason	请假原因
	 * @return 修改失败null 否则返回数据条目
	 */
	public function editLeave($userId,$leaveId,$type,$start,$end,$reason){
		//获取记录
		$data = $this->where(array('leave_id' => $leaveId))->select()[0];
		
		if(!$data)
			return null;
		//检查记录所有者
		if($data['user_id'] != $userId)
			return null;

		//只能编辑未审批的记录
		if($data['check_status'] != 1)
			return null;

		$data['type']	=	$type;
		$data['start_date']	=	date('Y-m-d',$start);
		$data['start_time']	=	date('H:i:s',$start);
		$data['end_date']	=	date('Y-m-d',$end);
		$data['end_time']	=	date('H:i:s',$end);
		$data['reason']		=	$reason;

		$this->save($data);

		$result = $this->where(array('leave_id' => $leaveId))->select()[0];
		return $result;
	}


	/**
	 * 删除请假申请
	 * 
	 * @param int $user_id		用户id
	 * @param int $leave_id		请假申请条目id
	 * @return 删除失败null 否则返回数据条目
	 */
	public function deleteLeave($user_id,$leave_id){
		//获取记录
		$data = $this->where(array('leave_id' => $leave_id))->select()[0];
		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		//只能编删除未审批的记录
		if($data['check_status'] != 1)
			return null;

		//检测是否删除成功
		if($this->where(array('leave_id' => $leave_id))->delete() == 0)
			return null;

		return $data;
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
	public function adminQuery($department_id = 0, $user_id = 0, $start_date='', $end_date='', $check_status = null, $report = null, $order='', $page = 1,$perPage = 0){
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
			$where['wlc_leave.user_id'] = $user_id;
		
		if($check_status >= 1 && $check_status <= 3)
			$where['check_status'] = $check_status;

		if($report >= 1 && $report <= 2)
			$where['report'] = $report;

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
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_leave.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_leave.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_leave.checker_id');
		$this->field('leave_id,date,type,start_date,start_time,end_date,end_time,reason,check_status,check_datetime,check_comment,wlc_user.alias,checker.alias AS checker,department_name,report')
		->where($where)->order($order);
		//var_dump($count);
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		//判断是否可以销假
		$now = time();
		foreach ($list as $key => $record){
			if($now < strtotime($record['end_date'].' '.$record['end_time']))
				$list[$key]['report'] = 0;	
		}

		$return = array('count' => $count, 'list' => $list);
			return $return;
	}

	/**
	 * 审批请假申请
	 * 
	 * @param int $checker_id			审批者id
	 * @param int $leave_id				请假申请条目id
	 * @param int $isAgree				是否同意
	 * @param timestamp $check_datetime	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateLeave($checker_id,$leave_id,$isAgree,$check_datetime,$check_comment){
		//获取记录
		$data = $this->where(array('leave_id' => $leave_id))->select()[0];
		
		if(!$data)
			return null;

		$data['checker_id']	=	$checker_id;
		$data['check_status'] = $isAgree=='true' ? 2 : 3;
		$data['check_datetime']	=	date('Y-m-d H:i:s',$check_datetime);
		$data['check_comment']	=	$check_comment;
		$data['report'] = 1;

		$this->save($data);

		$result = $this->where(array('leave_id' => $leave_id))->select()[0];
		return $result;
	}

	/**
	 * 销假
	 * 
	 * @param int $leave_id		请假申请条目id
	 * @return 审批失败null 否则返回数据条目
	 */
	public function reportLeave($leave_id){
		//获取记录
		$data = $this->where(array('leave_id' => $leave_id))->select()[0];
		
		if(!$data)
			return null;

		$data['report'] = 2;

		$this->save($data);

		$result = $this->where(array('leave_id' => $leave_id))->select()[0];
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
	public function getPendingReportNum(){
		$list = $this->where(array(
			'check_status' => 2,
			'report' =>1,
			))->select();

		//判断销假
		$count = 0;
		$now = time();
		foreach ($list as $key => $record){
			if($now >= strtotime($record['end_date'].' '.$record['end_time']))
				$count++;
		}
		return $count;
	}
}