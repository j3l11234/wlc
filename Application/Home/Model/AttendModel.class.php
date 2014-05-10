<?php
namespace Home\Model;
use Think\Model;

/**
 * 签到记录——数据模型
 * Enter description here ...
 * @author j3l11234
 *
 */
class AttendModel extends Model {
	
	/**
	* 用户签到更新函数(每日首次访问时更新)
	*/
	function __construct(){
		parent::__construct();
		if(F('recent_date') != date('Y-m-d')){
			$this->tidyAttend();
			F('recent_date',date('Y-m-d'));
		}
	}
	
	
	/**
	 * 签到
	 * @param int $user_id			用户id
	 * @param int $clockType		签到类型 0为上班签到 1为下班签到 
	 * @param string $date			签到时间戳
	 * @param string $time			签到时间戳
	 * @return null 签到失败 attend对象签到成功 
	 */
	public function attend($user_id, $clockType, $date, $time){
		//检查签到情况

		$data = $this->isAttended($user_id,$date);
		
		if($data == null)
			return null;

		switch ($clockType){
			case 0:
				$data['clockin'] = $time;
				break;
			case 1:
				$data['clockout'] = $time;
				break;
			default:
				return null;
		}

		if(!$this->save($data))
			return null; 

		D('User')->setRecentClockDate($user_id,$date);
		return $data;
	}
	

	 /**
	 * 提交签到备注
	 *
	 * @param int $attend_id		签到记录ID
	 * @param int $user_id			用户id
	 * @param string $comment		签退时间
	 * @retuen 成功则返回新纪录 失败则返回0
	 */
	public function commentAttend($attend_id, $user_id, $comment){
		//获取该条签到记录
		$data = $this->where(array('attend_id' => $attend_id,))->select()[0];

		if(!$data)
			return null;

		//检查记录所有者
		if($data['user_id'] != $user_id)
			return null;

		$data['comment'] =	$comment;

		//写入数据
		$this->save($data);
		//查询新数据
		$result = $this->where(array('attend_id' => $attend_id,))->select()[0];
		if(!$result)
			return null; 
		return $result;
	}


	/**
	 * 检查是否已经签到
	 * @param int $user_id	用户id
	 * @param date $date	日期
	 * @return 返回对应的记录 null则无对应签到 
	 */
	public function isAttended($user_id, $date = null){
		if ($date == null)
			$date = date('Y-m-d');
			
		$records = $this->where(array(
			'date'=>$date,
			'user_id'=>$user_id
		))->select()[0];
		//var_dump($recordNum);
		//array('like',date('Y-m-d',$timestamp).'%')
		if(!isset($records))
			return null;
		else
			return ($records);
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
		
		$date = date('Y-m-d');
		if($type == 0){ //上班时间 
			if(strtotime($date.' '.$time) <= strtotime($date.' 08:10:00'))
				return 0;
		}else{ //下班时间
			if(strtotime($date.' '.$time) >= strtotime($date.' 17:30:00'))
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
	public function userSearch($user_id, $startDate='', $endDate='', $status = 0, $order='',$page = 1,$perPage = 0){
		if($startDate == '')
			$startDate = '0000-00-00';
		if($endDate == '')
			$endDate = '9999-12-31';
		if($order == '')
			$order = 'date desc';
		$where = array(
			'user_id'	=>	$user_id,
			'date'		=>	array('between',array($startDate,$endDate)),
		);
		if($status == 1)
			$where['clockin'] = array(array('gt','08:10:00'), array('exp','is NULL'), 'or');
		else if($status == 2)
			$where['clockout'] = array(array('lt','08:10:00'), array('exp','is NULL'),'or');	
			
		$count = $this->where($where)->count();
		$this->where($where)->order($order)
		->field('attend_id,date,clockin,clockout,comment');
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
	public function adminQuery($departmentId = 0, $user_id = 0, $startDate='', $endDate='', $status = 0, $order='', $page = 1, $perPage = 0){
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
		
		if($user_id != 0)
			$where['wlc_attend.user_id'] = $user_id;
		
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
		$this->field('attend_id,alias,department_name,date,clockin,clockout,comment')->where($where)->order($order);
		
		if($perPage != 0)
			$list = $this->page($page.','.$perPage)->select();
		else
			$list = $this->select();
		
		$list = $this->getStatus($list);
		$return = array('count' => $count, 'list' => $list);
			return $return;
	}


	/**
	 * 统计个人累计迟到时间
	 *
	 * @param 
	 *
	 */
	public function stat($user_id,$start_date, $end_date){
		$where = array(
			'user_id'	=>	$user_id,
			'date'		=>	array('between',array($start_date,$end_date)),
		);
		$list = $this->field('clockin,clockout,date')->where($where)->select();
		$timeBaseline = strtotime('1970-01-01 00:08:10');
		$timeSum = 0;
		foreach ($list as $record) {
			$wady = getdate(strtotime($record['date'].' '.$record['clockin']))['wday'];
			if($wady >= 1 && $wady <= 5){
				if($record['clockin'] != null){
					$time = strtotime("1970-01-01 ".$record['clockin']) - $timeBaseline;
					if($time > 0)
						$timeSum += min($time,28800); 
				}else{
					$timeSum += 28800;
				}
			}	
		}

		$sum = array(
			'day'		=>	floor($timeSum/86400),
			'hour'		=>	floor(($timeSum % 86400)/3600),
			'minute'	=>	floor(($timeSum % 3600)/60),
			'second'	=>	$timeSum % 60,
		);

		return $sum;
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
	 * 整理所有需要签到用户的签到记录(如果没有则建立空记录)
	 *
	 */
	private function tidyAttend(){	
		$todayTimestamp = time();
		
		$User = D('User');
		//获取未签到用户
		$unclockUser = $User->getUnclockUser(date('Y-m-d',time()));
		//var_dump($unclockUser);
		//用户循环
		foreach ($unclockUser as $user){
			//日期循环
			//var_dump($user);
			if($user['recent_date'] == null)
				$user['recent_date'] = '2014-01-01';
			for ($timestamp = strtotime($user['recent_date'].' 00:00:00');
				 $timestamp <= $todayTimestamp; $timestamp += 86400){			
				$day = date('Y-m-d',$timestamp);
				//var_dump($UnclockUser);
				//判断是否签到
				if($this->isAttended($user['user_id'],$day) == null){
					$attendData['user_id'] = $user['user_id'];
					$attendData['date'] = $day;
					$this->add($attendData);
				}
			}
			//更新该用户最后签到时间
			$User->setRecentClockDate($user['user_id'],date('Y-m-d',$todayTimestamp));
		}
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
	
	









	
	//=========================================================================================================
			/*
		$date = array();
		$datetime = getdate($timestamp);
		$datetime2= getdate(mktime(11,0,0,$datetime['mon'],$datetime['mday'],$datetime['year']));
		if($datetime[0] > $datetime2[0])
			$data['is_late'] = 1;
		else 
			$data['is_late'] = 0;
		$data['user_id'] = $user_id;
		$data['timestamp'] = $mysqltime=date('Y-m-d H:i:s',$timestamp);	
		*/
	
	
	
	
	
	
	
	/**
	 * 获得最新n条签到记录
	 * @param unknown_type $user_id 		用户id
	 * @param unknown_type $recordNum	条数
	 */
	public function getLatestRecord($user_id,$recordNum = 3){
		$records = $this->where(array('user_id'=>$user_id))
			->order('timestamp desc')->limit(3)
			->field('timestamp,is_late')->select();
		
		//var_dump($records);
		return $records;
	}
	
	/**
	 * 获得最近n天的签到记录
	 * @param unknown_type $user_id 		用户id
	 * @param unknown_type $recordNum	条数
	 * @param unknown_type $timestamp	开始算的时间
	 */
	public function getRecentRecord($user_id, $recordNum = 3, $timestamp=null){
		if($timestamp==null)
			$timestamp=time();
		
		$records = array();
		for ($i=0; $i<3; $i++){
  			$record = $this->where(array(
				'timestamp'=>array('like',date('Y-m-d',$timestamp - ($i*86400)).'%'),
				'user_id'=>$user_id
			))->field('timestamp,is_late')->select();
			
			//var_dump($record);
			
			if($record)
				$records[$i]=$record[0];
			else
				$records[$i]=array(
					'timestamp' => date('Y-m-d  ',$timestamp - ($i*86400)),
					'is_late' => -1
				);
		}	
		//var_dump($records);
		return $records;
	}
	

	
}