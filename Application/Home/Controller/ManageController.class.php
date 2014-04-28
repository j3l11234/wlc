<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;

/**
 * 审批管理
 * Enter description here ...
 * @author j3l11234
 *
 */
class ManageController extends Controller {	
	
	/**
	 * 审批管理主页
	 */
	public function index(){
		check_privilege();

		$htmlContent = $this->fetch('Manage/index');
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-index');
		
		$this->display('template');
	}

	
	/**
	 * 审批管理——签到记录
	 */
	public function attend(){
		check_privilege();
		
		$Attend = new AttendController();
		$htmlContent = $Attend->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-attend');
		$this->display('template');
	}

	
	/**
	 * 审批管理——工作计划
	 */
	public function work(){
		check_privilege();
		
		$Work = new WorkController();
		$htmlContent = $Work->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-work');
		$this->display('template');
	}

	
	/**
	 * 审批管理——出差申请
	 */
	public function errand(){
		check_privilege();
		
		$Errand = new ErrandController();
		$htmlContent = $Errand->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-errand');
		$this->display('template');
	}

	
	/**
	 * 审批管理——请假审批
	 */
	public function leave(){
		check_privilege();
		
		$Leave = new LeaveController();
		$htmlContent = $Leave->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-leave');
		$this->display('template');
	}

	
	/**
	 * 审批管理——订餐审批
	 */
	public function order(){
		check_privilege();
		
		$Overtime = new OrderController();
		$htmlContent = $Overtime->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-order');
		$this->display('template');
	}


	/**
	 * 审批管理——加班订餐审批
	 */
	public function extra(){
		check_privilege();
		
		$Extra = new ExtraController();
		$htmlContent = $Extra->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-extra');
		$this->display('template');
	}


	/**
	 * 审批管理——借用申请审批
	 */
	public function borrow(){
		check_privilege();
		
		$Borrow = new BorrowController();
		$htmlContent = $Borrow->manage(C('AUTH_PARA'));
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-manage');
		$this->assign('sidebar_item','sidebar-borrow');
		$this->display('template');
	}
	
}
