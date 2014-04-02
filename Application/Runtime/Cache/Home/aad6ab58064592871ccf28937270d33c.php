<?php if (!defined('THINK_PATH')) exit();?>

<div class="modal fade" id="borrow-modal">
	<div class="modal-dialog" style="margin: 10px auto;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body">
				<form id="modal-form">
					<input type="hidden" id="modal-borrow-id" name="borrow_id">
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
							<div class="form-label">物品名称</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-name" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">物品配件</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-parts" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">物品数量</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-number" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">借出日期</div>
							<div class="input-group date form_date"  data-date-format="yyyy-mm-dd">	
								<input class="form-control" type="text" id="modal-start-date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">归还日期</div>
							<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
								<input class="form-control" type="text" id="modal-end-date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">借用原因和具体用途</div>
							<div class="textarea">
							<textarea type="" class="form-control" id="modal-reason" style="min-height:40px;" readonly> </textarea>
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
								<textarea type="" id="modal-check-comment"  name="check_comment" class="form-control"  style="min-height:20px;"readonly="">
								</textarea>
							</div>
						</div>
					</div>
				</form>
				<div class="alert alert-danger" style="margin-bottom: 0px;"></div>
			</div>
			<div class="modal-footer" style="margin-top: auto; white-space: nowrap;">
				<button type="button" class="btn btn-primary btn-modal-view" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-default btn-modal-approbate" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-success btn-modal-approbate" onclick="onApprobateSubmit(true)">审批通过</button>
				<button type="button" class="btn btn-danger btn-modal-approbate" onclick="onApprobateSubmit(false)">审批驳回</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">	
	function reset(data){
		$("#modal-check-status").children().hide();
		$("#modal-check-comment").attr("readonly","");
		$("#borrow-modal .modal-footer").children().hide();
		$("#borrow-modal .alert").hide();
		$("#borrow-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#modal-borrow-id").val(data.borrow_id);
		$("#modal-department").val(data.department_name);
		$("#modal-user").val(data.alias);
		$("#modal-date").val(data.date);
		$("#modal-start-date").val(data.start_date);
		$("#modal-end-date").val(data.end_date);
		$("#modal-reason").val(data.reason);
		$("#modal-goods-name").val(data.goods_name);
		$("#modal-goods-parts").val(data.goods_parts);
		$("#modal-goods-number").val(data.goods_number);	

		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment)
	}

	function viewBorrow(data){
		reset(data);
		$("#borrow-modal .modal-title").text("查看申请");

		$(".btn-modal-view").show();	
		$('#borrow-modal').modal({backdrop:"static"});
	}

	
	<?php if($isPersonnel): ?>function approbateBorrow(data){
			reset(data);
			$("#borrow-modal .modal-title").text("审批申请");
			$("#modal-check-comment").removeAttr("readonly");

			$(".btn-modal-approbate").show();
			$('#borrow-modal').modal({backdrop:"static"});
		}

		function onApprobateSubmit(isAgree){	
			$('#modal-is-agree').val(isAgree?"true":"false");
			$.post("<?php echo U('Borrow/approbateBorrow');?>", $("#modal-form").serialize(),
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
		$("#borrow-modal .alert").text(text);
		if(success)
			$("#borrow-modal .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#borrow-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#borrow-modal .alert").show();
		$("#borrow-modal .alert")
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100)
			.animate({textIndent:10}, 100)
			.animate({textIndent:0}, 100,function(){
				if(success)
					location.reload();
			});
		}
</script>