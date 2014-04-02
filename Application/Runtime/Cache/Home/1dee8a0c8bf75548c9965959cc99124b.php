<?php if (!defined('THINK_PATH')) exit();?> 

 
<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title">订餐审批
			<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#query-condition-collapse">
				<small>折叠/显示搜索条件</small>
			</a>
		</h3>
	</div>
	
	<div class="panel-body">
		<div id="query-condition-collapse" class="panel-collapse collapse in">
			<form id="query-form">
				<div class="row">	
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">开始日期</div>
						<div class="input-group date form_date" data-date-format="yyyy-mm-dd">	
							<input class="form-control" size="16" type="text" value="<?php echo ($condition['start_date']); ?>" name="start_date" readonly>
							<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">结束日期</div>
						<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
							<input class="form-control" size="16" type="text" value="<?php echo ($condition['end_date']); ?>" name="end_date" readonly>
							<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">审批情况</div>
						<div class="input-group">
							<select name="check_status" class="selectpicker">
								<option value="0">全部</option>
								<option value="1">等待审批</option>
								<option value="2">审批通过</option>
								<option value="3">审批驳回</option>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">部门选择</div>
						<div class="input-group">
							<select name="department" onchange="get_department_user()" class="selectpicker">
								<?php if(is_array($departmentList)): foreach($departmentList as $key=>$department): ?><option value="<?php echo ($department['department_id']); ?>"><?php echo ($department['department_name']); ?></option><?php endforeach; endif; ?>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">人员选择</div>
						<div class="input-group">
							<select name="user" class="selectpicker">
							</select>
						</div>
					</div>
					<?php if($isPersonnel): ?><div class="col-lg-4 col-sm-6 form-div">
							<div class="form-label">修改审批</div>
							<div class="input-group">									
								<input id="switch-edit" type="checkbox">
							</div>
						</div><?php endif; ?>
					<div class="clearfix visible-lg visible-md visible-sm"></div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">每页显示</div>
						<div class="input-group">
							<input type="input" name="per_page" value="<?php echo ($condition['per_page']); ?>" class="form-control">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">排序方式</div>
						<div class="input-group">
							<select name="order" class="selectpicker">
								<option value="0">日期倒序</option>
								<option value="1">日期顺序</option>
								<option value="2">部门排序</option>
								<option value="3">姓名排序</option>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label" style="visibility:hidden;">确认按钮</div>
						<div style="input-group; text-align: center;">
							<button style="width:70%" type="button" id="btn-search" onclick="onSearch()" data-loading-text="查找中。。。" class="btn btn-primary">
								查找
							</button>
						</div>
					</div>	
				</div>
			</form>
		</div>

		 
		<div style="white-space: nowrap; overflow-x: scroll;">
			<table class="table table-condensed table-hover">
				<thead>
					<tr>
						<th>部门</th>
						<th>姓名</th>
						<th>申请日期</th>
						<th>金额</th>
						<th>审批状态</th>
						<th>审批时间</th>
						<th></th>
					</tr>
				</thead>
				<tbody> 		
					<?php if(is_array($orderList)): foreach($orderList as $key=>$record): ?><tr>
							<td><?php echo ($record['department_name']); ?></td>
							<td><?php echo ($record['alias']); ?></td>
							<td><?php echo ($record['datetime']); ?></td>
							<td><?php echo ($record['cost']); ?></td>
							<td>
								<?php switch($record['check_status']): case "1": ?><button type="button" class="btn btn-xs btn-info" disabled="disabled">等待审批</button><?php break;?>
									<?php case "2": ?><button type="button" class="btn btn-xs btn-success" disabled="disabled">审批通过</button><?php break;?>
									<?php case "3": ?><button type="button" class="btn btn-xs btn-danger" disabled="disabled">审批驳回</button><?php break; endswitch;?>
							</td>
							<td>
								<?php if($record['check_status'] != 1): echo ($record['check_datetime']); ?>
									<?php else: ?> 未审批<?php endif; ?>				
							</td>
							<td style="text-align: right;">
								<button type="button" class="btn btn-xs btn-primary btn-view">查看</button>
								<?php if($isPersonnel): switch($record['check_status']): case "1": ?><button type="button" class="btn btn-xs btn-info btn-approbate">审批</button><?php break;?>
										<?php default: ?>
										<button type="button" class="btn btn-xs btn-warning btn-approbate btn-edit" disabled="disabled">改批</button><?php endswitch; endif; ?>										
							</td>	
						</tr><?php endforeach; endif; ?>
				</tbody>
			</table>
		</div>
		<div style="display:none;" id="old-page">
			<?php echo ($pageHtml); ?>
		</div>

		<div style="text-align: center;">
			<ul class="pagination" style="margin-top:0;">
			</ul>
		</div>
	</div>
</div>


<script type="text/javascript">
	var orderList = <?php echo json_encode($orderList);?>;
	var userList = <?php echo json_encode($userList);?>;
	$(function(){
		if(getCookie('page') != "manage-order"){
			setCookie('switch-edit',0);
			setCookie('collapse',0);
		}
		//=====恢复选择条件=====

		//判断部门数量
		if($("select[name='department'] option").size() != 1)	
			$("select[name='department']").prepend('<option value="0" selected="selected">全部</option>');
		$("select[name='department'] option[value=0]").attr("selected", "selected");
		$("select[name='department'] option[value='<?php echo ($condition['department']); ?>']").attr("selected", "selected");

		//获取人员信息
		get_department_user();
		$("select[name='user'] option[value='<?php echo ($condition['user']); ?>']").attr("selected", "selected");

		$("select[name='check_status'] option[value='<?php echo ($condition['check_status']); ?>']").attr("selected", "selected");
		$("select[name='order'] option[value='<?php echo ($condition['order']); ?>']").attr("selected", "selected");
		$('.selectpicker').selectpicker('refresh');
		//搜索条件折叠
		if(getCookie('collapse') == 1){
			$('#query-condition-collapse').collapse('hide');
		}
		//修改审批开关
		if(getCookie('switch-edit') == 1){
			$("#query-form #switch-edit").bootstrapSwitch('setState', true);
			$('.btn-edit').removeAttr('disabled');
		}
		$("#query-form #switch-edit").bootstrapSwitch();

		$('form#query-form .form_date').datetimepicker({
			language: 'zh-CN',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
		});		
		
		create_page($("div#old-page"),$("ul.pagination"));

		$('#query-condition-collapse').on('hidden.bs.collapse', function(){
			setCookie('collapse',1);
		});
		$('#query-condition-collapse').on('shown.bs.collapse', function(){
			setCookie('collapse',0);
		});

		$("#switch-edit").on('switch-change', function (e, data){
			if(data.value){
				$('.btn-edit').removeAttr('disabled');
				setCookie('switch-edit',1);
			}
			else{
				$('.btn-edit').attr('disabled','disabled');
				setCookie('switch-edit',0);
			}
				
		});

		$(".btn-view").click(function(e){
			var index = $(e.target).parent().parent().index();
			viewOrder(orderList[index]);
		});

		
		<?php if($isPersonnel): ?>$(".btn-approbate").click(function(e){
				var index = $(e.target).parent().parent().index();
				approbateOrder(orderList[index]);
			});<?php endif; ?>	

	});
	
	function get_department_user(){
		var departmentId = $("select[name='department']").val();
		var userSelct = $("select[name='user']");
		
		userSelct.empty();
		
		userSelct.append('<option value="0">全部</option>');				 
		for(i in userList){
			if(userList[i].department_id == departmentId || departmentId == 0)
				userSelct.append('<option value="'+userList[i].user_id+'">'+userList[i].alias+'</option>');
		}
		userSelct.selectpicker('refresh');
	}

	function onSearch(){
		$('#btn-search').button('loading');
		window.location.href = "<?php echo U('Manage/order');?>"+"&"+$("#query-form").serialize();
	}
</script>