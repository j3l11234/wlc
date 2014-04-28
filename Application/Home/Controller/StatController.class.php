<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;

class StatController extends Controller {
	/**
	 * 统计管理主页
	 */
	public function index(){
		check_privilege();

		$htmlContent = $this->fetch('Stat/index');
		$this->assign('htmlContent',$htmlContent);
		
		$this->assign('navbar_item','navbar-stat');
		$this->assign('sidebar_item','sidebar-home');
		
		$this->display('template');
	}

	
	public function attend(){
		check_login();
		$privilege = get_privilege();
		$_GET['email']='111';
		if(!isset($_GET['p']))
			$_GET['p'] = 1;
		$map=array('user_id'=> 999);
		
		
		$User = M('Attendance'); // 实例化User对象
// 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取

$count = $User->where('1=1')->count();// 查询满足要求的总记录数
import('ORG.Util.Page');// 导入分页类
$Page  = new \Think\Page($count,5 );  // 实例化分页类 传入总记录数和每页显示的记录数
	//分页跳转的时候保证查询条件
$show = $Page->show();// 分页显示输出



   
$list = $User->where('1=1')->order('timestamp')->page($_GET[p].',5')->
join(array('user ON user.user_id = attendance.user_id','department ON department.department_id=user.department'))->select();
$Attendance = new AttendanceController();
$table = $Attendance->displayRecord($list);

$this->assign('table',$table);// 赋值数据集
$this->assign('page',$show);// 赋值分页输出
$this->display(); // 输出模板
var_dump($show);
var_dump($list);
	
/*
		if ($privilege == PRIRILEGE_ADMIN or privilege == PRIRILEGE_ADMIN)
			$this->display();
		elseif($privilege == PRIRILEGE_MINISTER)
			$this->display();
		else
			$this->error('您没有权限', U('Index/home'));
			*/
	}
}