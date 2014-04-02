<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;

class IndexController extends Controller {	
	public function index(){
		check_login();
		$this->redirect('Main/index');
	}
}