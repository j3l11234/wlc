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
								<input type="input" class="form-control" id="modal-date" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">物品名称</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-name" name="goods_name" readonly>
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">物品配件</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-parts" name="goods_parts" readonly>
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">物品数量</div>
							<div class="input-group">
								<input type="input" class="form-control" id="modal-goods-number" name="goods_number" readonly>
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">借出日期</div>
							<div class="input-group date form_date"  data-date-format="yyyy-mm-dd">	
								<input class="form-control" type="text" id="modal-start-date" name="start_date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">归还日期</div>
							<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
								<input class="form-control" type="text" id="modal-end-date" name="end_date" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">借用原因和具体用途</div>
							<div class="textarea">
							<textarea type="" class="form-control" id="modal-reason" name="reason" style="min-height:40px;" readonly> </textarea>
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
				<button type="button" class="btn btn-primary btn-modal-return" onclick="onReturnSubmit()">确认归还</button>
				<button type="button" class="btn btn-primary btn-modal-view" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-danger btn-modal-delete" onclick="onDeleteSubmit()">确认删除</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">	

	function reset(data){
		$("#modal-check-status").children().hide();
		$("#borrow-modal .modal-footer").children().hide();
		$("#borrow-modal .alert").hide();
		$("#borrow-modal .alert").removeClass("alert-success").addClass("alert-danger");

		$("#modal-borrow-id").val(data.borrow_id);
		$("#modal-date").val(data.date);
		$("#modal-start-date").val(data.start_date);
		$("#modal-end-date").val(data.end_date);
		$("#modal-reason").val(data.reason);
		$("#modal-goods-name").val(data.goods_name);
		$("#modal-goods-parts").val(data.goods_parts);
		$("#modal-goods-number").val(data.goods_number);

		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-status"+data.check_status).show();
		$("#modal-check-comment").val(data.check_comment);

		$("#modal-form .selectpicker").selectpicker('refresh');	
	}

	//查看申请
	function viewBorrow(data){
		reset(data);

		$("#borrow-modal .modal-title").text("查看申请");
		$(".btn-modal-view").show();
		$('#borrow-modal').modal({backdrop:"static"});
	}

	//删除借用申请
	function deleteBorrow(data){
		reset(data);

		$("#borrow-modal .modal-title").text("删除申请");
		$(".btn-modal-delete").show();
		$("#borrow-modal .alert").text("您确定要删除该条记录吗？");
		$("#borrow-modal .alert").show();
		$('#borrow-modal').modal({backdrop:"static"});
	}

	//借用归还
	function returnBorrow(data){
		reset(data);

		$("#borrow-modal .modal-title").text("借用归还");
		$(".btn-modal-return").show();
		$('#borrow-modal').modal({backdrop:"static"});
	}

	function onDeleteSubmit(){
		postSubmit("<?php echo U('Borrow/deleteBorrow');?>",$("#modal-form").serialize(),"删除成功",null,$("#borrow-modal"),"");
	}
	
	function onReturnSubmit(){
		postSubmit("<?php echo U('Borrow/returnBorrow');?>",$("#modal-form").serialize(),"删除成功",null,$("#borrow-modal"),"");
	}
</script>