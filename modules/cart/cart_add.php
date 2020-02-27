<?php
session_start();
$prd_id=$_GET['prd_id'];                   
if(isset($_SESSION['cart'][$prd_id])){    //kiem tra mảng sesion cart
	$_SESSION['cart'][$prd_id]++;         //nếu mua nhiều thì cho tăng lên 1 đơn vị
}
else{
	$_SESSION['cart'][$prd_id]=1;         // nếu khách hàng chỉ mua 1 thì chỉ 1 đơn vị
}
header('location:../../index.php?page_layout=cart'); //cho ve web index.php?page_layout=cart
?>