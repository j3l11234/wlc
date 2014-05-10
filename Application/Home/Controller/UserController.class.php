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
		
		$this->createFtpConfig();
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

    public function createFtpConfig(){
    	$xml = new \SimpleXMLElement('
    		<FileZillaServer>
    			<Settings>
    				<Item name="Admin port" type="numeric">14147</Item>
    				<Item name="Service name" type="string">FileZillaServer</Item>
    				<Item name="Service display name" type="string">FileZillaServer</Item>
    			</Settings>
    			<Groups />
    			<Users>
					<User Name="admin">
			            <Option Name="Pass">ee10c315eba2c75b403ea99136f5b48d</Option>
			            <Option Name="Group"></Option>
			            <Option Name="Bypass server userlimit">0</Option>
			            <Option Name="User Limit">0</Option>
			            <Option Name="IP Limit">0</Option>
			            <Option Name="Enabled">1</Option>
			            <Option Name="Comments"></Option>
			            <Option Name="ForceSsl">0</Option>
			            <IpFilter>
			                <Disallowed />
			                <Allowed />
			            </IpFilter>
			            <Permissions>
			                <Permission Dir="'.C('FTP_DIR').'">
			                    <Option Name="FileRead">1</Option>
			                    <Option Name="FileWrite">1</Option>
			                    <Option Name="FileDelete">1</Option>
			                    <Option Name="FileAppend">1</Option>
			                    <Option Name="DirCreate">1</Option>
			                    <Option Name="DirDelete">1</Option>
			                    <Option Name="DirList">1</Option>
			                    <Option Name="DirSubdirs">1</Option>
			                    <Option Name="IsHome">1</Option>
			                    <Option Name="AutoCreate">1</Option>
			                </Permission>
			            </Permissions>
			            <SpeedLimits DlType="0" DlLimit="10" ServerDlLimitBypass="0" UlType="0" UlLimit="10" ServerUlLimitBypass="0">
			                <Download />
			                <Upload />
			            </SpeedLimits>
			        </User>
    			</Users>
    		</FileZillaServer>
    		');

    	foreach ($xml->children() as $node) {
    		if($node->getName() == 'Users'){
    			$Users_node = $node;
    			break;
    		}
    	}
    	if(isset($Users_node)){
    		$userList = D('User')->adminQuery(0, 0, 1, 0,true)['list'];
    		foreach ($userList as $key => $user) {
    			//直接登录账号
    			$User_node = $Users_node->addChild('User');
	    		$User_node->addAttribute('Name', $user['username']);
	    		{
	    			$Option_node = $User_node->addChild('Option',$user['password']);
	    			$Option_node->addAttribute('Name', 'Pass');
	    			$Option_node = $User_node->addChild('Option');
	    			$Option_node->addAttribute('Name', 'Group');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'Bypass server userlimit');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'User Limit');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'IP Limit');
	    			$Option_node = $User_node->addChild('Option','1');
	    			$Option_node->addAttribute('Name', 'Enabled');
	    			$Option_node = $User_node->addChild('Option');
	    			$Option_node->addAttribute('Name', 'Comments');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'ForceSsl');

	    			$IpFilter_node = $User_node->addChild('IpFilter');
	    			$IpFilter_node->addChild('Disallowed');
	    			$IpFilter_node->addChild('Allowed');

	    			$Permissions_node = $User_node->addChild('Permissions');
	    			{
	    				$Permission_node = $Permissions_node->addChild('Permission');
	    				$Permission_node->addAttribute('Dir', C('FTP_DIR').'/'.$user['username']);
	    				{
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileRead');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileWrite');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileAppend');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirCreate');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirList');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirSubdirs');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'IsHome');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'AutoCreate');
	    				}

	    				$Permission_node = $Permissions_node->addChild('Permission');
	    				$Permission_node->addAttribute('Dir', C('FTP_DIR').'/公共目录');
	    				{
	    					$Aliases_node = $Permission_node->addChild('Aliases');
	    					$Aliases_node->addChild('Alias',C('FTP_DIR').'/'.$user['username'].'/公共目录');

	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileRead');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileWrite');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileAppend');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirCreate');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirList');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirSubdirs');
	    					$Option_node = $Permission_node->addChild('Option','0');
	    					$Option_node->addAttribute('Name', 'IsHome');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'AutoCreate');
	    				}
	    			}

	    			$SpeedLimits_node = $User_node->addChild('SpeedLimits');
	    			$SpeedLimits_node->addAttribute('DlType', '0');
	    			$SpeedLimits_node->addAttribute('DlLimit', '10');
	    			$SpeedLimits_node->addAttribute('ServerDlLimitBypass', '0');
	    			$SpeedLimits_node->addAttribute('UlType', '0');
	    			$SpeedLimits_node->addAttribute('UlLimit', '10');
	    			$SpeedLimits_node->addAttribute('ServerUlLimitBypass', '0');
	    			$SpeedLimits_node->addChild('Download');
	    			$SpeedLimits_node->addChild('Upload');
	    		}

	    		//脚本登录账号
	    		$User_node = $Users_node->addChild('User');
	    		$User_node->addAttribute('Name', $user['username'].'_');
	    		{
	    			$Option_node = $User_node->addChild('Option',md5(substr(md5($user['password']),0,16)));
	    			$Option_node->addAttribute('Name', 'Pass');
	    			$Option_node = $User_node->addChild('Option');
	    			$Option_node->addAttribute('Name', 'Group');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'Bypass server userlimit');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'User Limit');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'IP Limit');
	    			$Option_node = $User_node->addChild('Option','1');
	    			$Option_node->addAttribute('Name', 'Enabled');
	    			$Option_node = $User_node->addChild('Option');
	    			$Option_node->addAttribute('Name', 'Comments');
	    			$Option_node = $User_node->addChild('Option','0');
	    			$Option_node->addAttribute('Name', 'ForceSsl');

	    			$IpFilter_node = $User_node->addChild('IpFilter');
	    			$IpFilter_node->addChild('Disallowed');
	    			$IpFilter_node->addChild('Allowed');

	    			$Permissions_node = $User_node->addChild('Permissions');
	    			{
	    				$Permission_node = $Permissions_node->addChild('Permission');
	    				$Permission_node->addAttribute('Dir', C('FTP_DIR').'/'.$user['username']);
	    				{
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileRead');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileWrite');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileAppend');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirCreate');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirList');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirSubdirs');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'IsHome');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'AutoCreate');
	    				}

	    				$Permission_node = $Permissions_node->addChild('Permission');
	    				$Permission_node->addAttribute('Dir', C('FTP_DIR').'/公共目录');
	    				{
	    					$Aliases_node = $Permission_node->addChild('Aliases');
	    					$Aliases_node->addChild('Alias',C('FTP_DIR').'/'.$user['username'].'/公共目录');

	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileRead');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileWrite');
	    					$Option_node = $Permission_node->addChild('Option','0');
	    					$Option_node->addAttribute('Name', 'FileDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'FileAppend');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirCreate');
	    					$Option_node = $Permission_node->addChild('Option','0');
	    					$Option_node->addAttribute('Name', 'DirDelete');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirList');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'DirSubdirs');
	    					$Option_node = $Permission_node->addChild('Option','0');
	    					$Option_node->addAttribute('Name', 'IsHome');
	    					$Option_node = $Permission_node->addChild('Option','1');
	    					$Option_node->addAttribute('Name', 'AutoCreate');
	    				}
	    			}

	    			$SpeedLimits_node = $User_node->addChild('SpeedLimits');
	    			$SpeedLimits_node->addAttribute('DlType', '0');
	    			$SpeedLimits_node->addAttribute('DlLimit', '10');
	    			$SpeedLimits_node->addAttribute('ServerDlLimitBypass', '0');
	    			$SpeedLimits_node->addAttribute('UlType', '0');
	    			$SpeedLimits_node->addAttribute('UlLimit', '10');
	    			$SpeedLimits_node->addAttribute('ServerUlLimitBypass', '0');
	    			$SpeedLimits_node->addChild('Download');
	    			$SpeedLimits_node->addChild('Upload');
	    		}
    		}
    	}
		$xmlContent = $xml->asXML();
		//echo $xmlContent;
		$file=fopen(C('FileZillaFTP_DIR').'/FileZilla Server.xml',"w+");
		fwrite($file,$xmlContent);
		fclose($file);

		exec('"'.C('FileZillaFTP_DIR').'/FileZilla server.exe" /reload-config');
    }
}
