<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 加班
 * 
 * @author j3l11234
 *
 */
class OrderController extends Controller {
	
	/**
	 * 个人中心——加班订餐
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);
		
		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);
		//装载提交页
		$addHtml = $this->fetch('Order/home_add');
		$this->assign('addHtml' ,$addHtml);
		//装载多功能模态框
		$modalHtml = $this->fetch('Order/home_modal');
		$this->assign('modalHtml' ,$modalHtml);


		return $this->fetch('Order/home');
	}
	
	/**
	 * 个人中心——加班订餐 查询页面
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

		$result = D('Order')->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$_REQUEST['check_status'], 
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$orderList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();
		
		$this->assign('pageHtml',$pageHtml);
		$this->assign('orderList',$orderList);
		
		//var_dump($orderList);
		return $this->fetch('Order/home_query');
	}

	/**
	 * 个人中心——提交申请
	 * AXAJ
	 */
	public function addOrder(){
		check_login('die');
	
		$result = D('Order')->addOrder(
			$_SESSION['user']['user_id'],
			time(),
			$_REQUEST['place'],
			$_REQUEST['reason'],
			$_REQUEST['number'],
			$_REQUEST['standard']);

		if($result == null)
			die('失败');
		$this->ajaxReturn($result);
	}

	/**
	 * 个人中心——修改申请
	 * AXAJ
	 */
	public function editOrder(){
		check_login('die');

		$result = D('Order')->editLeave(
			$_SESSION['user']['user_id'],
			$_REQUEST['order_id'],
			$_REQUEST['place'],
			$_REQUEST['reason'],
			$_REQUEST['number'],
			$_REQUEST['standard']);

		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}

	/**
	 * 个人中心——删除申请
	 * AXAJ
	 */
	public function deleteOrder(){
		$result = D('Order')->deleteLeave($_SESSION['user']['user_id'],$_REQUEST['order_id']);

		if(!$result)
			die('删除失败');
		$this->ajaxReturn(array());
	}



	/**
	 * 审批管理——加班订餐
	 * @param unknown_type $call
	 */
	public function manage($call = null){
				check_invoke($call);
		
		$privilege = get_privilege();
		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);

		//装载模态框
		$modalHtml = $this->fetch('Order/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);


		return $this->fetch('Order/manage');
	}



	/**
	 * 审批管理——加班订餐 查询页面
	 */
	private function manageQuery($privilege){
		if($privilege == PRIRILEGE_ADMIN || $privilege == PRIRILEGE_BOSS || $privilege == PRIRILEGE_PERSONNEL){
			//可以查看所有部门
			$departmentList = D('Department')->getAllDepartment();
			$userList = D('User')->getDepartmentUser();
		}else if($privilege == PRIRILEGE_MINISTER){
			//只能查看自己部门
			$departmentList = D('Department')->getAllDepartment($_SESSION['user']['department_id']);
			$userList = D('User')->getDepartmentUser($_SESSION['user']['department_id']);
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

		if($privilege == PRIRILEGE_MINISTER){
			$_REQUEST['department'] = $_SESSION['user']['department_id'];
		}

		$this->assign('condition',$_REQUEST);

		$result = D('Order')->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'],
			$_REQUEST['check_status'], 
			$_REQUEST['order'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$orderList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();

		$this->assign('pageHtml',$pageHtml);
		$this->assign('orderList',$orderList);
			
		return $this->fetch('Order/manage_query');
	}

	/**
	 * 审批管理——审批申请
	 * AXAJ
	 */
	public function approbateOrder(){
		check_login('die');
		if(get_privilege() != PRIRILEGE_BOSS)
			die('权限错误');

		$result = D('Order')->approbateOrder(
			$_SESSION['user']['user_id'],
			$_REQUEST['order_id'],
			$_REQUEST['is_agree'],
			time(),
			$_REQUEST['check_comment']);

		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}
}