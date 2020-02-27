<?php

include_once('header.php');

$prd_id=$_GET['prd_id'];
//////////////////////
$sqldel="select * from product where prd_id=$prd_id";
$querydel= mysqli_query($conn, $sqldel);
$row= mysqli_fetch_array($querydel);
$link="img/product/".$row['prd_image'];
if(file_exists($link)){
	unlink($link);
}
///////////////////////
$sql= "DELETE  FROM product where prd_id=$prd_id";
mysqli_query($conn, $sql);
header('location:product.php');


?>