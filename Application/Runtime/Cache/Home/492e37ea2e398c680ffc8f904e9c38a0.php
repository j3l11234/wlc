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
						<div class="col-sm-12" style="text-align: center;">出差申请审批情况</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">审批时间</div>
							<div class="input-group">
								<input type="input"  id='modal-check-datetime' class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>
						</div>
						<div class="col-sm-6 form-div">
							<div class="form-label">审批状态</div>
							<div class="div-check-status">
								<button type="button" class="btn btn-sm btn-info btn-check-status1" disabled="disabled">等待审批</button>
								<button type="button" class="btn btn-sm btn-success btn-check-status2 btn-check-status4 btn-check-status5 btn-check-status6 btn-check-status7 btn-check-status8" disabled="disabled">申请通过</button>
								<button type="button" class="btn btn-sm btn-danger btn-check-status3" disabled="disabled">申请驳回</button>
								<span class="" id="modal-checker"></span>
							</div>
						</div>
						<div class="col-sm-12 form-div">
							<div class="form-label">审批批注</div>	
							<div class="input-group">
								<input type="input" id="modal-check-comment" name="check_comment" class="form-control" readonly="">
								<span class="input-group-addon"></span>
							</div>			
						</div>
						<div id="modal-summary-div">
							<div class="col-sm-12 form-div">
								<hr style="margin: 5px auto;">
							</div>
							<div class="col-sm-12">
								<div style="text-align: center;">出差/走访/办公对象联系方式</div>
								<div class="table-responsive">
									<table class="table table-condensed">
										<thead>
											<tr>
												<th>姓名</th>
												<th>性别</th>
												<th>单位</th>
												<th>职务</th>
												<th>联系方式</th>							
												<th>校友</th>
											</tr>
										</thead>
										<tbody id="modal-object-tbody">
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-sm-12 form-div">
								<div class="form-label">报销金额</div>
								<div class="input-group">
									<input type="input"  class="form-control" id="modal-cost" name="cost" readonly="">
									<span class="input-group-addon">￥</span>
								</div>
							</div>
							<div class="col-sm-12 form-div">
								<div class="form-label">总结</div>
								<div class="textarea">
								<textarea type="" class="form-control" id="modal-summary" name="summary" style="min-height:40px;" readonly=""> </textarea>
								</div>
							</div>
							<div class="col-sm-12" style="text-align: center;">出差总结审批情况</div>
							<div class="col-sm-6 form-div">
								<div class="form-label">审批时间</div>
								<div class="input-group">
									<input type="input"  id='modal-check2-datetime' class="form-control" readonly="">
									<span class="input-group-addon"></span>
								</div>
							</div>
							<div class="col-sm-6 form-div">
								<div class="form-label">审批状态</div>
								<div class="div-check-status">
									<button type="button" class="btn btn-sm btn-info btn-check-status4" disabled="disabled">等待审批</button>
									<button type="button" class="btn btn-sm btn-success btn-check-status5 btn-check-status7 btn-check-status8" disabled="disabled">审批通过</button>
									<button type="button" class="btn btn-sm btn-danger btn-check-status6" disabled="disabled">审批驳回</button>
									<span class="" id="modal-checker"></span>
								</div>
							</div>
							<div class="col-sm-12 form-div">
								<div class="form-label">审批批注</div>	
								<div class="input-group">
									<input type="input" id="modal-check2-comment" name="check2_comment" class="form-control" readonly="">
									<span class="input-group-addon"></span>
								</div>			
							</div>
							<div class="col-sm-12" style="text-align: center;">报销金额审批情况</div>
							<div class="col-sm-6 form-div">
								<div class="form-label">审批时间</div>
								<div class="input-group">
									<input type="input"  id='modal-check3-datetime' class="form-control" readonly="">
									<span class="input-group-addon"></span>
								</div>
							</div>
							<div class="col-sm-6 form-div">
								<div class="form-label">审批状态</div>
								<div class="div-check-status">
									<button type="button" class="btn btn-sm btn-info btn-check-status5" disabled="disabled">等待审批</button>
									<button type="button" class="btn btn-sm btn-success btn-check-status7" disabled="disabled">审批通过</button>
									<button type="button" class="btn btn-sm btn-danger btn-check-status8" disabled="disabled">审批驳回</button>
									<span class="" id="modal-checker"></span>
								</div>
							</div>
							<div class="col-sm-12 form-div">
								<div class="form-label">审批批注</div>	
								<div class="input-group">
									<input type="input" id="modal-check3-comment" name="check3_comment" class="form-control" readonly="">
									<span class="input-group-addon"></span>
								</div>			
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
	var check_status_base;
	function reset(data){
		$(".div-check-status").children().hide();
		$("#errand-modal .modal-footer").children().hide();
		$("#errand-modal .alert").hide();

		$("#modal-errand-id").val(data.errand_id);
		$("#modal-department").val(data.department_name);
		$("#modal-user").val(data.alias);
		$("#modal-date").val(data.date);
		$("#modal-start-date").val(data.start_date);
		$("#modal-end-date").val(data.end_date);
		$("#modal-place").val(data.place);	
		$("#modal-reason").val(data.reason);

		$(".btn-check-status"+data.check_status).show();
		$("#modal-check-datetime").val(data.check_datetime);
		$("#modal-check-comment").val(data.check_comment);
		$("#modal-checker").text(data.checker!=null ? "by "+data.checker : "").show();
		if(data.check_status >= 4){
			$("#modal-summary-div").show();

			$("#modal-cost").val(data.cost);
			$("#modal-summary").val(data.summary);
			$("#modal-check2-datetime").val(data.check2_datetime);
			$("#modal-check2-comment").val(data.check2_comment);
			$("#modal-checker2").text(data.checker2!=null ? "by "+data.checker2 : "").show();
			$("#modal-check3-datetime").val(data.check3_datetime);
			$("#modal-check3-comment").val(data.check3_comment);

			$("#modal-object-tbody").children().remove();
			try{
				objectList = JSON.parse(data.object);
				object_trList = new Array();
				for (var i = 0; i < objectList.length; i++){
					var object_tr = $(document.createElement("tr"));
					object_tr.append("<td>" + objectList [i].name + "</td>");
					object_tr.append("<td>" + objectList [i].sex + "</td>");
					object_tr.append("<td>" + objectList [i].department + "</td>");
					object_tr.append("<td>" + objectList [i].position + "</td>");
					object_tr.append("<td>" + objectList [i].contact + "</td>");
					object_tr.append("<td>" + objectList [i].alumni + "</td>");
					object_trList.push(object_tr);
				}
				$("#modal-object-tbody").append(object_trList);
			}catch(err){}
		}else
			$("#modal-summary-div").hide();		
	}

	function viewErrand(data){
		reset(data);
		$("#errand-modal .modal-title").text("查看申请");
		$("#modal-check-comment").attr("readonly","");
		$("#modal-check2-comment").attr("readonly","");
		$("#modal-check3-comment").attr("readonly","");
		$(".btn-modal-view").show();

		$('#errand-modal').modal({backdrop:"static"});
	}

	
	<?php if($isBoss OR $isPersonnel): ?>function approbateErrand(data){
			reset(data);
			$("#errand-modal .alert").hide();

			<?php if($isBoss): ?>if(data.check_status < 4){
					$("#errand-modal .modal-title").text("申请审批");
					$("#modal-check-comment").removeAttr("readonly");
					check_status_base = 1;
				}else if(data.check_status >= 4 || data.check_status <= 6){
					check_status_base = 4;
					$("#errand-modal .modal-title").text("总结审批");
					$("#modal-check2-comment").removeAttr("readonly");
				}
			<?php elseif($isPersonnel): ?>
				if(data.check_status == 5 || data.check_status == 7 || data.check_status == 8){
					check_status_base = 6;
					$("#errand-modal .modal-title").text("金额审批");
					$("#modal-check3-comment").removeAttr("readonly");
				}<?php endif; ?>
			
			$(".btn-modal-approbate").show();
			$('#errand-modal').modal({backdrop:"static"});
		}

		function onApprobateSubmit(isAgree){	
			$('#modal-is-agree').val(check_status_base + (isAgree? 1 : 2));
			postSubmit("<?php echo U('Errand/approbateErrand');?>",$("#modal-form").serialize(),"审批成功",null,$("#errand-modal"),"");
		}<?php endif; ?>

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