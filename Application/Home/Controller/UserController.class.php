<?php
namespace Home\Controller;
use Think\Controller;

class UserController extends Controller {
   	public function login(){
   		$this->assign('login' ,true);
		$this->display();
    }
	   

	/**
	 * 个人中心——个人资料页面
	 * @param unknown_type $call
	 */
	public function home(){
		check_login();
		

	//装载查询页面
		$profileHtml = $this->fetch('User/home_profile');
		$this->assign('profileHtml' ,$profileHtml);

		return $this->fetch('User/home');
	}

	public function changePassword(){
		check_login();

		if(!$_POST['old-password'] || !$_POST['new-password'])
			$this->ajaxReturn('输入不完全');

		$user = D('User')->changePassword($_SESSION['user']['user_id'], $_POST['old-password'],$_POST['new-password']);
		if(is_string($user))
			die($user);

		session(null);
		session('user',$user);
		
		die('ok');
	}

	public function chklogin(){	
		$user = D('User')->authorize($_POST['username'],$_POST['password']);
		//var_dump($res);
		if(is_string($user))
			die($user);
		
		session(null);
		session('user',$user);
		die('ok');
    }
    
    public function logout(){
    	session(null);
    	$this->success('注销成功', U('User/login'));
    }

}
