<?php
if (!empty($_POST)) {
	$id_user = getPost('id_user');
	$phone_number = getPost('phone_number');
	$address = getPost('address');
	$order_date = date('Y-m-d H:i:s');

	$sql = "insert into orders (id_user,phone_number,address,order_date) values ('$id_user','$phone_number','$address','$order_date')";
	execute($sql);

	$sql = "select * from orders where order_date = '$order_date'";
	$order = executeResult($sql,true);
	$orderId = $order['id_order'];

	foreach ($cart as $item) {
		$product_Id = $item['id_product'];
		$quantity = $item['quantity'];
		$price = $item['price'];
		$sql = "insert into orderdetails (id_order,id_product,quantity,price) values ($orderId,$product_Id,$quantity,$price)";
		execute($sql);
	}

	unset($_SESSION['cart']);
	echo '<script type="text/javascript">
	window.location = "Complete.php"
	</script>';
	
	die();
}
?>