<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 出差申请审批
 * 
 * @author j3l11234
 *
 */
class ErrandController extends Controller {
	
	/**
	 * 个人中心——出差申请主页面
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);

		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);

		//装载多功能模态框
		$modalHtml = $this->fetch('Errand/home_modal');
		$this->assign('modalHtml' ,$modalHtml);

		//装载提交页
		$addHtml = $this->fetch('Errand/home_add');
		$this->assign('addHtml' ,$addHtml);
		
		return $this->fetch('Errand/home');
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
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;
		
		$this->assign('condition',$_REQUEST);
		
		$result = D('Errand')->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$_REQUEST['check_status'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$errandList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		$this->assign('condition',$_REQUEST);
		$this->assign('pageHtml',$pageHtml);
		$this->assign('errandList',$errandList);
		
		return $this->fetch('Errand/home_query');
	}


	/**
	 * 个人中心——提交申请
	 * AXAJ
	 */
	public function addErrand(){
		check_login('die');
		
		//print_r($_REQUEST);
		//die();

		if(date('Y-m-d',strtotime($_REQUEST['start_date']. ' 00:00:00')) != $_REQUEST['start_date'])
			die("出发时间不正确");
		if(date('Y-m-d',strtotime($_REQUEST['end_date']. ' 00:00:00')) != $_REQUEST['end_date'])
			die("返回时间不正确");
		if(strtotime($_REQUEST['start_date']. ' 00:00:00') > strtotime($_REQUEST['end_date']. ' 00:00:00'))
			die("出发时间不能晚于返回时间");
		
		$result = D('Errand')->addErrand(
			$_SESSION['user']['user_id'],
			date('Y-m-d'),
			$_REQUEST['start_date'],
			$_REQUEST['end_date'],
			$_REQUEST['place'],
			$_REQUEST['reason'],
			$_REQUEST['object'],
			$_REQUEST['cost'],
			$_REQUEST['cost_sum'],
			$_REQUEST['summary']);

		if($result == null)
			die('失败');
		$this->ajaxReturn($result);
	}


	/**
	 * 个人中心——修改申请
	 * AXAJ
	 */
	public function editErrand(){
		check_login('die');

		//print_r($_REQUEST);
		//die();

		//检查时间格式
		if(date('Y-m-d',strtotime($_REQUEST['start_date']. ' 00:00:00')) != $_REQUEST['start_date'])
			die("出发时间不正确");
		if(date('Y-m-d',strtotime($_REQUEST['end_date']. ' 00:00:00')) != $_REQUEST['end_date'])
			die("返回时间不正确");
		if(strtotime($_REQUEST['start_date']. ' 00:00:00') >= strtotime($_REQUEST['end_date']. ' 00:00:00'))
			die("出发时间不能晚于返回时间");

		$result = D('Errand')->editErrand(
			$_SESSION['user']['user_id'],
			$_REQUEST['errand_id'],
			$_REQUEST['start_date'],
			$_REQUEST['end_date'],
			$_REQUEST['place'],
			$_REQUEST['reason'],
			$_REQUEST['object'],
			$_REQUEST['cost'],
			$_REQUEST['cost_sum'],
			$_REQUEST['summary']);


		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}


	/**
	 * 个人中心——删除申请
	 * AXAJ
	 */
	public function deleteErrand(){
		$result = D('Errand')->deleteErrand($_SESSION['user']['user_id'],$_REQUEST['errand_id']);

		if(!$result)
			die('删除失败');
		$this->ajaxReturn(array());
	}


	/**
	 * 审批管理——出差审批主页面
	 * @param unknown_type $call
	 */
	public function manage($call = null){
		check_invoke($call);
		
		$privilege = get_privilege();
		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);

		//装载模态框
		$modalHtml = $this->fetch('Errand/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);

		return $this->fetch('Errand/manage');
	}

	/**
	 * 审批管理——出差申请 查询页面
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

		$this->assign('isBoss',$privilege == PRIRILEGE_BOSS);

		if(!isset($_REQUEST['department']))
			$_REQUEST['department'] = 0;
		if(!isset($_REQUEST['user']))
			$_REQUEST['user'] = 0;
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

		$result = D('Errand')->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'],
			$_REQUEST['check_status'], 
			$_REQUEST['order'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);

		$count = $result['count'];
		$errandList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();	
		
		$this->assign('pageHtml',$pageHtml);
		$this->assign('errandList',$errandList);
			
		return $this->fetch('Errand/manage_query');
	}

	/**
	 * 审批管理——审批申请
	 * AXAJ
	 */
	public function approbateErrand(){
		check_login('die');

		if(get_privilege() != PRIRILEGE_BOSS)
			die('权限错误');

		$result = D('Errand')->approbateErrand(
			$_SESSION['user']['user_id'],
			$_REQUEST['errand_id'],
			$_REQUEST['is_agree'],
			time(),
			$_REQUEST['check_comment']);

		if(!$result)
			die('审批失败');
		$this->ajaxReturn($result);
	}
}