<?php 
$conn = mysqli_connect('localhost','root','','flowerstore');
if($conn){
	mysqli_query($conn,"SET NAMES 'UTF8'");
}else {
	echo 'ket noi that bai';
}

?>