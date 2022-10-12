<?php 

require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');


$email = $pass_word = '';
if (!empty($_POST)) {
	$email = getPost('email');
	$pass_word = getPost('pass_word');
	if ($email !='' && $pass_word != '') {
		$pass_word = getPwdSecurity($pass_word);
		$sql = "select * from users where email = '$email' and pass_word = '$pass_word'";
		$data = executeResult($sql);
		if ($data !=null && count($data) > 0 ) {
			$_SESSION['user'] = $data[0];
			if (isset($_GET['action'])) {
				$action = $_GET['action'];
				echo '<script type="text/javascript">
				window.location = "' .$action. '.php"
				</script>';
			}else{	
				echo '<script type="text/javascript">
				window.location = "TrangChu.php"
				</script>';
				die();
			}	
		}			
	}
}

?>

<div class="container ">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="login_wrapper">
				<h3 class="text-center"> Đăng nhập </h3>
				<form class="form-horizontal" method="post">
					<div class="formsix-pos">
						<div class="form-group">
							<input required="true" type="email" class="form-control" id="email" name="email" placeholder="Email">
						</div>
					</div>
					<div class="formsix-e">
						<div class="form-group">
							<input required="true" type="password" class="form-control" id="pwd" name="pass_word" placeholder="Mật khẩu">
						</div>
					</div>	
					<div class="login_btn_wrapper">
						<button class="btn bg-pink text-white w-100 " type="submit" valus="" name="Submit" >Đăng Nhập</button>						
					</div>

				</form>
				<div class=" align-items-center d-flex col-12 my-3 " >
					<hr class="flex-grow-1"></hr>
					<span class="mx-3" >Hoặc</span>
					<hr class="flex-grow-1"></hr>
				</div>
				<div class="text-center">
					<p>Chưa có tài khoản? 
						<a  style="color: #f79f8e;font-size:20px" href="Register.php">Đăng ký ngay</a>	
					</p>
				</div>
			</div>	
		</div>	
	</div>
</div>
<style type="text/css">	
	<?php require_once('styles/style.css'); ?>
</style>


<?php include_once('layout/footer.php'); ?>