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
					<div class="row">	
						<div class="col-sm-6 form-div">
							<div class="form-label">人员姓名</div>
							<div class="input-group">
								<input type="input"  class="form-control" readonly="" value="<?php echo get_username();?>">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">所属部门</div>
							<div class="input-group">
								<input type="input"  class="form-control" readonly="" value="<?php echo get_department_name();?>">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">申请时间</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-datetime" readonly="" value="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">订餐地点</div>
							<div class="input-group">
								<input class="form-control" id="modal-place" type="text" name="place">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">加班原因</div>
							<div class="input-group">
								<input class="form-control" id="modal-reason" type="text" name="reason">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">加班人数</div>
							<div class="input-group">
								<input class="form-control" id="modal-number" type="text" name="number">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">每人餐标</div>
							<div class="input-group">
								<input class="form-control" id="modal-standard" type="text" name="standard">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<hr style="margin: auto;">
						</div>	
						<div class="col-sm-6 form-div">
							<div class="form-label">审批时间</div>
							<div class="input-group">
								<input type="input"  id='modal-check-datetime' class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">审批状态</div>
							<div class="" id="modal-check-status">
								<button type="button" id="modal-check-status1" class="btn btn-sm btn-info" disabled="disabled">等待审批<tton>
								<button type="button" id="modal-check-status2" class="btn btn-sm btn-success" disabled="disabled">审批通过<tton>
								<button type="button" id="modal-check-status3" class="btn btn-sm btn-danger" disabled="disabled">审批驳回<tton>
								<span class="" id="modal-checker"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">审批批注</div>					
							<div class="textarea">
								<textarea type="" id="modal-check-comment" class="form-control"  style="min-height:20px;"readonly="">
								</textarea>
							</div>
						</div>
					</div>
				</form>
				<div class="alert alert-danger" style="margin-bottom: 0px;">
				</div>
			</div>
			<div class="modal-footer" style="margin-top: auto;">
				<button type="button" class="btn btn-default btn-modal-edit btn-modal-delete" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary btn-modal-edit" onclick="onEditSubmit()">确认修改</button>
				<button type="button" class="btn btn-primary btn-modal-view" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-danger btn-modal-delete" onclick="onDeleteSubmit()">确认删除</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script type="text/javascript">	

	function reset(data){
		$("#modal-check-status").children().hide();
		$("#order-modal .modal-footer").children().hide();
		$("#order-modal .alert").hide();
		$("#order-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#modal-place").attr("readonly","");
		$("#modal-reason").attr("readonly","");
		$("#modal-number").attr("readonly","");
		$("#modal-standard").attr("readonly","");

		$("#modal-order-id").val(data.order_id);
		$("#modal-datetime").val(data.datetime);
		$("#modal-place").val(data.place);
		$("#modal-reason").val(data.reason);
		$("#modal-number").val(data.number);
		$("#modal-standard").val(data.standard);
		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment);		
	}

	//编辑订餐申请
	function editLeave(data){
		reset(data);

		$("#modal-place").removeAttr("readonly");
		$("#modal-reason").removeAttr("readonly");
		$("#modal-number").removeAttr("readonly");
		$("#modal-standard").removeAttr("readonly");

		$("#order-modal .modal-title").text("编辑订餐申请");
		$(".btn-modal-edit").show();
		$("#order-modal .alert").text("请谨慎修改！").show();
		$('#order-modal').modal({backdrop:"static"});
	}

	//查看订餐申请
	function viewLeave(data){
		reset(data);

		$("#order-modal .modal-title").text("查看订餐申请");
		$(".btn-modal-view").show();
		$('#order-modal').modal({backdrop:"static"});
	}

	//删除订餐申请
	function deleteLeave(data){
		reset(data);

		$("#order-modal .modal-title").text("编辑订餐申请");
		$(".btn-modal-delete").show();
		$("#order-modal .alert").text("您确定要删除该条记录吗？").show();
		$('#order-modal').modal({backdrop:"static"});
	}

	function onEditSubmit(){
		if($("#modal-place").val() == ""){
			displayReslt(false,"请输入订餐地点");
			return;
		}
		if($("#modal-reason").val() == ""){
			displayReslt(false,"请输入加班原因");
			return;
		}
		var number = $("#modal-number").val();
		if(parseInt(number) != number){
			displayReslt(false,"请输入订餐人数");
			return;
		}
		var standard = $("#modal-standard").val();
		if(parseInt(standard) != standard){
			displayReslt(false,"请输入每人标准");
			return;
		}

		$.post("<?php echo U('Order/editOrder');?>", $("#modal-form").serialize(),
		function(data,status){
			if(typeof(data) == "string"){
				displayResult(false,"失败： "+data);
			}else{
				displayResult(true,"提交成功");
			}
		}).error(
			function() {
				displayResult(false,"失败： 超时");
			});

	}

	function onDeleteSubmit(){
		$.post("<?php echo U('Order/deleteOrder');?>", $("#modal-form").serialize(),
		function(data,status){
			if(typeof(data) == "string"){
				displayResult(false,"失败： "+data);
			}else{
				displayResult(true,"删除成功");
			}
		}).error(
			function() {
				displayResult(false,"失败： 超时");
			});
	}
		
	function displayResult(success,text){
		$("#order-modal .alert").text(text);
		if(success)
			$("#order-modal .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#order-modal .alert").removeClass("alert-success").addClass("alert-danger");

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