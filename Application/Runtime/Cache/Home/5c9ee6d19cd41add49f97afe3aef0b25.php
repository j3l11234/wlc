<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>外联处管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="/wlc/Public/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/wlc/Public/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
     <!-- sticky-footer -->
    <link href="/wlc/Public/css/sticky-footer.css" rel="stylesheet">
    <!-- 附属插件 -->
    <link rel="stylesheet" type="text/css" href="/wlc/Public/datetimepicker/bootstrap-datetimepicker.min.css"  media="screen">
    <link rel="stylesheet" type="text/css" href="/wlc/Public/bootstrap/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="/wlc/Public/bootstrap/css/bootstrap-select.min.css">
  

    <style type="text/css">
      .input-group-btn:last-child > .btn{
          border-bottom-left-radius: 4px;
          border-top-left-radius: 4px;
      }
      .form-div {
        margin-bottom: 10px;
      }

      .form-label{
        padding-top:5px;
        padding-right:5px;
        float:left;
      }
</style>
    <script src="/wlc/Public/bootstrap/js/jquery.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="/wlc/Public/bootstrap/js/html5shiv.min.js"></script>
        <script src="/wlc/Public/bootstrap/js/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

<div class="navbar  navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" >外联处</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="<?php echo getIsActive('navbar-main',$navbar_item);?>"><a href="<?php echo U('Main/index');?>">个人中心</a></li>
            <li class="<?php echo getIsActive('navbar-manage',$navbar_item);?>"><a href="<?php echo U('Manage/index');?>">审批管理</a></li>
            <li id="navbar-stat"><a href="<?php echo U('Stat/home');?>">数据统计</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">消息 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo get_username();?> <b class="caret"></b></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">编辑个人资料</a></li>
	            <li><a href="#">修改密码</a></li>
	            <li><a href="#">[预留]</a></li>
	            <li class="divider"></li>
	            <li><a href="<?php echo U('User/logout');?>">注销</a></li>
	          </ul>
	        </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
        <!-- Wrap all page content here -->
    <div id="wrap">
    <div class="container">
   

<style>

.login {
background: url(/wlc/Public/images/login/imac.png) 0 0 no-repeat;
background-size: 940px 778px;
color: #ffffff;
margin-bottom: 77px;
padding: 38px 38px 267px;
position: relative;
}

.login-screen {
background-color: #1abc9c;
min-height: 473px;
padding: 123px 199px 33px 306px;
}

.login-icon {
left: 200px;
position: absolute;
top: 160px;
width: 96px;
}

.login-icon > img {
display: block;
margin-bottom: 6px;
width: 100%;
}

.login-form {
background-color: #edeff1;
padding: 24px 23px 20px;
position: relative;
border-radius: 6px;
}

.form-group {
position: relative;
margin-bottom: 20px;
}

.login-form .login-field {
border-color: transparent;
font-size: 17px;
text-indent: 3px;
}
.form-control {
border: 2px solid #bdc3c7;
color: #34495e;
font-family: "Lato", Helvetica, Arial, sans-serif;
font-size: 15px;
line-height: 1.467;
padding: 8px 12px;
height: 42px;
-webkit-appearance: none;
border-radius: 6px;
-webkit-box-shadow: none;
box-shadow: none;
-webkit-transition: border .25s linear, color .25s linear, background-color .25s linear;
transition: border .25s linear, color .25s linear, background-color .25s linear;
}

.login-form .login-field:focus {
border-color: #1abc9c;
}

.form-group.focus .form-control, .form-control:focus {
border-color: #1abc9c;
outline: 0;
-webkit-box-shadow: none;
box-shadow: none;
}

.btn-block {
white-space: normal;
}
.btn-lg {
padding: 10px 19px;
font-size: 17px;
line-height: 1.471;
border-radius: 6px;
}
.btn-primary {
color: #ffffff;
background-color: #1abc9c;
}
.btn {
border: none;
font-size: 15px;
font-weight: normal;
line-height: 1.4;
border-radius: 4px;
padding: 10px 15px;
-webkit-font-smoothing: subpixel-antialiased;
-webkit-transition: border .25s linear, color .25s linear, background-color .25s linear;
transition: border .25s linear, color .25s linear, background-color .25s linear;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open .dropdown-toggle.btn-primary {
color: #ffffff;
background-color: #48c9b0;
border-color: #48c9b0;
}
.btn:hover, .btn:focus {
outline: none;
color: #ffffff;
}
.login-icon > h4 {
font-size: 17px;
font-weight: 300;
line-height: 34px;
opacity: 0.95;
filter: alpha(opacity=95);
}


.login-form .glyphicon {
color: #bfc9ca;
font-size: 16px;
position: absolute;
right: 15px;
top: 13px;
-webkit-transition: 0.25s;
transition: 0.25s;
}

.login-form .login-field:focus + .glyphicon {
color: #1abc9c;
}

</style>
<script type="text/javascript">

var doLogin = false;

function login() {
	if(doLogin)
		return false;
	doLogin = true;
	var username = $("#login-name").text();
	var password = $("#login-pass").text();
	$.post('<?php echo U('chklogin');?>', $("#loginform").serialize(), function(result) {
		doLogin = false;
		if(result == 'ok')
			document.location.href = '<?php echo U('Index/index');?>';
		else {
			$('#tooltip').html(result);
			$('#tooltip').animate({textIndent:10}, 100)
							.animate({textIndent:0}, 100)
							.animate({textIndent:10}, 100)
							.animate({textIndent:0}, 100)
		}
	}).error(function() {
		doLogin = false;
	});
	return false;
}

document.onkeydown = function(evt){
  　 var evt = window.event?window.event:evt;
   　if (evt.keyCode==13) {
	   login();
   　}
}
</script>

  <div class="row">
    <div class="col-md-12">
      <div class="login"style="width: 940px;height: 778px;margin-left: auto;margin-right: auto;">
        <div class="login-screen">
          <div class="login-icon">
            <img src="/wlc/Public/images/login/icon.png" alt="Welcome to Mail App">
            <h4>欢迎使用<br/><small style="color: #ffffff;">外联处管理系统</small></h4>
          </div>         
          <div class="login-form" id="login-form">
          	<form method="post" id="loginform" onsubmit="">
	            <div class="form-group">
	              <input type="text" class="form-control login-field" value="" placeholder="工号" name="username" id="login-name">
	              <span class="glyphicon glyphicon-user"/>
	            </div>
	            <div class="form-group">
	              <input type="password" class="form-control login-field" value="" placeholder="密码" name="password" id="login-pass">
	              <span class="glyphicon glyphicon-lock"/>
	            </div>
	            <h2 style="color: #F00; font-size: 15px" id="tooltip"></h2>
				
	            <a class="btn btn-primary btn-lg btn-block" onclick="login()" style="background-image:none;">登录</a>
	
	          </form>
          </div>
        </div>
      </div><!-- /login -->
    </div>
  </div>   
  
      </div> <!-- /container -->
    </div>
     <div id="footer">
      <div class="container">
        <p class="text-muted">j3l11234</p>
      </div>
    </div>

<div class="modal fade" id="result-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
        <div class="alert" style="margin-bottom: 0px;">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
      </div>
    </div>
  </div>
</div>

    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/wlc/Public/bootstrap/js/bootstrap.js"></script> 
    <script type="text/javascript" src="/wlc/Public/bootstrap/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="/wlc/Public/bootstrap/js/bootstrap-select.min.js"></script>
    <!-- bootstrap-datetimepicker.js 有修改！ -->
    <script type="text/javascript" src="/wlc/Public/datetimepicker/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/wlc/Public/datetimepicker/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

    <script type="text/javascript">
      function setCookie(c_name,value,expiredays){
        var exdate=new Date();
        exdate.setDate(exdate.getDate()+expiredays);
        document.cookie=c_name+ "=" +escape(value)+
        ((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
      }

      function getCookie(c_name){
        if (document.cookie.length>0){
          c_start=document.cookie.indexOf(c_name + "=");
          if (c_start!=-1){ 
            c_start=c_start + c_name.length+1;
            c_end=document.cookie.indexOf(";",c_start);
            if (c_end==-1)
              c_end=document.cookie.length;
              return unescape(document.cookie.substring(c_start,c_end))
          } 
        }
        return ""
      }


      Date.prototype.format = function(fmt)   
      { //author: meizz   
        var o = {   
          "M+" : this.getMonth()+1,                 //月份   
          "d+" : this.getDate(),                    //日   
          "h+" : this.getHours(),                   //小时   
          "m+" : this.getMinutes(),                 //分   
          "s+" : this.getSeconds(),                 //秒   
          "q+" : Math.floor((this.getMonth()+3)/3), //季度   
          "S"  : this.getMilliseconds()             //毫秒   
        };   
        if(/(y+)/.test(fmt))   
          fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
        for(var k in o)   
          if(new RegExp("("+ k +")").test(fmt))   
        fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
        return fmt;   
      }  


      function create_page(oldPage,newPage){
        var page = newPage;
        var pageList = oldPage.children().children(); 
        //数字按钮复制
        var hasPrev = false,hasNext = false;
        for (var i=0;i<pageList.length;i++){
          page.append('<li></li>');
          var curPage = page.children().slice(i, i+1);
          var curOldPage = pageList.slice(i, i+1);
          curPage.append(curOldPage);
          
          if(curOldPage.hasClass("current"))
            curPage.addClass("active");
          else if(curOldPage.hasClass("prev"))
            hasPrev = true;
          else if(curOldPage.hasClass("next"))
            hasNext = true;
        }
        //检查上一页按钮
        if(!hasPrev){
          page.prepend('<li class="disabled"><a href="#">&lt;&lt;</a></li>');
          offset = 1;
        }
        //检查下一页按钮
        if(!hasNext){
          page.append('<li class="disabled"><a href="#">&gt;&gt;</a></li>');
        }
        oldPage.remove(); 
      }
  
      function postSubmit(submitUrl,postdata,successText,button,modal,title){
        var result_modal = false;
        if(modal == null){
          result_modal = true;
          modal = $("#result-modal");
          modal.find(".modal-title").text(title);
        }

        $(button).button('loading');
        $.post(submitUrl, postdata,
          function(data,status){
            $(button).button('reset');
            if(typeof(data) == "string"){
              showResult(false,"失败： "+data);
            }else{
              showResult(true,successText);
            }
          }).error(
            function(){
              $(button).button('reset');
              showResult(false,"网络错误");
            });

          function showResult(success,text){
            var alert_div =  modal.find(".alert");
            alert_div.text(text);
            if(success)
              alert_div.removeClass("alert-danger").addClass("alert-success");
            else
              alert_div.removeClass("alert-success").addClass("alert-danger");

            alert_div.show();
            modal.modal('show');
            
            if(!result_modal){
              alert_div
                .animate({textIndent:10}, 100).animate({textIndent:0}, 100)
                .animate({textIndent:10}, 100).animate({textIndent:0}, 100, 
                function(){
                 if(success)
                    location.reload();
                });
            }

            if(success){
              modal.on("hidden.bs.modal", function(e){location.reload();});
            }        
          }
      }

      function showModalResult(success,title,text,reload){
        var alert_div = $("#result-modal .alert");
        alert_div.text(text);
        if(success)
          alert_div.removeClass("alert-danger").addClass("alert-success");
        else
          alert_div.removeClass("alert-success").addClass("alert-danger");

        $("#result-modal .modal-title").text(title);
        $("#result-modal").modal('show');

        alert_div
          .animate({textIndent:10}, 100).animate({textIndent:0}, 100)
          .animate({textIndent:10}, 100).animate({textIndent:0}, 100, 
            function(){
              if(reload)
                location.reload();
            });
      }
    </script>
  </body>
</html>