<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 工作计划
 * 
 * @author j3l11234
 *
 */
class WorkController extends Controller {
	
	/**
	 * 个人中心——工作计划主页面
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);

		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);

		//装载多功能模态框
		$modalHtml = $this->fetch('Work/home_modal');
		$this->assign('modalHtml' ,$modalHtml);

		//装载提交页
		$addHtml = $this->fetch('Work/home_add');
		$this->assign('addHtml' ,$addHtml);
		
		return $this->fetch('Work/home');
	}
	
	/**
	 * 个人中心——工作计划 查询页面
	 */
	private function homeQuery(){
		
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = '';
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = '';
		if(!isset($_REQUEST['status']))
			$_REQUEST['status'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;
		
		$this->assign('condition',$_REQUEST);

		$result = D('Work')->userQuery(
			$_SESSION['user']['user_id'], 
			$_REQUEST['start_date'], 
			$_REQUEST['end_date'], 
			$_REQUEST['status'],
			$_REQUEST['p'],
			$_REQUEST['per_page']);
		
		$count = $result['count'];
		$workList = $result['list'];
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();


		$this->assign('condition',$_REQUEST);
		$this->assign('pageHtml',$pageHtml);
		$this->assign('workList',$workList);
		
		return $this->fetch('Work/home_query');
	}

	/**
	 * 个人中心——填写总结
	 * AXAJ
	 */
	public function editWork(){
		check_login('die');

		//print_r($_REQUEST);
		//die();

		$result = D('Work')->editWork(
			$_SESSION['user']['user_id'],
			$_REQUEST['work_id'],
			$_REQUEST['workplan'],
			$_REQUEST['summary']);


		if(!$result)
			die('修改失败');
		$this->ajaxReturn($result);
	}

	/**
	 * 审批管理——工作计划主页面
	 * @param unknown_type $call
	 */
	public function manage($call = null){
		check_invoke($call);
			
		return $this->fetch('Work/manage');
	}
}