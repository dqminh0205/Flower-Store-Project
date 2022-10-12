<?php 
$id = $_GET['id'];
$sql = "DELETE FROM products where id_product = $id";
$$query = mysqli_query($conn,$sql);
header('Location: index.php?page_layout=danhsach');
?>