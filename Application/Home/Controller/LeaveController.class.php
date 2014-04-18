<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 请假申请审批
 * 
 * @author j3l11234
 *
 */
class LeaveController extends Controller {
	
	/**
	 * 个人中心——请假申请主页面
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);

		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);

		//装载多功能模态框
		$modalHtml = $this->fetch('Leave/home_modal');
		$this->assign('modalHtml' ,$modalHtml);

		//装载提交页
		$addHtml = $this->fetch('Leave/home_add');
		$this->assign('addHtml' ,$addHtml);
		
		return $this->fetch('Leave/home');
	}
	
	/**
	 * 个人中心——请假申请 查询页面
	 */
	private function homeQuery(){
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = '';
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = '';
		if(!isset($_REQUEST['check_status']))
			$_REQUEST['check_status'] = 0;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;
		
		$this->assign('condition',$_REQUEST);
		
		$Leave = D('Leave');
		$result = $Leave->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$_REQUEST['check_status'], 
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$leaveList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		$this->assign('condition',$_REQUEST);
		$this->assign('pageHtml',$pageHtml);
		$this->assign('leaveList',$leaveList);
			
		return $this->fetch('Leave/home_query');
	}
	
	/**
	 * 个人中心——提交申请
	 * AXAJ
	 */
	public function submitLeave(){
		check_login();
		
		//print_r($_REQUEST);
		//die();
		$start = strtotime($_REQUEST['start_date']. ':00:00');
		$end = strtotime($_REQUEST['end_date']. ':00:00');
		if(date('Y-m-d H',$start) != $_REQUEST['start_date'])
			die("开始时间不正确");
		if(date('Y-m-d H',$end) != $_REQUEST['end_date'])
			die("结束时间不正确");
		if($start > $end)
			die("开始时间不能晚于结束时间");
		
		$result = D('Leave')->submitLeave(
			$_SESSION['user']['user_id'],
			$_REQUEST['leave_id'],
			date('Y-m-d'),
			$_REQUEST['type'],
			date('Y-m-d',$start),
			date('H:i:s',$start),
			date('Y-m-d',$end),
			date('H:i:s',$end),
			$_REQUEST['reason']);
		
		if($result == null)
			die('失败');
		$this->ajaxReturn($result);	
	}


	/**
	 * 个人中心——删除申请
	 * AXAJ
	 */
	public function deleteLeave(){
		$result = D('Leave')->deleteLeave(
			$_SESSION['user']['user_id'],
			$_REQUEST['leave_id'],
			get_privilege()==PRIRILEGE_ADMIN);

		if(!$result)
			die('删除失败');
		$this->ajaxReturn($result);
	}



	/**
	 * 审批管理——请假审批主页面
	 * @param unknown_type $call
	 */
	public function manage($call = null){
		check_invoke($call);
		
		$privilege = get_privilege();
		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);

		//装载模态框
		$modalHtml = $this->fetch('Leave/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);


		return $this->fetch('Leave/manage');
	}

	/**
	 * 审批管理——请假审批 查询页面
	 */
	private function manageQuery($privilege){
		$Department = D('Department');
		$User = D('User');

		if($privilege == PRIRILEGE_ADMIN || $privilege == PRIRILEGE_BOSS || $privilege == PRIRILEGE_PERSONNEL){
			//可以查看所有部门
			$departmentList = $Department->getAllDepartment();
			$userList= $User->getDepartmentUser();
		}else if($privilege == PRIRILEGE_MINISTER){
			//只能查看自己部门
			$departmentList = $Department->getAllDepartment($_SESSION['user']['department_id']);
			$userList= $User->getDepartmentUser($_SESSION['user']['department_id']);
		}

		if($privilege == PRIRILEGE_MINISTER){
			$_REQUEST['department'] = $_SESSION['user']['department_id'];
		}

		$this->assign('departmentList',$departmentList);
		$this->assign('userList',$userList);

		$this->assign('privilege',$privilege);

		if(!isset($_REQUEST['department']))
			$_REQUEST['department'] = 0;
		if(!isset($_REQUEST['user']))
			$_REQUEST['user'] = 0;
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = '';
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = '';
		$check_status= 0;
		$report = 0;
		if(isset($_REQUEST['status'])){
			if($_REQUEST['status'] >= 0 && $_REQUEST['status'] <= 3)
				$check_status = $_REQUEST['status'];
			if($_REQUEST['status'] >= 11 && $_REQUEST['status'] <= 12){
				$report = $_REQUEST['status']-10;
				$check_status = 2;
			}
		}else
			$_REQUEST['status'] = 0;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;

		$this->assign('condition',$_REQUEST);

		$Leave = D('Leave');
		$result = $Leave->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'],
			$check_status, 
			$report,
			$_REQUEST['order'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		

		$count = $result['count'];
		$leaveList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		
		$this->assign('pageHtml',$pageHtml);
		$this->assign('leaveList',$leaveList);
			
		return $this->fetch('Leave/manage_query');
	}

	
	/**
	 * 审批管理——审批申请
	 * AXAJ
	 */
	public function approbateLeave(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_BOSS)
			die('权限错误');
		//print_r($_REQUEST);
		//die('');
		$result = D('Leave')->approbateLeave(
			$_SESSION['user']['user_id'],
			$_REQUEST['leave_id'],
			$_REQUEST['is_agree'],
			time(),
			$_REQUEST['check_comment']);

		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}

	/**
	 * 审批管理——销假
	 * AXAJ
	 */
	public function reportLeave(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_PERSONNEL)
			die('权限错误');
		//print_r($_REQUEST);
		//die('');
		$result = D('Leave')->reportLeave($_REQUEST['leave_id']);

		if(!$result)
			die('销假失败');
		$this->ajaxReturn($result);
	}
}