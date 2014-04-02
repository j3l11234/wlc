<?php if (!defined('THINK_PATH')) exit();?> 

<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title">出差申请
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
								<option value="1">申请等待审批</option>
								<option value="2">申请审批通过</option>
								<option value="3">申请审批驳回</option>
								<option value="4">总结等待审批</option>
								<option value="5">总结审批通过</option>
								<option value="6">总结审批驳回</option>
								<option value="7">金额审批通过</option>
								<option value="8">金额审批驳回</option>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">编辑模式</div>
						<div class="input-group">									
							<input id="switch-edit" type="checkbox">
						</div>
					</div>
					<div class="clearfix visible-md visible-sm"></div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">每页显示</div>
						<div class="input-group">
							<input type="input" name="per_page" value="<?php echo ($condition['per_page']); ?>" class="form-control">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div style="input-group; text-align: center;">
							<button style="width:45%" type="button" onclick="addErrand()" class="btn btn-success">新申请</button>
							&nbsp;
							<button style="width:45%" type="button" id="btn-search" onclick="onSearch()" data-loading-text="查找中。。。" class="btn btn-primary">查找</button>
						</div>
					</div>	
				</div>
			</form>
		</div>

		<div class="table-responsive">
			<table class="table table-condensed table-hover">
				<thead>
					<tr>
						<th>申请日期</th>
						<th>出差地点</th>
						<th>出发时间</th>
						<th>返回时间</th>
						<th>审批状态</th>
						<th></th>
					</tr>
				</thead>
				<tbody> 		
				<?php if(is_array($errandList)): foreach($errandList as $key=>$record): ?><tr>
						<td><?php echo ($record['date']); ?></td>
						<td><?php echo ($record['place']); ?></td>
						<td><?php echo ($record['start_date']); ?></td>
						<td><?php echo ($record['end_date']); ?></td>
						<td>
							<?php switch($record['check_status']): case "1": ?><button type="button" class="btn btn-xs btn-info" disabled="disabled">申请等待审批</button><?php break;?>
								<?php case "2": ?><button type="button" class="btn btn-xs btn-success" disabled="disabled">申请审批通过</button><?php break;?>
								<?php case "3": ?><button type="button" class="btn btn-xs btn-danger" disabled="disabled">申请审批驳回</button><?php break;?>
								<?php case "4": ?><button type="button" class="btn btn-xs btn-info" disabled="disabled">总结等待审批</button><?php break;?>
								<?php case "5": ?><button type="button" class="btn btn-xs btn-success" disabled="disabled">总结审批通过</button><?php break;?>
								<?php case "6": ?><button type="button" class="btn btn-xs btn-danger" disabled="disabled">总结审批驳回</button><?php break;?>
								<?php case "7": ?><button type="button" class="btn btn-xs btn-success" disabled="disabled">金额审批通过</button><?php break;?>
								<?php case "8": ?><button type="button" class="btn btn-xs btn-danger" disabled="disabled">金额审批驳回</button><?php break; endswitch;?>
						</td>
						<td style="text-align: right;">
							<button type="button" class="btn btn-xs btn-info" onclick="onViewClick(this)">查看</button>
							<?php if($record['check_status'] == 1): ?>
								<button type="button" class="btn btn-xs btn-warning btn-edit" onclick="onEditClick(this)" disabled="disabled">修改</button>
								<button type="button" class="btn btn-xs btn-danger btn-delete" onclick="onDeleteClick(this)" disabled="disabled">删除</button>
							<?php elseif($record['check_status'] == 2): ?> 
								<button type="button" class="btn btn-xs btn-info" onclick="onSummarizeClick(this)">总结</button>
								<button type="button" class="btn btn-xs" style="visibility:hidden;">删除</button>
							<?php elseif($record['check_status'] == 4): ?> 	
								<button type="button" class="btn btn-xs btn-warning btn-edit" onclick="onSummarizeClick(this)" disabled="disabled">总结</button>
								<button type="button" class="btn btn-xs" style="visibility:hidden;">删除</button>
							<?php else: ?>
								<button type="button" class="btn btn-xs" style="visibility:hidden;">修改</button>
								<button type="button" class="btn btn-xs" style="visibility:hidden;">删除</button><?php endif; ?>
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

	var errandList = <?php echo json_encode($errandList);?>;
	$(function(){
		if(getCookie('page') != "home-errand"){
			setCookie('switch-edit',0);
			setCookie('collapse',0);
		}

		//===控件初始化===
		//状态筛选
		$("select[name='check_status'] option[value='<?php echo ($condition['check_status']); ?>']").attr("selected", "selected");
		$('.selectpicker').selectpicker('refresh');
		//编辑开关
		if(getCookie('switch-edit') == 1){
			$("#query-form #switch-edit").bootstrapSwitch('setState', true);
			$('.btn-edit').removeAttr('disabled');
			$('.btn-delete').removeAttr('disabled');
		}
		$("#query-form #switch-edit").bootstrapSwitch();
		//搜索条件折叠
		if(getCookie('collapse') == 1){
			$('#query-condition-collapse').collapse('hide');
		}
		//日期选择器
		$('#query-form .form_date').datetimepicker({
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
		
		$("#switch-edit").on('switch-change', function (e, data){
			if(data.value){
				$('.btn-edit').removeAttr('disabled');
				$('.btn-delete').removeAttr('disabled');
				setCookie('switch-edit',1);
			}
			else{
				$('.btn-edit').attr('disabled','disabled');
				$('.btn-delete').attr('disabled','disabled');
				setCookie('switch-edit',0);
			}
				
		});


		$('#query-condition-collapse').on('hidden.bs.collapse', function(){
			setCookie('collapse',1);
		});
		$('#query-condition-collapse').on('shown.bs.collapse', function(){
			setCookie('collapse',0);
		});


	});

	function onEditClick(button){
		var index = $(button).parent().parent().index();
		editErrand(errandList[index]);
	}

	function onViewClick(button){
		var index = $(button).parent().parent().index();
		viewErrand(errandList[index]);
	}

	function onDeleteClick(button){
		var index = $(button).parent().parent().index();
		deleteErrand(errandList[index]);
	}

	function onSummarizeClick(button){
		var index = $(button).parent().parent().index();
		summarizeErrand(errandList[index]);
	}

	function onSearch(){
		$('#btn-search').button('loading');
		window.location.href = "<?php echo U('Main/errand');?>"+"&"+$("#query-form").serialize();
	}
</script>