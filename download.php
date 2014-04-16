<?php
$path=urldecode($_GET['path']);
if (stripos($path,"Uploads/Attachments/") !== 0){
	die();
}

$name=urldecode($_GET['name']);//重命名后的文件名
header("Content-type:application/octet-stream");
header("Accept-Ranges:bytes");
header("Content-Type:application/force-download");
header("Content-Length:".filesize($path));
header("Content-Disposition:inline;filename=".$name);
header("Content-Range:bytes 0-".filesize($path)."/".filesize($path));
readfile($path);//要下的文件,包括路径
?>