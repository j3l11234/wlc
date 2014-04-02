<?php if (!defined('THINK_PATH')) exit();?>

<div class="modal fade" id="leave-modal">
	<div class="modal-dialog" style="margin: 10px auto;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body">
				<form id="modal-form">
					<input type="hidden" id="modal-leave-id" name="leave_id">
					<input type="hidden" id="modal-is-agree" name="is_agree">
					<div class="row">	
						<div class="col-sm-6 form-div">
							<div class="form-label">人员姓名</div>
							<div class="input-group">
								<input type="input"  id="modal-user" class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">请假类型</div>
							<div class="input-group">
								<select id="modal-type" class="selectpicker" disabled="disabled">
									<option value="0">婚假</option>
									<option value="1">丧假</option>
									<option value="2">产假</option>
									<option value="3">事假</option>
									<option value="4">病假</option>
									<option value="5">休假</option>
									<option value="6">其他</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">所属部门</div>
							<div class="input-group">
								<input type="input"  id='modal-department' class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">申请日期</div>
							<div class="input-group">
								<input type="input"  id="modal-date" class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">开始日期</div>
							<div class="input-group date form_date"  data-date-format="yyyy-mm-dd hh">	
								<input class="form-control" size="16" type="text" id="modal-start-date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">结束日期</div>
							<div class="input-group date form_date" data-date-format="yyyy-mm-dd hh">
								<input class="form-control" size="16" type="text" id="modal-end-date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">请假原因</div>						
							<div class="textarea">
								<textarea type="" class="form-control" id="modal-reason" style="min-height:70px;" readonly="">
								</textarea>
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
								<textarea type="" id="modal-check-comment" name="check_comment" class="form-control" style="min-height:20px;"readonly="">
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
		$("#leave-modal .modal-footer").children().hide();
		$("#leave-modal .alert").hide();

		$("#modal-leave-id").val(data.leave_id);
		$("#modal-user").val(data.alias);
		$("#modal-type option[value='"+data.leave_type+"']").attr("selected", "selected");
		$("#modal-department").val(data.department_name);
		$("#modal-date").val(data.date);
		$("#modal-start-date").val(data.start_date+" "+data.start_time.substr(0,2));
		$("#modal-end-date").val(data.end_date+" "+data.end_time.substr(0,2));
		$("#modal-reason").val(data.reason);
		$("#modal-checker").text(data.checker!=null?"by "+data.checker:"").show();
		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment);

		$("#modal-form .selectpicker").selectpicker('refresh');
		$("#leave-modal .alert").removeClass("alert-success").addClass("alert-danger");
	}

	function viewLeave(data){
		reset(data);
		$("#leave-modal .modal-title").text("查看请假申请");

		$(".btn-modal-view").show();	
		$('#leave-modal').modal({backdrop:"static"});
	}

	
	<?php if($isBoss): ?>function approbateLeave(data){
			reset(data);
			$("#leave-modal .modal-title").text("审批请假申请");
			$("#modal-check-comment").removeAttr("readonly");

			$(".btn-modal-approbate").show();
			$('#leave-modal').modal({backdrop:"static"});
		}

		function onApprobateSubmit(isAgree){	
			$('#modal-is-agree').val(isAgree?"true":"false");
			postSubmit("<?php echo U('Leave/approbateLeave');?>",$("#modal-form").serialize(),"审批成功",null,$("#errand-modal"),"");
		}<?php endif; ?>

	
	<?php if($isPersonnel): ?>function reportLeave(data){
			reset(data);
			$("#leave-modal .modal-title").text("确认销假");
			$(".btn-modal-report").show();
			$('#leave-modal').modal({backdrop:"static"});
		}

		function onReportSubmit(){
			postSubmit("<?php echo U('Leave/reportLeave');?>",$("#modal-form").serialize(),"销假成功",null,$("#errand-modal"),"");
		}<?php endif; ?>	
</script>