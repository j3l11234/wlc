<?php
namespace Home\Model;
use Think\Model;

/**
 * 签到记录——数据模型
 * Enter description here ...
 * @author j3l11234
 *
 */
class WorkModel extends Model {
	
	/**
	* 用户签到更新函数(每日首次访问时更新)
	*/
	function __construct(){
		parent::__construct();
		if(F('recent_work') != date('Y-m-d')){
			$this->tidyWork();
			F('recent_work',date('Y-m-d'));
		}
	}
	

	/**
	 * 新增工作计划
	 * @param int $user_id	用户id
	 * @param int $date		日期
	 * @return 成功则返回新增对象 失败则返回null
	 */
	private function addWork($user_id, $date, $status){
		$record = $this->isExistWork($user_id, $date);

		if($record == null){
			$data = array(
				'user_id'	=>	$user_id,
				'date'		=>	$date,
				'status'	=>	$status,
			);

			//var_dump($data);
		
			if($this->add($data)){
				D('User')->setRecentWorkDate($user_id,$date);
				return $data;
			}else{
				return null;
			}
		
		}else{
			return $record;
		}
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
	public function userQuery($user_id, $start_date = '', $end_date = '', $status = 0, $page = 1,$per_page = 0){
		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';
		
		$where = array(
			'wlc_work.user_id'	=>	$user_id,
			'date'		=>	array('between',array($start_date,$end_date)),
		);
		
		if($status >= 1 && $status <= 4)
			$where['status'] = $status;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_work.checker_id')
		->field('work_id,date,workplan,summary,comment,status,
			checker.alias AS checker,check_datetime,check_comment');

		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();

		//计算周期
		$now = time();
		foreach ($list as $key => $record){
			$timestamp = strtotime($record['date'].' 00:00:00');
			$list[$key]['week'] = date('W',$timestamp);
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
	}



	/**
	 * 填写工作计划
	 * 
	 * @param int $user_id			用户id
	 * @param int $work_id			工作计划条目id
	 * @param string $workplan		工作计划
	 * @param string $summary		总结
	 * @return 修改失败null 否则返回数据条目
	 */
	public function editWork($user_id,$work_id,$workplan,$summary,$comment){
		//获取记录
		$data = $this->where(array('work_id' => $work_id))->select()[0];
		
		if(!$data)
			return null;
		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;


		//只能编辑未审批的记录
		if(!($data['status'] == 2 || $data['status'] == 3 || $data['status'] == 4))
			return null;

		$data['workplan']		=	$workplan;
		$data['summary']		=	$summary;
		$data['comment']		=	$comment;
		$data['status']	= 3;

		$this->save($data);

		$result = $this->where(array('work_id' => $work_id))->select()[0];
		return $result;
	}


	/**
	 * 检查是否存在工作计划
	 * @param int $user_id	用户id
	 * @param int $date		日期
	 * @return 返回对应的记录 null则无对应签到 
	 */
	public function isExistWork($user_id, $date){
		$records = $this->where(array(
			'user_id'	=>	$user_id,
			'date'		=>	$date,
		))->select()[0];
		if(!isset($records))
			return null;
		else
			return ($records);
	}


	/**
	 * 整理所有需要签到用户的签到记录(如果没有则建立空记录)
	 *
	 */
	private function tidyWork(){
		$timestamp = time();
		
		//获取未及时总结工作的用户
		$unworkUser = D('User')->getUnworkUser(date('Y-m-d',$timestamp));
		//用户循环
		foreach ($unworkUser as $user){
			//日期循环
			if($user['recent_work'] == null)
				$user['recent_work'] = '2014-01-06';
			$recentWorkTimestamp = strtotime($user['recent_work'].' 00:00:00');
			$recentWorkTimestamp -= (getdate($recentWorkTimestamp)[wday]-1)*86400;

			
			for ($tTimestamp = $recentWorkTimestamp; 
				 $tTimestamp <= $timestamp; $tTimestamp += 7*86400){
				$status = 1; //是否允许填写
				//判断上周是否已经填写
				$lastRecord = $this->isExistWork($user_id, date('Y-m-d',$tTimestamp - 7*86400));
				if($lastRecord != null)
					if($lastRecord['status'] >= 2)
						$status = 2;
				//强制改变为2
				$this->addWork($user['user_id'], date('Y-m-d',$tTimestamp),2);
			}
		}		
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
	public function adminQuery($department_id = 0, $user_id = 0, $start_date='', $end_date='', $status = null, $order='', $page = 1,$per_page = 0){
		if(empty($start_date))
			$start_date = '0000-00-00';
		if(empty($end_date))
			$end_date = '9999-12-31';

		$where = array(
			'date'	=>	array('between',array($start_date,$end_date)),
			);
		
		if($department_id != 0)
			$where['wlc_user.department_id'] = $department_id;
		
		if($user_id != 0)
			$where['wlc_work.user_id'] = $user_id;
		
		if($status >= 1 && $status <= 4)
			$where['status'] = $status;


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
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_work.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_work.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id')
		->join('LEFT JOIN wlc_user AS checker ON checker.user_id = wlc_work.checker_id');
		$this->field('department_name,wlc_user.alias,
			work_id,wlc_work.user_id,date,workplan,summary,comment,
			status,checker.alias AS checker,check_datetime,check_comment')
		->where($where)->order($order);

		$this->where($where)->order('date desc');

		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();	

		//计算周期
		$now = time();
		foreach ($list as $key => $record){
			$timestamp = strtotime($record['date'].' 00:00:00');
			$list[$key]['week'] = date('W',$timestamp);
		}

		$return = array('count' => $count, 'list' => $list);
			return $return;
	}


	/**
	 * 审批工作计划
	 * 
	 * @param int $checker_id			审批者id
	 * @param int $leave_id				条目id
	 * @param timestamp $check_datetime	审批时间
	 * @param string $check_comment		请假原因
	 * @return 审批失败null 否则返回数据条目
	 */
	public function approbateWork($checker_id,$work_id,$check_datetime,$check_comment){
		//获取记录
		$data = $this->where(array('work_id' => $work_id))->select()[0];
		
		if(!$data)
			return null;

		$data['checker_id']	=	$checker_id;
		$data['status'] 	=	4;
		$data['check_datetime']	=	date('Y-m-d H:i:s',$check_datetime);
		$data['check_comment']	=	$check_comment;

		$this->save($data);

		$result = $this->where(array('work_id' => $work_id))->select()[0];
		return $result;
	}

}