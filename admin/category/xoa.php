<?php 
include_once "connect_db.php";
if(isset($_GET['id'])){
	$id = $_GET['id'];
	$query = mysqli_query($conn,"DELETE FROM category WHERE id_category = $id");
	if($query){
		header('Location:index/php?page_layout=danhsach');
	}else{
		echo "loi";
	}
}
?>