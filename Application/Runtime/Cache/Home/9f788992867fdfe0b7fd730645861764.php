<?php if (!defined('THINK_PATH')) exit();?> 
 

<div class="modal fade" id="errand-modal">
	<div class="modal-dialog" style="margin: 10px auto;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body">
				<form id="modal-form">
					<input type="hidden" id="modal-errand-id" name="errand_id">
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
								<input type="input" class="form-control" readonly="" value="<?php echo get_department_name();?>">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">申请日期</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-date" readonly>
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="clearfix visible-lg visible-md visible-sm"></div>
						<div class="col-sm-6 form-div">
							<div class="form-label">出发日期</div>
							<div class="input-group date form_date"  data-date-format="yyyy-mm-dd">	
								<input class="form-control" type="text" id="modal-start-date" name="start_date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">返回日期</div>
							<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
								<input class="form-control" type="text" id="modal-end-date" name="end_date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">出差地点</div>
							<div class="input-group">
								<input type="input"  class="form-control" id="modal-place" name="place" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">出差事由</div>
							<div class="input-group">
								<input type="input"  class="form-control" id="modal-reason" name="reason" readonly="">
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
								<button type="button" id="modal-check-status1" class="btn btn-sm btn-info" disabled="disabled">等待审批</button>
								<button type="button" id="modal-check-status2" class="btn btn-sm btn-success" disabled="disabled">审批通过</button>
								<button type="button" id="modal-check-status3" class="btn btn-sm btn-danger" disabled="disabled">审批驳回</button>
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
			<div class="modal-footer" style="margin-top: auto; white-space: nowrap;">
				<button type="button" class="btn btn-default btn-modal-edit btn-modal-delete btn-modal-return" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary btn-modal-edit" onclick="onEditSubmit()">确认修改</button>
				<button type="button" class="btn btn-primary btn-modal-view" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-danger btn-modal-delete" onclick="onDeleteSubmit()">确认删除</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">	

	function reset(data){
		$("#modal-check-status").children().hide();
		$("#errand-modal .modal-footer").children().hide();
		$("#errand-modal .alert").hide();
		$("#errand-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#modal-errand-id").val(data.errand_id);
		$("#modal-date").val(data.date);
		$("#modal-start-date").val(data.start_date);
		$("#modal-end-date").val(data.end_date);
		$("#modal-place").val(data.place);
		$("#modal-reason").val(data.reason);

		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment);
		$("#modal-checker").text(data.checker!=null?"by "+data.checker:"").show();
	}

	//查看申请
	function viewErrand(data){
		reset(data);

		$("#errand-modal .modal-title").text("查看申请");
		$(".btn-modal-view").show();
		$('#errand-modal').modal({backdrop:"static"});
	}

	//删除借用申请
	function deleteErrand(data){
		reset(data);

		$("#errand-modal .modal-title").text("删除申请");
		$(".btn-modal-delete").show();
		$("#errand-modal .alert").text("您确定要删除该条记录吗？");
		$("#errand-modal .alert").show();
		$('#errand-modal').modal({backdrop:"static"});
	}

	function onDeleteSubmit(){
		$.post("<?php echo U('Errand/deleteErrand');?>", $("#modal-form").serialize(),
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
		$("#errand-modal .alert").text(text);
		if(success)
			$("#errand-modal .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#errand-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#errand-modal .alert").show();
		$("#errand-modal .alert")
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100)
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100,function(){
				if(success)
					location.reload();
			});
		}
</script>