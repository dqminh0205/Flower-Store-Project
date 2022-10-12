<?php 
	session_start();
	require_once('db/dbhelper.php');

	unset($_SESSION['user']);
	header('Location: TrangChu.php');
?>