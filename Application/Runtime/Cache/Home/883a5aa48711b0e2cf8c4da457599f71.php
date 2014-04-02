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

 
<div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title">
			<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapse-add">提交新申请</a>
		</h3>
	</div>
	<div id="collapse-add" class="panel-collapse collapse">
		<div class="panel-body">
			<form id="add-form">
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
							<input type="input"  class="form-control" readonly=""  value="<?php echo date('Y-m-d');?>">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-sm-12 form-div">
						<div class="form-label">订餐地点</div>
						<div class="input-group">
							<input class="form-control" size="16" type="text" name="place">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-sm-12 form-div">
						<div class="form-label">加班原因</div>
						<div class="input-group">
							<input class="form-control" size="16" type="text" name="reason">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-sm-6 form-div">
						<div class="form-label">加班人数</div>
						<div class="input-group">
							<input class="form-control" size="16" type="text" name="number">
							<span class="input-group-addon"></span>
						</div>
					</div>
					<div class="col-sm-6 form-div">
						<div class="form-label">每人餐标</div>
						<div class="input-group">
							<input class="form-control" size="16" type="text" name="standard">
							<span class="input-group-addon"></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 form-div" style="text-align: center;">
						<br>
						<button style="min-width:150px;width:30%;" type="button" id="submit" onclick="onAddSubmit()" data-loading-text="提交中。。" class="btn btn-success">提交</button>
					</div>	
				</div>
			</form>
		</div>
	</div>
</div>



<script type="text/javascript">
	//提交表单
	function onAddSubmit(){
		if($("#add-form input[name='place']").val() == ""){
			displayAddReslt(false,"请输入订餐地点");
			return;
		}
		if($("#add-form input[name='reason']").val() == ""){
			displayAddReslt(false,"请输入加班原因");
			return;
		}
		var number = $("#add-form input[name='number']").val();
		if(parseInt(number) != number){
			displayAddReslt(false,"请输入订餐人数");
			return;
		}
		var standard = $("#add-form input[name='standard']").val();
		if(parseInt(standard) != standard){
			displayAddReslt(false,"请输入每人标准");
			return;
		}
		
		$('#add-form #submit').button('loading');
		

		$.post('<?php echo U('Order/addOrder');?>', $("#add-form").serialize(),
		function(data,status){
			if(typeof(data) == "string"){
				displayAddReslt(false,"失败： "+data);
			}else{
				displayAddReslt(true,"提交成功");
			}
		}).error(
			function() {
				displayAddReslt(false,"");
			});
	}
	
	//显示服务器返回结果
	function displayAddReslt(success,text){
		$("#modal-add-result .alert").text(text);
		if(success)
			$("#modal-add-result .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#modal-add-result .alert").removeClass("alert-success").addClass("alert-danger");
		
		$("#modal-add-result").modal('show');
			$("#modal-add-result").on("hidden.bs.modal", function (e) {
			if(success)
				location.reload();
			else
				$('#add-form #submit').button('reset');
		});
	}		
</script>