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
			<input type="hidden" id="append-borrow-id" name="borrow_id">
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
						<input type="input"  class="form-control" id="append-date" readonly="">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">物品名称</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-goods-name" name="goods_name">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">物品配件</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-goods-parts" name="goods_parts">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 form-div">
					<div class="form-label">物品数量</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-goods-number" name="goods_number">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">借出日期</div>
					<div class="input-group date form_date"  data-date-format="yyyy-mm-dd">	
						<input class="form-control" type="text" id="append-start-date" name="start_date" readonly>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">归还日期</div>
					<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
						<input class="form-control" type="text" id="append-end-date" name="end_date" readonly>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
				</div>
				<div class="col-sm-12 form-div">
					<div class="form-label">借用原因和具体用途</div>
					<div class="textarea">
					<textarea type="" class="form-control" id="append-reason" name="reason" style="min-height:100px;"> </textarea>
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
	$(function(){
		//初始化日期选择插件
		$('#append-form .form_date').datetimepicker({  
			language:"zh-CN",
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView:2,
			forceParse: 0
    	});	
	});
	
	function addBorrow(){	
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('add');});

		$("#append-panel .panel-title").text("提交申请");
		$("#append-borrow-id").val("");
		$("#append-date").val(new Date().format("yyyy-MM-dd"));
		$("#append-goods-name").val("");
		$("#append-goods-parts").val("");
		$("#append-goods-number").val("");
		$("#append-start-date").val("");
		$("#append-end-date").val("");
		$("#append-reason").val("");

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	//编辑签到申请
	function editBorrow(data){
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('edit');});

		$("#append-panel .panel-title").text("修改申请");
		$("#append-borrow-id").val(data.borrow_id);
		$("#append-date").val(data.date);
		$("#append-goods-name").val(data.goods_name);
		$("#append-goods-parts").val(data.goods_parts);
		$("#append-goods-number").val(data.goods_number);
		$("#append-start-date").val(data.start_date);
		$("#append-end-date").val(data.end_date);
		$("#append-reason").val(data.reason);

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	function onAdd_EditSubmit(mode){
		if($("#append-start-date").val() == ""){
			displayReslt(false,"请选择借出时间");
			return;
		}
		if($("#append-end-date").val() == ""){
			displayReslt(false,"请选择归还时间");
			return;
		}	
		if($("#append-goods-name").val() == ""){
			displayReslt(false,"请填写物品名称");
			return;
		}	
		if($("#append-reason").val().length < 3){
			displayReslt(false,"请认真填写借用原因");
			return;
		}	 		
	
		switch(mode){
			case "add":
				postSubmit("<?php echo U('Borrow/addBorrow');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
				break;
			case "edit":
				postSubmit("<?php echo U('Borrow/editBorrow');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
				break;
		}
	}
</script>