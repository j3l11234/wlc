<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 工作计划
 * 
 * @author j3l11234
 *
 */
class WorkplanController extends Controller {
	
	/**
	 * 个人中心——工作计划主页面
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);
			
		return $this->fetch('Workplan/home');
	}
	
	/**
	 * 审批管理——工作计划主页面
	 * @param unknown_type $call
	 */
	public function manage($call = null){
		check_invoke($call);
			
		return $this->fetch('Workplan/manage');
	}
}