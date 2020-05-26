<?php
include_once('header.php');

$user_id=$_GET['user_id'];
$sql="delete from user where user_id=$user_id";
mysqli_query($conn,$sql);
header('location:user.php');
?>