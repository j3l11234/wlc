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
			'user_id'	=>	$user_id,
			'date'		=>	array('between',array($start_date,$end_date)),
		);
		
		if($status >= 1 && $status <= 4)
			$where['status'] = $status;

		$count = $this->where($where)->count();

		$this->where($where)->order('date desc')
		->field('work_id,date,workplan,summary,status,check_datetime,check_comment,check2_datetime,check2_comment');

		if($per_page != 0)
			$list = $this->page($page.','.$per_page)->select();
		else
			$list = $this->select();

		//判断是否需要归还
		$now = time();
		foreach ($list as $key => $record){
			$timestamp = strtotime($record['date'].' 00:00:00');
			$list[$key]['week'] = date('W',$timestamp);
			if($record['status'] = 2 && $now < $timestamp)
				$list[$key]['status'] = 1;	
		}

		$return = array('count' => $count, 'list' => $list);
		return $return;
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
		))->select();
		if(!isset($records))
			return null;
		else
			return ($records[0]);
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
				$this->addWork($user['user_id'], date('Y-m-d',$tTimestamp),1);
			}
		}		
	}



	//===============================================================================================
	//===============================================================================================	
	//===============================================================================================	
	//===============================================================================================	







	/**
	 * 签到
	 * @param int $userId			用户id
	 * @param int $clockType		签到类型 0为上班签到 1为下班签到 
	 * @param timestamp $timestamp 签到时间戳
	 * @return null 签到失败 attend对象签到成功 
	 */
	public function attend($userId,$clockType,$timestamp){
		//检查签到情况
		$date = date('Y-m-d',$timestamp);
		$time = date('H:i:s',$timestamp);
		$record = $this->isAttended($userId,$date);
		
		if($record == null){	//不存在记录
			if($clockType == 1)
				return null;
		}else{
			
			if($record['clockin'] == null){ //存在记录但上班未签到
				if($clockType == 1)
					return $record;
			}else{
				if($record['clockout'] != null) //存在记录且上下班签到
					return $record;
			}
		}
		
		if($record == null){ //无记录
			if($clockType == 0){
				$record = array(
					'user_id'	=>	$userId,
					'date'		=>	$date,
					'clockin'	=>	$time,
				);
				if(!$this->add($record))
					return null;
				}
		}else{ //有记录
			if($clockType == 0)
				$record['clockin'] = $time;
			else
				$record['clockout'] = $time;
			if(!$this->save($record))
				return null; 
		}
		D('User')->setRecentClockDate($userId,$date);
		return $record;
	}
	
	

	
	
	/**
	 * 检查当前日期是否合法
	 *
	 * @param unknown_type $time 时间 H:i:s
	 * @param unknown_type $type 签到类型
	 * @return int 0为合理 1234。。。待定= =
	 */
	public function isValid($time, $type){
		if($time == null or $time == '')
			return 1;
		
		if($type == 0){ //上班时间 
			if(strtotime(date('Y-m-d').' '.$time) <= strtotime(date('Y-m-d').' 08:10:00'))
				return 0;
		}else{ //下班时间
			if(strtotime(date('Y-m-d').' '.$time) >= strtotime(date('Y-m-d').' 17:30:00'))
				return 0;
		}
		return 1;
	}
	
	
	/**
	 * 供普通用户查询签到情况
	 *
	 * @param $userID 		用户id
	 * @param $startDate	开始时间
	 * @param $endDate		结束时间
	 * @param $status 		签到情况 0为正常 1为迟到 2为早退
	 * @param $page			第几页
	 * @param $perPage		每页显示的数量
	 */
	public function userSearch($userId, $startDate='', $endDate='', $status = 0, $order='',$page = 1,$perPage = 0){
		if($startDate == '')
			$startDate = '0000-00-00';
		if($endDate == '')
			$endDate = '9999-12-31';
		if($order == '')
			$order = 'date desc';
		$where = array(
			'user_id'	=>	$userId,
			'date'		=>	array('between',array($startDate,$endDate)),
		);
		if($status == 1)
			$where['clockin'] = array(array('gt','08:10:00'), array('exp','is NULL'), 'or');
		else if($status == 2)
			$where['clockout'] = array(array('lt','08:10:00'), array('exp','is NULL'),'or');	
			
		$count = $this->where($where)->count();
		$this->where($where)->order($order);
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		$list = $this->getStatus($list);
		$return = array('count' => $count, 'list' => $list);
		return $return;
	}
	
	
	/**
	 * 供管理员查询签到情况
	 *
	 * @param 
	 *
	 */
	public function adminQuery($departmentId = 0, $userId = 0, $startDate='', $endDate='', $status = 0, $order='', $page = 1, $perPage = 0){
		if($startDate == '')
			$startDate = '0000-00-00';
		if($endDate == '')
			$endDate = '9999-12-31';
		if($order == '')
			$order = 'date desc';
		
		$where = array();
		//写入
		$where['date'] = array('between',array($startDate,$endDate));
		$where['need_clock'] = 1;
		
		if($departmentId != 0)
			$where['wlc_user.department_id'] = $departmentId;
		
		if($userId != 0)
			$where['wlc_attend.user_id'] = $userId;
		
		if($status == 1)
			$where['clockin'] = array(array('gt','08:10:00'), array('exp','is NULL'), 'or');
		else if($status == 2)
			$where['clockout'] = array(array('lt','08:10:00'), array('exp','is NULL'),'or');
			
		//var_dump($where);
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_attend.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$count = $this->where($where)->count(); 
		$this->join('RIGHT JOIN wlc_user ON wlc_user.user_id = wlc_attend.user_id')
		->join('LEFT JOIN wlc_department ON wlc_department.department_id = wlc_user.department_id');
		$this->field('attend_id,date,clockin,clockout,alias,department_name')->where($where)->order($order);
		
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		$list = $this->getStatus($list);
		$return = array('count' => $count, 'list' => $list);
			return $return;
	}


	/**
	 * 更改签到信息
	 *
	 * @param $attendId		签到记录ID
	 * @param $clockin		签到时间 如08:10:00
	 * @param $clockout		签退时间
	 * @retuen 成功则返回新纪录 找不到记录则为0 签到时间大于签退时间返回1 
	 */
	public function editAttent($attendId, $clockin, $clockout){
		//获取该条签到记录
		$record = $this->where('attend_id = '.$attendId)->select();
		if(!$record)
			return 0;
		//写入参数
		if($clockin != '')
			$record['clockin'] =	$clockin;
		if($clockout != '')
			$record['clockout'] =	$clockout;
		//校验参数
		if($record['clockin'] != '' && $record['clockout'] != '' &&
		   strtotime(date('Y-m-d').' '.$record['clockin']) >= strtotime(date('Y-m-d').' '.$record['clockout']))
			return 1;
			
		//写入数据
		$this->where('attend_id = '.$attendId)->save($record);
		//查询新数据
		$result = $this->field('attend_id,clockin,clockout,date')->where('attend_id = '.$attendId)->select();
		if(!$result)
			return null; 
		return $result[0];
	}


	/**
	 * 整理签到信息
	 *
	 * @param $attendList		签到记录
	 * @retuen 整理完成后的记录 
	 */
	private function getStatus($list){
		foreach ($list as $key => $record){
			//上班签到判断 0为正常 1为错误
			if($record['clockin'] == null){
				$list[$key]['clockin_status'] = 1;
				$list[$key]['clockin'] = '未签到';
			}else{
				//var_dump($record['clockin']);
				if($this->isValid($record['clockin'],0) == 0)
					$list[$key]['clockin_status'] = 0;
				else
					$list[$key]['clockin_status'] = 1;
			}	
			//下班签退判断 0为正常 1为错误
			if($record['clockout'] == null){
				$list[$key]['clockout_status'] = 1;
				$list[$key]['clockout'] = '未签退';
			}else{
				if($this->isValid($record['clockout'],1) == 0)
					$list[$key]['clockout_status'] = 0;
				else
					$list[$key]['clockout_status'] = 1;
			}
		}
		return $list;
	}	
}