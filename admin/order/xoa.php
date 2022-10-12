<?php
$id = $_GET['id']; 
$sql = "DELETE FROM orders where id_order = $id'";
$$query = mysqli_query($conn,$sql);
header('Location: index.php?page_layout=danhsach');
?>