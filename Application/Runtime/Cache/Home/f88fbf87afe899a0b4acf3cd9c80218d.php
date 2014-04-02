<?php if (!defined('THINK_PATH')) exit();?> 


<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title">签到记录
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
							<input class="form-control"type="text" value="<?php echo ($condition['start_date']); ?>" name="start_date" readonly>
							<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">结束日期</div>
						<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
							<input class="form-control" type="text" value="<?php echo ($condition['end_date']); ?>" name="end_date" readonly>
							<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">签到类型</div>
						<div class="input-group">
							<select name="status" class="selectpicker">
								<option value="0">全部</option>
								<option value="1">迟到(未签到)</option>
								<option value="2">早退(未签退)</option>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">排序方式</div>
						<div class="input-group">
							<select name="order" class="selectpicker">
								<option value="0">日期倒序</option>
								<option value="1">日期顺序</option>
							</select>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label">每页显示</div>
						<div class="input-group">
							<input type="input" name="per_page" value="<?php echo ($condition['per_page']); ?>" class="form-control">
							<span class="input-group-addon"></span>
						</div>
					</div>			
					<div class="col-lg-4 col-sm-6 form-div">
						<div class="form-label" style="visibility:hidden;">确认按钮</div>
						<div style="input-group; text-align: center;">
							<button style="width:70%" type="button" id="search-btn" onclick="onSearch()" data-loading-text="查找中。。。" class="btn btn-primary">查找</button>
						</div>
					</div>	
				</div>				
			</form>	
		</div>

		<div class="table-responsive">
			<table class="table table-condensed table-hover">
				<thead>
					<tr>
						<th>日期</th>
						<th>上班签到</th>
						<th>下班签退</th>
					</tr>
				</thead>
				<tbody> 		
					<?php if(is_array($attendList)): foreach($attendList as $key=>$record): ?><tr>
							<td><?php echo ($record['date']); ?></td>
							<td>
								<?php switch($record['clockin_status']): case "0": ?><button type="button" class="btn-clock btn btn-xs btn-success" disabled="disabled"><?php echo ($record['clockin']); ?></button><?php break;?>
									<?php default: ?>
										<button type="button" class="btn-clock btn btn-xs btn-danger" disabled="disabled"><?php echo ($record['clockin']); ?></button><?php endswitch;?>
							</td>
							<td>
								<?php switch($record['clockout_status']): case "0": ?><button type="button" class="btn-clock btn btn-xs btn-success" disabled="disabled"><?php echo ($record['clockout']); ?></button><?php break;?>
									<?php default: ?>
										<button type="button" class="btn-clock btn btn-xs btn-danger" disabled="disabled"><?php echo ($record['clockout']); ?></button><?php endswitch;?>
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
	$(function(){
		if(getCookie('page') != "home-attend"){
			setCookie('collapse',0);
		}

		$("[name='status'] option[value='<?php echo ($condition['status']); ?>']").attr("selected", "selected");
		$("[name='order'] option[value='<?php echo ($condition['order']); ?>']").attr("selected", "selected");
		$('.selectpicker').selectpicker();

		//搜索条件折叠
		if(getCookie('collapse') == 1){
			$('#query-condition-collapse').collapse('hide');
		}

		//日期选择器
		$('.form_date').datetimepicker({
	        language:  'zh-CN',
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
	});

	function onSearch(){
		$('#search-btn').button('loading');
		window.location.href = "<?php echo U('Main/attend');?>"+"&"+$("#query-form").serialize();
	}
</script>