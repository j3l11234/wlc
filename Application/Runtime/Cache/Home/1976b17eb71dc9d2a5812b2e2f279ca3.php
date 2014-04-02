<?php if (!defined('THINK_PATH')) exit();?> 

<?php echo ($modalHtml); ?>
<?php echo ($queryHtml); ?>
<?php echo ($addHtml); ?>

<script type="text/javascript">
	$(function(){
		setCookie("page","home-errandsum");
	});	
</script>