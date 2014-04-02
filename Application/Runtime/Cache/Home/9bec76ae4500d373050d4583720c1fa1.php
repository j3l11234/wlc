<?php if (!defined('THINK_PATH')) exit();?>

<div class="panel panel-warning">
  <div class="panel-heading">
    <h4 class="panel-title">
      <a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
        签到
      </a>
    </h4>
  </div>
  <div id="collapseOne" class="panel-collapse collapse in">
    <div class="panel-body">
      <div class="row">
        <div class="col-sm-6">
        <h1>上班签到 <small id="clockin-status">未签到</small></h1>
        <button type="button" class="btn btn-danger btn-lg" id="clockin-button" onclick="attend(0)">点我签到</button>
        </div>
        <div class="col-sm-6">
          <h1>下班签退 <small id="clockout-status">未签退</small></h1>
          <button type="button" class="btn btn-danger btn-lg" id="clockout-button" onclick="attend(1)">点我签退</button>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        var needClock = <?php echo ($needClock); ?>;
        var canClockOut = <?php echo ($canClockOut); ?>;
                         
        if(canClockOut == false){
            $("#clockout-button")
            .attr("disabled","disabled")
            .text("未到下班时间");  
        }
                         
        //分析签到状态                 
        date = <?php echo ($attendStatus); ?>;
        attended(date,0);
        attended(date,1);
        
        //分析是否签到
        if(needClock == 0){
            $("#clockin-status").text("无需");
            $("#clockin-button").removeClass("btn-danger")
            .addClass("btn-success")
            .attr("disabled","disabled")
            .text('您无需签到'); 
            $("#clockout-status").text("无需");
            $("#clockout-button").removeClass("btn-danger")
            .addClass("btn-success")
            .attr("disabled","disabled")
            .text('您无需签到'); 
        }
    });
   
    function attend(clockType){
        $.post('<?php echo U('Attend/attend');?>', {clockType:clockType},
            function(data,status){
                if(typeof(data) == "string")
                    alert("失败");
                else
                    attended(data,clockType);
            });
    }
    
    function attended(data,clockType){
        if(clockType == 0 && data.clockin != null){
            $("#clockin-status").text("已签到");
            $("#clockin-button").removeClass("btn-danger")
            .addClass("btn-success")
            .attr("disabled","disabled")
            .text(data.clockin);      
        }else if(clockType == 1 && data.clockout != null){
            $("#clockout-status").text("已签退");
            $("#clockout-button").removeClass("btn-danger")
            .addClass("btn-success")
            .attr("disabled","disabled")
            .text(data.clockout);   
        }
    }
</script>