<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;

class MainController extends Controller {	
	
	public function index(){
		check_login();
		//var_dump($_REQUEST);
		/*
		//检查是否签到
		if(D('Attendance')->chkAttendance($_SESSION['user']['user_id'])){
			$attendanceTplName='./Application/Home/View/Attendance/attendance_widget_done.html';
			//加载最近签到记录
			$Attendance = new AttendanceController();
			$records = D('Attendance')->getRecentRecord($_SESSION['user']['user_id']);
			$table = $Attendance->displayRecord($records);
			$this->assign('table',$table);
		}
		else
			$attendanceTplName='./Application/Home/View/Attendance/attendance_widget_not.html';
		$this->assign('attendanceTplName',$attendanceTplName);
		 */
		$Attend = new AttendController();
		$attendWidget .= $Attend->homeWidget(C('AUTH_PARA'));
		$this->assign('attendWidget',$attendWidget);

		$htmlContent = $this->fetch('Main/index');
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-home');
		$this->display('template');
	}

	
	/**
	 * 个人中心——签到记录
	 */
	public function attend(){
		check_login();
		//var_dump($_REQUEST);
		

		$Attend = new AttendController();
		$htmlContent = $Attend->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-attend');
		$this->display('template');
	}

	
	/**
	 * 个人中心——工作计划
	 */
	public function workplan(){
		check_login();
		$Workplan = new WorkplanController();
		$htmlContent = $Workplan->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-workplan');
		$this->display('template');
	}

	
	/**
	 * 个人中心——出差申请
	 */
	public function errand(){
		check_login();
		$Errand = new ErrandController();
		$htmlContent = $Errand->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-errand');
		$this->display('template');
	}
	

	/**
	 * 个人中心——请假申请
	 */
	public function leave(){
		check_login();
		$Leave = new LeaveController();
		$htmlContent = $Leave->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-leave');
		$this->display('template');
	}

	
	/**
	 * 个人中心——加班提交
	 */
	public function order(){
		check_login();
		$Order = new OrderController();
		$htmlContent = $Order->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-order');
		$this->display('template');
	}

	/**
	 * 个人中心——借用申请
	 */
	public function borrow(){
		check_login();
		$Borrow = new BorrowController();
		$htmlContent = $Borrow->home(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-main');
		$this->assign('sidebar_item','sidebar-borrow');
		$this->display('template');
	}
	
	
	
}