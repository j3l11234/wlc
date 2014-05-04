<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;

class StatController extends Controller {
	/**
	 * 统计管理主页
	 */

	public function manage(){
		check_login();

		$privilege = get_privilege();

		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);
			
		return $this->fetch('Stat/manage');
	}

	/** 
	 * 审批管理-查询
	 * 
	 */
	private function manageQuery($privilege){

		if($privilege == PRIRILEGE_ADMIN || $privilege == PRIRILEGE_BOSS ||$privilege == PRIRILEGE_PERSONNEL){
			//可以查看所有部门
			$departmentList = D('Department')->getAllDepartment();
			$userList= D('User')->getDepartmentUser();
			
		}else if($privilege == PRIRILEGE_MINISTER){
			//只能查看自己部门
			$departmentList = D('Department')->getAllDepartment($_SESSION['user']['department_id']);
			$userList= D('User')->getDepartmentUser($_SESSION['user']['department_id']);
		}
		$this->assign('privilege',$privilege);
		$this->assign('departmentList',$departmentList);
		$this->assign('userList',$userList);

		if($privilege == PRIRILEGE_MINISTER)
			$_REQUEST['department'] = $_SESSION['user']['department_id'];
		if(!isset($_REQUEST['department']))
			$_REQUEST['department'] = 0;
		if(!isset($_REQUEST['user']))
			$_REQUEST['user'] = 0;

		$firstday = date('Y-m-01');
		$lastday = date('Y-m-d', strtotime("$firstday +1 month -1 day"));
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = $firstday;
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = $lastday;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;
		$this->assign('condition',$_REQUEST);	

		$result = D('User')->adminQuery(
			$_REQUEST['department'],
			$_REQUEST['user'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);

		$count = $result['count'];
		$statList = $result['list'];
		//var_dump($statList);	
		foreach ($statList as $key => $value) {
			$attendSum = D('Attend')->stat($value['user_id'],$_REQUEST['start_date'],$_REQUEST['end_date']);
			$statList[$key]['attendSum'] = $attendSum['day'].'天'.$attendSum['hour'].'小时'.$attendSum['minute'].'分'.$attendSum['second'].'秒';
			$extraSum = D('Extra')->stat($value['user_id'],$_REQUEST['start_date'],$_REQUEST['end_date']);
			$statList[$key]['extraSum'] = $extraSum['day'].'天'.$extraSum['hour'].'小时';
			$errandSum = D('Errand')->stat($value['user_id'],$_REQUEST['start_date'],$_REQUEST['end_date']);
			$statList[$key]['errandSum'] = $errandSum['day'].'天'.$errandSum['hour'].'小时';
			$leaveSum = D('Leave')->stat($value['user_id'],$_REQUEST['start_date'],$_REQUEST['end_date']);
			$statList[$key]['leaveSum'] = $leaveSum['day'].'天'.$leaveSum['hour'].'小时';
			$orderSum = D('Order')->stat($value['user_id'],$_REQUEST['start_date'],$_REQUEST['end_date']);
			$statList[$key]['orderSum'] = $orderSum.'次';
		}

		//var_dump($statList);


		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();

		$this->assign('statList',$statList);
		$this->assign('pageHtml',$pageHtml);
		return $this->fetch('Stat/manage_query');	
	}
}