<?php if (!defined('THINK_PATH')) exit();?>

<?php echo ($modalHtml); ?>
<?php echo ($queryHtml); ?>

<script type="text/javascript">
	$(function(){
		setCookie("page","manage-order");
	});	
</script>