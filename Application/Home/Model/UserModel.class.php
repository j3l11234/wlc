<?php
namespace Home\Model;
use Think\Model;

class UserModel extends Model {
	/**
	 * 验证用户名密码
	 * 
	 * @param string $username 用户名
	 * @param string $password 密码
	 */
	public function authorize($username, $password){
		$users = M('User')->where(array('username'=>$username))->select();
		if(!$users)
			return  '没有这个用户';
			
		$user = $users[0];
		if($user['password'] != md5($_POST['password']))
			return '密码错误';
		
		$departmentName = D('department')->getDepartmentName($user['department_id']);
		$user['department_name'] = $departmentName;
		return $user;
	}
	
	/**
	 * 得到未签到的用户以及时间
	 * 
	 * @param string $date 日期
	 */
	public function getUnclockUser($date){
		return $this->where(array(
			'need_clock' => 1,
			'recent_date' =>array(array('lt',$date), array('exp','is NULL'), 'or'),
		))->field("user_id,recent_date")->select();
	}
	
	/**
	 * 设置该用户的最近签到日期
	 * 
	 * @param string $date 日期
	 */
	public function setRecentClockDate($user_id,$date){
		$data['user_id'] = $user_id;
		$data['recent_date'] = $date;
		$this->save($data);
	}
	
	/**
	 * 得到未总结工作计划的用户以及时间
	 * 
	 * @param string $date 日期
	 */
	public function getUnworkUser($date){
		return $this->where(array(
			'need_clock' => 1,
			'recent_work' =>array(array('lt',$date), array('exp','is NULL'), 'or'),
		))->field("user_id,recent_work")->select();
	}
	
	/**
	 * 设置该用户的最近生成工作计划日期
	 * 
	 * @param string $date 日期
	 */
	public function setRecentWorkDate($user_id,$date){
		$data['user_id'] = $user_id;
		$data['recent_work'] = $date;
		$this->save($data);
	}
	

	/**
	 * 根据部门获取部门下所有用户 0则为全部用户
	 * 
	 * @param string $departmentId 部门id
	 */
	public function getDepartmentUser($departmentId = 0){
		$where = array('need_clock' => 1);
		if($departmentId ==0)
			$where['department_id'] = array('exp','is not NULL');
		else
			$where['department_id'] = $departmentId;
		
		return $this->field('alias,user_id,department_id')->where($where)->select();
		
	}
	
	/**
	 * 获取某用户的(处长级)审批上级
	 * 
	 * @param string $user_id 用户id
	 * @return 没用户则返回null 否则返回用户id
	 */
	public function getChecker($user_id){
		$user = $this->field('user_id,privilege,superior')->where(array('user_id' =>$user_id))->select()[0];		
		if(!$user)
			return null;
		
		if($user['privilege'] == PRIRILEGE_BOSS){
			return $user['user_id'];
		}else{
			$user = $this->field('user_id')->where(array('user_id' =>$user['superior']))->select()[0];
			if(!$user)
				return null;
			return $user['user_id'];
		}		
	}
}
