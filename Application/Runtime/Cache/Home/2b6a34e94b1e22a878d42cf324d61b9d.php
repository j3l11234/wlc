<?php if (!defined('THINK_PATH')) exit();?>

<div class="modal fade" id="order-modal">
	<div class="modal-dialog" style="margin: 10px auto;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body">
				<form id="modal-form">
					<input type="hidden" id="modal-order-id" name="order_id">
					<input type="hidden" id="modal-is-agree" name="is_agree">
					<div class="row">	
						<div class="col-sm-6 form-div">
							<div class="form-label">人员姓名</div>
							<div class="input-group">
								<input type="input"  id="modal-user" class="form-control" readonly="" >
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">所属部门</div>
							<div class="input-group">
								<input type="input"  id='modal-department' class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">申请日期</div>
							<div class="input-group">
								<input type="input"  id="modal-datetime" class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">订餐地点</div>
							<div class="input-group">
								<input class="form-control" id="modal-place" type="text" name="place" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">加班原因</div>
							<div class="input-group">
								<input class="form-control" id="modal-reason" type="text" name="reason" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">加班人数</div>
							<div class="input-group">
								<input class="form-control" id="modal-number" type="text" name="number" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">每人餐标</div>
							<div class="input-group">
								<input class="form-control" id="modal-standard" type="text" name="standard" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<hr style="margin: auto;">
						</div>	
						<div class="col-sm-6 form-div">
							<div class="form-label">
							审批时间
							</div>
							<div class="input-group">
								<input type="input"  id='modal-check-datetime' class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">
							审批状态
							</div>
							<div class="" id="modal-check-status">
								<button type="button" id="modal-check-status1" class="btn btn-sm btn-info" disabled="disabled">等待审批</button>
								<button type="button" id="modal-check-status2" class="btn btn-sm btn-success" disabled="disabled">审批通过</button>
								<button type="button" id="modal-check-status3" class="btn btn-sm btn-danger" disabled="disabled">审批驳回</button>
								<span class="" id="modal-checker"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">
							审批批注
							</div>					
							<div class="textarea">
								<textarea type="" id="modal-check-comment" name="check_comment" class="form-control"  style="min-height:20px;"readonly="">
								</textarea>
							</div>
						</div>
					</div>
				</form>
				<div class="alert alert-danger" style="margin-bottom: 0px;"></div>
			</div>
			<div class="modal-footer" style="margin-top: auto; white-space: nowrap;">
				<button type="button" class="btn btn-primary btn-modal-view" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-default btn-modal-approbate btn-modal-report" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-success btn-modal-approbate" onclick="onApprobateSubmit(true)">审批通过</button>
				<button type="button" class="btn btn-danger btn-modal-approbate" onclick="onApprobateSubmit(false)">审批驳回</button>
				<button type="button" class="btn btn-success btn-modal-report" onclick="onReportSubmit()">确认销假</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">	
	function reset(data){
		$("#modal-check-status").children().hide();
		$("#modal-check-comment").attr("readonly","");
		$("#order-modal .modal-footer").children().hide();
		$("#order-modal .alert").hide();

		$("#modal-order-id").val(data.order_id);
		$("#modal-user").val(data.alias);
		$("#modal-department").val(data.department_name);
		$("#modal-datetime").val(data.datetime);
		$("#modal-place").val(data.place);
		$("#modal-reason").val(data.reason);
		$("#modal-number").val(data.number);
		$("#modal-standard").val(data.standard);
		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment);
	}

	function viewOrder(data){
		reset(data);
		$("#order-modal .modal-title").text("查看订餐申请");

		$(".btn-modal-view").show();	
		$('#order-modal').modal({backdrop:"static"});
	}

	
	<?php if($isPersonnel): ?>function approbateOrder(data){
			reset(data);
			$("#order-modal .modal-title").text("审批订餐申请");
			$("#modal-check-comment").removeAttr("readonly");

			$(".btn-modal-approbate").show();
			$('#order-modal').modal({backdrop:"static"});
		}

		function onApprobateSubmit(isAgree){	
			$('#modal-is-agree').val(isAgree?"true":"false");
			$.post("<?php echo U('Order/approbateOrder');?>", $("#modal-form").serialize(),
				function(data,status){
					if(typeof(data) == "string"){
						displayResult(false,"失败： "+data);
					}else{
						displayResult(true,"审批成功");
					}
				}).error(
					function() {
						displayResult(false,"失败： 超时");
					});
		}<?php endif; ?>

	function displayResult(success,text){
		$("#order-modal .alert").text(text);
		if(success)
			$("#order-modal .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#order-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#order-modal .alert").show();
		$("#order-modal .alert")
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100)
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100,function(){
				if(success)
					location.reload();
			});
		}
</script>