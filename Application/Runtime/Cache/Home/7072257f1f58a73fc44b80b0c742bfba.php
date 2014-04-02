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
			<input type="hidden" id="append-errandsum-id" name="errandsum_id">
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
				<div class="clearfix visible-md visible-sm"></div>
				<div class="col-sm-6 form-div">
					<div class="form-label">出发日期</div>
					<div class="input-group date form_date"  data-date-format="yyyy-mm-dd">	
						<input class="form-control" type="text" id="append-start-date" name="start_date" readonly>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">返回日期</div>
					<div class="input-group date form_date" data-date-format="yyyy-mm-dd">
						<input class="form-control" type="text" id="append-end-date" name="end_date" readonly>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">出差地点</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-place" name="place">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-6 form-div">
					<div class="form-label">出差事由</div>
					<div class="input-group">
						<input type="input"  class="form-control" id="append-reason" name="reason">
						<span class="input-group-addon"></span>
					</div>
				</div>
				<div class="col-sm-12 form-div">
					<hr style="margin: auto;">
				</div>
				<div class="col-sm-12 form-div">
					<div class="form-label">总结</div>
					<div class="textarea">
					<textarea type="" class="form-control" id="modal-summary" name="summary" style="min-height:40px;" readonly> </textarea>
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
	var mode;
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

    	$('#append-submit').click(function(){
    		if($("#append-start-date").val() == ""){
				displayReslt(false,"请选择出发时间");
				return;
			}
			if($("#append-end-date").val() == ""){
				displayReslt(false,"请选择返回时间");
				return;
			}	
			if($("#append-place").val() == ""){
				displayReslt(false,"请填写出差地点");
				return;
			}	
			if($("#append-reason").val().length < 3){
				displayReslt(false,"请认真填写出差原因");
				return;
			}	 		
			$('#append-submit').button('loading');

		//$("#append-reason").val(JSON.stringify(student));

			switch(mode){
				case "add":
				  var submitUrl = "<?php echo U('Errandsum/addErrandsum');?>";
				  break;
				case "edit":
				  var submitUrl = "<?php echo U('Errandsum/editErrandsum');?>";
				  break;
			}

			$.post(submitUrl, $("#append-form").serialize(),
			function(data,status){
				if(typeof(data) == "string"){
					displayReslt(false,"失败： "+data);
				}else{
					displayReslt(true,"提交成功");
				}
			}).error(
				function() {
					displayReslt(false,"网络错误");
				})
	    });		
	});
	
	function addErrandsum(){	
		mode = "add";
		$("#append-panel .panel-title").text("提交申请");

		$("#append-errandsum-id").val("");
		$("#append-date").val(new Date().format("yyyy-MM-dd"));
		$("#append-start-date").val("");
		$("#append-end-date").val("");
		$("#append-place").val("");
		$("#append-reason").val("");

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	//编辑签到申请
	function editErrandsum(data){
		mode = "edit";
		$("#append-panel .panel-title").text("修改申请");

		$("#append-errandsum-id").val(data.errandsum_id);
		$("#append-date").val(data.date);
		$("#append-start-date").val(data.start_date);
		$("#append-end-date").val(data.end_date);
		$("#append-place").val(data.place);
		$("#append-reason").val(data.reason);

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}


	//显示服务器返回结果
	function displayReslt(success,text){
		$("#modal-add-result .alert").text(text);
		if(success)
			$("#modal-add-result .alert").removeClass("alert-danger").addClass("alert-success");
		else
			$("#modal-add-result .alert").removeClass("alert-success").addClass("alert-danger");
		alertAnimate();
		
		$("#modal-add-result").modal('show');
			$("#modal-add-result").on("hidden.bs.modal", function (e) {
			if(success)
				location.reload();
			else
				$('#append-submit').button('reset');
		});
	
		function alertAnimate(){
			$('#modal-add-result .alert')
				.animate({textIndent:10}, 100)
				.animate({textIndent:0}, 100)
				.animate({textIndent:10}, 100)
				.animate({textIndent:0}, 100);
		}
	}		
</script>