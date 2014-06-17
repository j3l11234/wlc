<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 签到管理
 * 
 * @author j3l11234
 *
 */
class NoticeController extends Controller {
	/**
	 * 个人中心——个人中心主页挂件
	 * @param unknown_type $call
	 */
	public function homeWidget(){
		check_login();

		$this->assign('notice',F('notice'));	
		return $this->fetch('Notice/home_widget');
		
	}
	
	/**
	 * 个人中心——备注签到记录
	 * AXAJ
	 */
	public function submitNotice(){
		check_login('die');

		$notice = array(
			'title' => $_REQUEST['notice_title'], 
			'content' => $_REQUEST['notice_content'], );
		
		F('notice',$notice);

		$this->ajaxReturn(array());
	}
}