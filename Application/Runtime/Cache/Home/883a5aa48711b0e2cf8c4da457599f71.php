<?php if (!defined('THINK_PATH')) exit();?> 

 
<div class="modal fade" id="modal-add-result">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">提交结果</h4>
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

 
<div class="panel panel-success" id="append-panel" style="display:none;">
	<div class="panel-heading">
		<h3 class="panel-title"></h3>
	</div>
	<div class="panel-body">
		<form id="append-form">
			<input type="hidden" id="append-order-id" name="order_id">
			<div class="row">	
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">人员姓名</div>
					<div class="input-group">
						<input type="input"  class="form-control" readonly="" value="<?php echo get_username();?>">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">所属部门</div>
					<div class="input-group">
						<input type="input"  class="form-control" readonly="" value="<?php echo get_department_name();?>">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">申请日期</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-datetime" readonly="">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-12 form-div">
					<div class="form-label">订餐地点</div>
					<div class="input-group">
						<input class="form-control" id="append-place" name="place">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-12 form-div">
					<div class="form-label">加班原因</div>
					<div class="input-group">
						<input class="form-control" id="append-reason" name="reason">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">加班人数</div>
					<div class="input-group">
						<input class="form-control" id="append-number" name="number">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">每人餐标</div>
					<div class="input-group">
						<input class="form-control" id="append-standard" name="standard">
						<span class="input-group-addon"></span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 form-div" style="text-align: center;">
					<br>
						<button style="min-width:150px;width:30%;" type="button" id="append-submit" data-loading-text="提交中。。" class="btn btn-success">
							提交
						</button>
				</div>	
			</div>
		</form>
	</div>
</div>



<script type="text/javascript">
function addOrder(){	
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('add');});

		$("#append-panel .panel-title").text("提交申请");
		$("#append-order-id").val("");
		$("#append-datetime").val(new Date().format("yyyy-MM-dd"));
		$("#append-place").val("");
		$("#append-reason").val("");
		$("#append-number").val("");
		$("#append-standard").val("");

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	//编辑签到申请
	function editOrder(data){
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('edit');});

		$("#append-panel .panel-title").text("修改申请");
		$("#append-order-id").val(data.order_id);
		$("#append-datetime").val(data.datetime);
		$("#append-place").val(data.place);
		$("#append-reason").val(data.reason);
		$("#append-number").val(data.number);
		$("#append-standard").val(data.standard);

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	function onAdd_EditSubmit(mode){
		if($("#append-place").val() == ""){
			displayAddReslt(false,"请输入订餐地点");
			return;
		}
		if($("#append-reason").val() == ""){
			displayAddReslt(false,"请输入加班原因");
			return;
		}
		var number = $("#append-number").val();
		if(parseInt(number) != number){
			displayAddReslt(false,"请输入订餐人数");
			return;
		}
		var standard = $("#append-standard").val();
		if(parseInt(standard) != standard){
			displayAddReslt(false,"请输入每人标准");
			return;
		} 		
	
		switch(mode){
			case "add":
				postSubmit("<?php echo U('Order/addOrder');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
				break;
			case "edit":
				postSubmit("<?php echo U('Order/editOrder');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
				break;
		}
	}		
</script>