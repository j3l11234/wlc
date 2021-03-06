<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 请假申请审批
 * 
 * @author j3l11234
 *
 */
class ExtraController extends Controller {
	
	/**
	 * 个人中心——请假申请主页面
	 * @param unknown_type $call
	 */
	public function home(){
		check_login();

		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);

		//装载多功能模态框
		$modalHtml = $this->fetch('Extra/home_modal');
		$this->assign('modalHtml' ,$modalHtml);

		//装载提交页
		$addHtml = $this->fetch('Extra/home_add');
		$this->assign('addHtml' ,$addHtml);
		
		return $this->fetch('Extra/home');
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
		
		$Extra = D('Extra');
		$result = $Extra->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$_REQUEST['check_status'], 
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$extraList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		$this->assign('condition',$_REQUEST);
		$this->assign('pageHtml',$pageHtml);
		$this->assign('extraList',$extraList);
			
		return $this->fetch('Extra/home_query');
	}
	
	/**
	 * 个人中心——提交申请
	 * AXAJ
	 */
	public function submitExtra(){
		check_login();
		
		$start = strtotime($_REQUEST['start_date']. ':00:00');
		$end = strtotime($_REQUEST['end_date']. ':00:00');
		if(date('Y-m-d H',$start) != $_REQUEST['start_date'])
			die("开始时间不正确");
		if(date('Y-m-d H',$end) != $_REQUEST['end_date'])
			die("结束时间不正确");
		if($start > $end)
			die("开始时间不能晚于结束时间");
		
		$result = D('Extra')->submitExtra(
			$_SESSION['user']['user_id'],
			$_REQUEST['extra_id'],
			date('Y-m-d'),
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
	public function deleteExtra(){
		$result = D('Extra')->deleteExtra(
			$_SESSION['user']['user_id'],
			$_REQUEST['extra_id'],
			get_privilege()==PRIRILEGE_ADMIN);

		if(!$result)
			die('删除失败');
		$this->ajaxReturn($result);
	}



	/**
	 * 审批管理——请假审批主页面
	 * @param unknown_type $call
	 */
	public function manage(){
		check_login();
		
		$privilege = get_privilege();
		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);

		//装载模态框
		$modalHtml = $this->fetch('Extra/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);


		return $this->fetch('Extra/manage');
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
		if(!isset($_REQUEST['status']))
			$_REQUEST['status'] = 0;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;

		$this->assign('condition',$_REQUEST);
		$Extra = D('Extra');
		$result = $Extra->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'],
			$_REQUEST['status'], 
			$_REQUEST['order'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		

		$count = $result['count'];
		$extraList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		
		$this->assign('pageHtml',$pageHtml);
		$this->assign('extraList',$extraList);
			
		return $this->fetch('Extra/manage_query');
	}

	
	/**
	 * 审批管理——审批申请
	 * AXAJ
	 */
	public function approbateExtra(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_BOSS)
			die('权限错误');
		//print_r($_REQUEST);
		//die('');
		$result = D('Extra')->approbateExtra(
			$_SESSION['user']['user_id'],
			$_REQUEST['extra_id'],
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
	public function reportExtra(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_PERSONNEL)
			die('权限错误');
		//print_r($_REQUEST);
		//die('');
		$result = D('Extra')->reportExtra($_REQUEST['extra_id']);

		if(!$result)
			die('销假失败');
		$this->ajaxReturn($result);
	}
}