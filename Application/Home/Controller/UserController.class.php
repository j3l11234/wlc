<?php
namespace Home\Controller;
use Think\Controller;

class UserController extends Controller {
   	public function login(){
		$this->display();
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
    	$this->success('注销成功', 'User/login');
    }

}
