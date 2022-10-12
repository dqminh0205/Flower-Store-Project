<?php
session_start();

if (!empty($_POST)) {
	require_once('../db/dbhelper.php');
	require_once('../untils/utility.php');
	$action = getPost('action');
	$id = getPost('id_product');
	$num = getPost('quantity');
	switch ($action) {
		case 'add':			
		AddToCart($id);
		break;
		case 'delete':
		deleteItem($id);
		break;
		case 'update':
		updateToCart($id);
		break;
	}
}

function AddToCart($id){
	$cart = [];
	if(isset($_SESSION['cart'])) {
		$cart = $_SESSION['cart'];
	}
	$isFind = false;
	for ($i=0; $i < count($cart); $i++) {
		if($cart[$i]['id_product'] == $id ) {
			$cart[$i]['quantity'] = getPost('quantity');
			$isFind = true;
			break;
		}
	}
	if(!$isFind) {
		$product = executeResult('select * from products where id_product = '.$id, true);
		$product['quantity'] = getPost('quantity');
		$cart[] = $product;
	}

//update session
	$_SESSION['cart'] = $cart;
}

function updateToCart($id){
	$cart = [];
	if(isset($_SESSION['cart'])) {
		$cart = $_SESSION['cart'];
	}
	if (getPost('quantity') > 0) {
		for ($i=0; $i < count($cart); $i++) {
			if($cart[$i]['id_product'] == $id ) {
				$cart[$i]['quantity'] = getPost('quantity');
				break;
			}
		}
	}
	
	//update session
	$_SESSION['cart'] = $cart;
}

function deleteItem($id) {
	$cart = [];
	if(isset($_SESSION['cart'])) {
		$cart = $_SESSION['cart'];
	}
	for ($i=0; $i < count($cart); $i++) {
		if($cart[$i]['id_product'] == $id) {
			array_splice($cart, $i, 1);
			break;
		}
	}

	//update session
	$_SESSION['cart'] = $cart;
}
?>