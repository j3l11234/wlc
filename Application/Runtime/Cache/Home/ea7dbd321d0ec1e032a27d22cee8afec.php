<?php if (!defined('THINK_PATH')) exit();?>

<?php echo ($queryHtml); ?>
<?php echo ($addHtml); ?>
<?php echo ($modalHtml); ?>

<script type="text/javascript">
	$(function(){
		setCookie("page","home-order");
	});	
</script>