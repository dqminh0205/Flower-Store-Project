<?php 
require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');


$fullname = $email = $pass_word = '';
if (!empty($_POST)) {
	$fullname = getPost('fullname');
	$email = getPost('email');
	$pass_word = getPost('pass_word');
	$user_date = date('Y-m-d H:i:s');
	if ($fullname != '' && $email !='' && $pass_word != '' ) {
		$pass = getPwdSecurity($pass_word);
		$sql = "insert into users(email,pass_word,fullname,user_date) values('$email','$pass','$fullname','$user_date')";
		execute($sql);
		echo '<script type="text/javascript">
		window.location = "Login.php"
		</script>';
		die();
	}
}
?>

<div class="container ">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="login_wrapper">
				<h3 class="text-center"> Đăng kí tài khoản </h3>
				<form class="form-horizontal" method="post" id="RegisterForm">
					<div class="formsix-pos">
						<div class="form-group">
							<input required="true" type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ và Tên">
						</div>
					</div>
					<div class="formsix-pos">
						<div class="form-group">
							<input required="true" type="email" class="form-control" id="email" name="email" placeholder="email">
						</div>
					</div>
					<div class="formsix-e">
						<div class="form-group">
							<input required="true" type="password" class="form-control" id="pwd" name="pass_word" placeholder="Mật khẩu">
						</div>
					</div>	
					<div class="formsix-e">
						<div class="form-group">
							<input required="true" type="password" class="form-control" id="confirmation_pwd" name="confirmation_pwd" placeholder="Xác nhận mật khẩu">
						</div>
					</div>	
					<div class="login_btn_wrapper">
						<button class="btn bg-pink text-white w-100 " type="submit" >Đăng Ký</button>			
					</div>
				</form>
			</div>	
		</div>	
	</div>
</div>
<style type="text/css">	
	<?php require_once('styles/style.css'); ?>
</style>
<script type="text/javascript">
	$(function(){
		$('#RegisterForm').submit(function(){
			if ($('[name=pass_word]').val() != $('[name=confirmation_pwd]').val()) {
				alert('Mật khẩu nhập lại không đúng');
				return false;
			}
			return true;
		})
	})
</script>


<?php include_once('layout/footer.php'); ?>