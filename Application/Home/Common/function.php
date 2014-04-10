<?php
define('PRIRILEGE_ADMIN', 0);
define('PRIRILEGE_BOSS', 1);
define('PRIRILEGE_MINISTER', 2);
define('PRIRILEGE_WORKER', 3);
define('PRIRILEGE_PERSONNEL', 4);

/**
 * 验证当前用户，如果不是则自动跳转到登陆页面
 * 
 */
function check_login($return = null){
	if(!isset($_SESSION['user'])){
		if($return == 'die')
			die();
		else 
			redirect(U('User/login'),0,'');
	}		
}

/**
 * 判断是否内部调用
 * @param unknown_type $authPara
 */
function check_invoke($authPara){
	if($authPara != C('AUTH_PARA'))
		redirect(U('Index/index'),0,'');
}

function get_username(){
	if(!isset($_SESSION['user']))
		return '游客';
	else
		return $_SESSION['user']['alias'];
}

function get_department_name(){
	return $_SESSION['user']['department_name'];
}

function getIsActive($item,$activeItem){
	if($item == $activeItem)
		return 'active';
	else
		return '';
}
/**
 * 获取待审批任务数量
 * 
 */
function getPendingNum($item,$home = 0){
	$pendingNum = 0;
	switch ($item) {
		case 'leave': 
			if (get_privilege() == PRIRILEGE_BOSS) //查询待审批请假的数量-处长用
				$pendingNum = D('Leave')->getPendingNum();
			elseif (get_privilege() == PRIRILEGE_PERSONNEL) //查询待销假请假的数量-人事负责人用
				$pendingNum = D('Leave')->getPendingReportNum();
			break;
		case 'order': 
			if (get_privilege() == PRIRILEGE_BOSS) //查询待审批订餐申请的数量-人事负责人用
				$pendingNum = D('Order')->getPendingNum($_SESSION['user']['user_id']);
			break;
		case 'borrow':
			if($home == 1)
				$pendingNum = D('Borrow')->getPendingReturntNum($_SESSION['user']['user_id']);
			else 
				if (get_privilege() == PRIRILEGE_PERSONNEL) //查询待审批借用申请的数量-人事负责人用
					$pendingNum = D('Borrow')->getPendingNum();
			break;
		case 'errand': 
			if (get_privilege() == PRIRILEGE_BOSS) //查询待审批
				$pendingNum = D('Errand')->getPendingNum($_SESSION['user']['user_id']);
			break;

	}
	if($pendingNum == 0)
		return '';
	else
		return $pendingNum;
}

/**
 * 验证当前用户权限
 * 
 */
function check_privilege($return = ''){
	//var_dump($_SESSION);
	if(!isset($_SESSION['user'])){
		if($return == 'die')
			die();
		else 
			redirect(U('User/login'),0,'');
	}else{
		if($_SESSION['user']['privilege'] == PRIRILEGE_WORKER){
			if($return == 'die')
				die();
			else 
			redirect(U('Main/index'),0,'');
		}
	}
	return $_SESSION['user']['privilege'];
}

function get_privilege(){
	if(isset($_SESSION['user'])){
		if($_SESSION['user']['department_id'] == 4)
			return PRIRILEGE_PERSONNEL;
		else
			return $_SESSION['user']['privilege'];
	}
	else
		return null;
}