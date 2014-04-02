<?php
namespace Home\Controller;
use Think\Controller;

/**
 * 签到管理
 * 
 * @author j3l11234
 *
 */
class AttendController extends Controller {
	/**
	 * 个人中心——个人中心主页挂件
	 * @param unknown_type $call
	 */
	public function homeWidget($call = null){
		check_invoke($call);
		
        $Attend = D('Attend');
		$record = $Attend->isAttended($_SESSION['user']['user_id']);
		$record_ = array(
			'date' => $record['date'],
			'clockin' => $record['clockin'],
			'clockout' => $record['clockout'],
		);
		
		$canClockOut = ($Attend->isValid(date('H:i:s'),1)== 0 && $record_['clockout'] == null);
		$this->assign('canClockOut',$canClockOut?'true':'false');
		$this->assign('needClock',$_SESSION['user']['need_clock']);	
		$this->assign('attendStatus',json_encode($record_));	
		return $this->fetch('Attend/home_widget');
		
	}
	
	/** 
	 * 签到动作
	 * AJAX
	 */
	public function attend(){
		check_login('die');
		
		if($_SESSION['user']['need_clock'] == 0)
			die();
		
		$clockType = $_REQUEST['clockType'];
		if($clockType != 0 && $clockType != 1)
			$this->ajaxReturn('');
		
		
		$Attend = D('Attend');
		
		//检查时间是否合理
		$time = date('H:i:s');
		if($Attend->isValid($time, $clockType) != 0 && $clockType ==1)
			$this->ajaxReturn('');
		
		//签到
		$result = $Attend->attend($_SESSION['user']['user_id'],$clockType,time());
		
		if(!$result)
			$this->ajaxReturn('');
		else{
			$return = array(
				'date' => $result['date'],
				'clockin' => $result['clockin'],
				'clockout' => $result['clockout'],
			);
			$this->ajaxReturn($return);
		}
	}

	
	/**
	 * 个人中心——签到管理主页面
	 * @param unknown_type $call
	 */
	public function home($call = null){
		check_invoke($call);
		
		//装载查询页面
		$queryHtml = $this->homeQuery();
		$this->assign('queryHtml' ,$queryHtml);
		
		return $this->fetch('Attend/home');
	}
	
	
	/** 
	 * 个人中心-查询页面
	 * 
	 */
	private function homeQuery(){
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = '';
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = '';
		if(!isset($_REQUEST['status']))
			$_REQUEST['status'] = 0;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;
		
		$this->assign('condition',$_REQUEST);

		switch ($_REQUEST['order']){
			case 0: //日期倒序
				$order = 'date desc'; 
				break;  
			case 1: //日期顺序
				$order = 'date'; 
				break;
			default:
				$order = 'date desc'; 
		}
		
		$Attend = D('Attend');
		$result = $Attend->userSearch($_SESSION['user']['user_id'],
									  $_REQUEST['start_date'],
									  $_REQUEST['end_date'],
									  $_REQUEST['status'],
									  $order,
									  $_REQUEST['p'],$_REQUEST['per_page']);
		
		$count = $result['count'];
		$attendList = $result['list'];

		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();

		//echo $pageHtml;
		//var_dump($pageHtml);
		
		//var_dump($attendList);
			
		$this->assign('attendList',$attendList);
		$this->assign('pageHtml',$pageHtml);
		return $this->fetch('Attend/home_query');
		
	}
	

	 
	/**
	 * 审批管理——签到管理主页面
	 * @param unknown_type $call
	 */
	public function manage($call = null){
		check_invoke($call);
		
		$privilege = get_privilege();

		//装载查询页面
		$queryHtml = $this->manageQuery($privilege);
		$this->assign('queryHtml' ,$queryHtml);
		
		//装载模态框
		$modalHtml = $this->fetch('Attend/manage_modal');
		$this->assign('modalHtml' ,$modalHtml);
		
		return $this->fetch('Attend/manage');
	}
	
		
	
	/** 
	 * 审批管理-查询
	 * 
	 */
	private function manageQuery($privilege){
		$Department = D('Department');
		$User = D('User');
		
		if($privilege == PRIRILEGE_ADMIN || $privilege == PRIRILEGE_BOSS ||$privilege == PRIRILEGE_PERSONNEL){
			//可以查看所有部门
			$departmentList = $Department->getAllDepartment();
			$userList= $User->getDepartmentUser();
			
		}else if($privilege == PRIRILEGE_MINISTER){
			//只能查看自己部门
			$departmentList = $Department->getAllDepartment($_SESSION['user']['department_id']);
			$userList= $User->getDepartmentUser($_SESSION['user']['department_id']);
		}

		$this->assign('isPersonnel',$privilege == PRIRILEGE_PERSONNEL);
		$this->assign('departmentList',$departmentList);
		$this->assign('userList',$userList);


		if($privilege == PRIRILEGE_MINISTER){
			$_REQUEST['department'] = $_SESSION['user']['department_id'];
		}
		
		if(!isset($_REQUEST['department']))
			$_REQUEST['department'] = 0;
		if(!isset($_REQUEST['user']))
			$_REQUEST['user'] = 0;
		if(!isset($_REQUEST['start_date']))
			$_REQUEST['start_date'] = '';
		if(!isset($_REQUEST['end_date']))
			$_REQUEST['end_date'] = '';
		if(!isset($_REQUEST['status']))
			$_REQUEST['status'] = 0;
		if(!isset($_REQUEST['order']))
			$_REQUEST['order'] = 0;
		if(!isset($_REQUEST['p']))
			$_REQUEST['p'] = 1;
		if(isset($_REQUEST['per_page']) <= 0)
			$_REQUEST['per_page'] = 8;

		$order;
		switch ($_REQUEST['order']){
			case 0: //日期倒序
				$order = 'date desc,wlc_user.department_id,alias'; 
				break;  
			case 1: //日期顺序
				$order = 'date ,wlc_user.department_id, alias'; 
				break;
			case 2: //部门顺序
				$order = 'wlc_user.department_id,alias,date desc'; 
				break;
			case 3: //名称顺序
				$order = 'alias,wlc_user.department_id,date desc'; 
				break;
			default:
				$order = 'date desc,wlc_user.department_id, alias'; 
		}
		
		$this->assign('condition',$_REQUEST);

		$Attend = D('Attend');		
	
		$result = $Attend->adminQuery(
				$_REQUEST['department'],
				$_REQUEST['user'],
				$_REQUEST['start_date'],
				$_REQUEST['end_date'],
				$_REQUEST['status'],
				$order,
				$_REQUEST['p'],
				$_REQUEST['per_page']);
		
		//var_dump($result);
		
		$count = $result['count'];
		$attendList = $result['list'];				
		
		$page  = new \Think\Page($count,$_REQUEST['per_page'] );
		$pageHtml = $page->show();

		$this->assign('attendList',$attendList);
		$this->assign('pageHtml',$pageHtml);
		return $this->fetch('Attend/manage_query');	
	}
	
	/** 
	 * 审批管理 -补签改签
	 * AJAX
	 */
	public function editAttend(){
		check_privilege('die');
		$privilege = get_privilege();
		if($privilege != PRIRILEGE_PERSONNEL)
			die('权限错误');

		if(date('H:i:s',strtotime(date('Y-m-d').' '.$_REQUEST['clockin'])) != $_REQUEST['clockin'] && $_REQUEST['clockin'] != '')
			die('签到时间错误');
		if(date('H:i:s',strtotime(date('Y-m-d').' '.$_REQUEST['clockout'])) != $_REQUEST['clockout'] && $_REQUEST['clockout'] != '')
			die('签退时间错误');

		$result = D('attend')->editAttent($_REQUEST['attend_id'], $_REQUEST['clockin'], $_REQUEST['clockout']);
		if ($result == 1)
			die('签到时间必须早于签退时间');
		else if($result == null)
			die('修改失败');

		$this->ajaxReturn($result);
		
		
	}
	
	//========================================================================

	/**
	 * 讲签到记录处理成表格
	 */
	public function displayRecord($records){
		$html = '
  <table class="table">
    <thead>
      <tr>
      <th>日期</th>
      <th>签到时间</th>
      <th>情况</th>
      </tr>
    </thead>
    <tbody>
            ';
		foreach ($records as $record){
			if($record['is_late']==1)
				$recordStaus = '<span class="label label-danger">迟到</span>';
			elseif($record['is_late']==-1)
				$recordStaus = '<span class="label label-warning">未签到</span>';
			else 
				$recordStaus = '<span class="label label-success">按时</span>';
				
			$html=$html. '
			  <tr>
                <td>'.substr($record['timestamp'],0,10).'</td>
                <td>'.substr($record['timestamp'],11).'</td>
                <td>'.$recordStaus.'</td>
              </tr>';
		}
		$html=$html. '
     </tbody>
  </table>';
		return $html;
  }
}