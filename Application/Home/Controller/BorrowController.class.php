<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 借用申请审批
 * 
 * @author j3l11234
 *
 */
class BorrowController extends Controller {
	
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
		$modalHtml = $this->fetch('Borrow/home_modal');
		$this->assign('modalHtml' ,$modalHtml);

		//装载提交页
		$addHtml = $this->fetch('Borrow/home_add');
		$this->assign('addHtml' ,$addHtml);
		
		return $this->fetch('Borrow/home');
	}
	
	/**
	 * 个人中心——请假申请 查询页面
	 */
	private function homeQuery(){
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
				$return = $_REQUEST['status']-10;
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
		
		$result = D('Borrow')->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$check_status, 
			$return,
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$borrowList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		$this->assign('condition',$_REQUEST);
		$this->assign('pageHtml',$pageHtml);
		$this->assign('borrowList',$borrowList);
			
		return $this->fetch('Borrow/home_query');
	}
	
	/**
	 * 个人中心——提交申请
	 * AXAJ
	 */
	public function submitBorrow(){
		check_login();
		
		if(date('Y-m-d',strtotime($_REQUEST['start_date']. ' 00:00:00')) != $_REQUEST['start_date'])
			die("借出时间不正确");
		if(date('Y-m-d',strtotime($_REQUEST['end_date']. ' 00:00:00')) != $_REQUEST['end_date'])
			die("归还时间不正确");
		if(strtotime($_REQUEST['start_date']. ' 00:00:00') > strtotime($_REQUEST['end_date']. ' 00:00:00'))
			die("借出时间不能晚于归还时间");
		
		$result = D('Borrow')->submitBorrow(
			$_SESSION['user']['user_id'],
			$_REQUEST['borrow_id'],
			date('Y-m-d'),
			$_REQUEST['start_date'],
			$_REQUEST['end_date'],
			$_REQUEST['goods_name'],
			$_REQUEST['goods_parts'],
			$_REQUEST['goods_number'],
			$_REQUEST['reason']);

		if($result == null)
			die('提交失败');
		$this->ajaxReturn($result);
	}


	/**
	 * 个人中心——删除申请
	 * AXAJ
	 */
	public function deleteBorrow(){
		check_login();

		$result = D('Borrow')->deleteBorrow(
			$_SESSION['user']['user_id'],
			$_REQUEST['borrow_id'],
			get_privilege()==PRIRILEGE_ADMIN);

		if(!$result)
			die('删除失败');
		$this->ajaxReturn($result);
	}


	/**
	 * 个人中心——归还
	 * AXAJ
	 */
	public function returnBorrow(){
		check_login();

		$result = D('Borrow')->returnBorrow($_SESSION['user']['user_id'],$_REQUEST['borrow_id']);

		if(get_privilege() != PRIRILEGE_PERSONNEL)
			die('权限错误');
		//die('sss');
		$this->ajaxReturn($result);
	}


	/**
	 * 审批管理——借用审批主页面
	 * @param unknown_type $call
	 */
	public function manage(){
		check_login();
		
		$privilege = get_privilege();
		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);

		//装载模态框
		$modalHtml = $this->fetch('Borrow/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);


		return $this->fetch('Borrow/manage');
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
		$return = 0;
		if(isset($_REQUEST['status'])){
			if($_REQUEST['status'] >= 0 && $_REQUEST['status'] <= 3)
				$check_status = $_REQUEST['status'];
			if($_REQUEST['status'] >= 11 && $_REQUEST['status'] <= 12){
				$return = $_REQUEST['status']-10;
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

		$Borrow = D('Borrow');
		$result = $Borrow->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'],
			$check_status, 
			$return,
			$_REQUEST['order'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);

		$count = $result['count'];
		$borrowList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		
		$this->assign('pageHtml',$pageHtml);
		$this->assign('borrowList',$borrowList);
			
		return $this->fetch('Borrow/manage_query');
	}

	
	/**
	 * 审批管理——审批申请
	 * AXAJ
	 */
	public function approbateBorrow(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_PERSONNEL)
			die('权限错误');

		//print_r($_REQUEST);
		//die('');
		$result = D('Borrow')->approbateBorrow(
			$_REQUEST['borrow_id'],
			$_REQUEST['is_agree'],
			time(),
			$_REQUEST['check_comment']);

		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}
}