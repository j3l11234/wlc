<?php if (!defined('THINK_PATH')) exit();?> 

 


 
<div class="panel panel-success" id="append-panel" style="display:none;">
	<div class="panel-heading">
		<h3 class="panel-title"></h3>
	</div>
	<div class="panel-body">
		<form id="append-form">
			<input type="hidden" id="append-errand-id" name="errand_id">
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
				<div id="append-summary-div">
					<div class="col-sm-12 form-div">
						<hr style="margin: 5px auto;">
					</div>
					<div class="col-sm-12">
						<div style="text-align: center;">出差/走访/办公对象联系方式</div>
						<div class="table-responsive">
							<input type="hidden" id="append-object" name="object">
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
								<tbody id="append-object-tbody">
									<tr id="table-object-input">
										<td>
											<input class="form-control" id="table-name-input" type="text">
										</td>
										<td>
											<input class="form-control" id="table-sex-input" type="text">
										</td>
										<td>
											<input class="form-control" id="table-department-input" type="text">
										</td>
										<td>
											<input class="form-control" id="table-position-input" type="text">
										</td>
										<td>
											<input class="form-control" id="table-contact-input" type="text">
										</td>
										<td>
											<input class="form-control" id="table-alumni-input" type="text">
										</td>
										<td>
											<button type="button" class="btn btn-success" id="test" onclick="addObjToTable(this)">添加</button>
										</td>	
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 form-div">
						<div class="form-label">报销金额</div>
						<div class="input-group">
							<input type="input"  class="form-control" id="append-cost" name="cost">
							<span class="input-group-addon">￥</span>
						</div>
					</div>
					<div class="col-sm-12 form-div">
						<div class="form-label">总结</div>
						<div class="textarea">
						<textarea type="" class="form-control" id="append-summary" name="summary" style="min-height:40px;"> </textarea>
						</div>
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
	var objectList;

	$(function(){
	});
	
	function setApplyFormEnable(enable){
		if(enable){
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
			$("#append-place").removeAttr("readonly");
			$("#append-reason").removeAttr("readonly");
		}else{
			$('#append-form .form_date').datetimepicker('remove');
			$("#append-place").attr("readonly","");
			$("#append-reason").attr("readonly","");
		}

	}
	//添加申请
	function addErrand(){
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('add');});

		setApplyFormEnable(true);
		$("#append-summary-div").hide();
		$("#append-panel .panel-title").text("提交申请");
		$("#append-errand-id").val("");
		$("#append-date").val(new Date().format("yyyy-MM-dd"));
		$("#append-start-date").val("");
		$("#append-end-date").val("");
		$("#append-place").val("");
		$("#append-reason").val("");

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	//编辑申请
	function editErrand(data){
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onAdd_EditSubmit('edit');});

		setApplyFormEnable(true);
		$("#append-summary-div").hide();
		$("#append-panel .panel-title").text("修改申请");
		$("#append-errand-id").val(data.errand_id);
		$("#append-date").val(data.date);
		$("#append-start-date").val(data.start_date);
		$("#append-end-date").val(data.end_date);
		$("#append-place").val(data.place);
		$("#append-reason").val(data.reason);

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	function onAdd_EditSubmit(mode){
	  	if($("#append-start-date").val() == ""){
	  		showModalResult(false,"提示","请选择出发时间",false);
			return;
		}
		if($("#append-end-date").val() == ""){
			showModalResult(false,"提示","请选择返回时间",false);
			return;
		}	
		if($("#append-place").val() == ""){
			showModalResult(false,"提示","请填写出差地点",false);
			return;
		}	
		if($("#append-reason").val().length < 3){
			showModalResult(false,"提示","请填写出差原因",false);
			return;
		}
	
		switch(mode){
			case "add":
				postSubmit("<?php echo U('Errand/addErrand');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
				break;
			case "edit":
				postSubmit("<?php echo U('Errand/editErrand');?>",$("#append-form").serialize(),"修改成功",$('#append-submit'),null,"修改结果");
				break;
		}
	
	}

	function summarizeErrand(data){
		$("#append-submit").unbind();
		$("#append-submit").click(function(){onSummarizeSubmit('edit');});

		setApplyFormEnable(false);
		$("#append-summary-div").show();
		$("#append-panel .panel-title").text("出差总结");
		$("#append-errand-id").val(data.errand_id);
		$("#append-date").val(data.date);
		$("#append-start-date").val(data.start_date);
		$("#append-end-date").val(data.end_date);
		$("#append-place").val(data.place);
		$("#append-reason").val(data.reason);
		$("#append-cost").val(data.cost);
		$("#append-summary").val(data.summary);

		$("#table-object-input").siblings().remove();
		try{
			var objectList = JSON.parse(data.object);
			var object_trList = new Array();
			for (var i = 0; i < objectList.length; i++){
				var object_tr = $(document.createElement("tr"));
				object_tr.append("<td>" + objectList[i].name + "</td>");
				object_tr.append("<td>" + objectList[i].sex + "</td>");
				object_tr.append("<td>" + objectList[i].department + "</td>");
				object_tr.append("<td>" + objectList[i].position + "</td>");
				object_tr.append("<td>" + objectList[i].contact + "</td>");
				object_tr.append("<td>" + objectList[i].alumni + "</td>");
				object_tr.append('<td><button type="button" class="btn btn-xs btn-danger" onclick="delObjFromTable(this)">删除</button></td>');
				object_trList.push(object_tr);
			}
			$('#append-object-tbody').children().last().before(object_trList);
		}
		catch(err){}

		$("#append-panel").show();
		window.scrollTo(0,$("#append-panel").offset().top);
	}

	function onSummarizeSubmit(){
		if($("#append-summary").val().length < 3){
			showModalResult(false,"提示","请填写出差总结",false);
			return;
		}
		if($("#append-cost").val() == ''){
			showModalResult(false,"提示","请填写报销金额",false);
			return;
		}

		var objectList_trList = $('#append-object-tbody').children();
		var objectList = new Array();
		for (var i = 0; i < objectList_trList.length-1; i++) {
			var object_tdList = $(objectList_trList[i]).children();
			object = new Object();
			object.name = $(object_tdList[0]).text();
			object.sex = $(object_tdList[1]).text();
			object.department = $(object_tdList[2]).text();
			object.position = $(object_tdList[3]).text();
			object.contact = $(object_tdList[4]).text();
			object.alumni = $(object_tdList[5]).text();
			objectList.push(object);
		};
		$("#append-object").val(JSON.stringify(objectList));
		postSubmit("<?php echo U('Errand/summarizeErrand');?>",$("#append-form").serialize(),"提交成功",$('#append-submit'),null,"提交结果");
	}

	function addObjToTable(button){
		var object_tdList = $(button).parent().siblings();

		if($("#table-name-input").val() == "" ||
			$("#table-sex-input").val() == "" ||
			$("#table-department-input").val() == "" ||
			$("#table-position-input").val() == "" ||
			$("#table-contact-input").val() == "" ||
			$("#table-alumni-input").val() == "" ){
			alert("请完整填写对象信息");
			return
		}
		
		var object_tr = $(document.createElement("tr"));
		object_tr.append("<td>" + $("#table-name-input").val() + "</td>");
		object_tr.append("<td>" + $("#table-sex-input").val() + "</td>");
		object_tr.append("<td>" + $("#table-department-input").val() + "</td>");
		object_tr.append("<td>" + $("#table-position-input").val() + "</td>");
		object_tr.append("<td>" + $("#table-contact-input").val() + "</td>");
		object_tr.append("<td>" + $("#table-alumni-input").val() + "</td>");
		object_tr.append('<td><button type="button" class="btn btn-xs btn-danger" onclick="delObjFromTable(this)">删除</button></td>');
		$(button).parent().parent().last().before(object_tr);

		$("#table-name-input").val("");
		$("#table-sex-input").val("");
		$("#table-department-input").val("");
		$("#table-position-input").val("");
		$("#table-contact-input").val("");
		$("#table-alumni-input").val("");	
	}

	function delObjFromTable(button){
		$(button).parent().parent().remove();
	}
</script>