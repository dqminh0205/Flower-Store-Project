<?php
require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');
require_once('api/api-checkout.php');

$users = (isset($_SESSION['user'])) ? $_SESSION['user'] : [];
?>
<?php if (isset($_SESSION['user'])) {?> 
	<form method="post"> 
		<div class="container">
			<div class="row">

				<div class="col-md-5">
					<h3 class="text-center" style="color: #007bff">Thông tin đơn hàng</h3>
					<div class="form-group">
						<label for="usr">FullName <font color="red">*</font>:</label>
						<input type="hidden" name="id_user" value="<?php echo $users['id_user']?>">
						<input required="true" type="text" class="form-control" id="fullname" value="<?php echo $users['fullname']?>"  name="fullname">	
					</div>
					<div class="form-group">
						<label for="email">Email <font color="red">*</font>:</label>
						<input required="true" type="email" class="form-control" id="email" value="<?php echo $users['email'] ?>"  name="email">
					</div>
					<div class="form-group">
						<label for="phone_number">Phone Number <font color="red">*</font>:</label>
						<input required="true" type="text" class="form-control" id="phone_number" name="phone_number">
					</div>
					<div class="form-group">
						<label for="address">Address <font color="red">*</font>:</label>
						<input required="true" type="text" class="form-control" id="address" name="address">
					</div>
				</div>
				<div class="col-md-7">
					<table class="table table-bordered ">
						<thead>
							<tr>
								<th class="text-center"></th>
								<th class="text-center" style="font-size: 15px">Hình ảnh</th>
								<th class="text-center" style="font-size: 15px">Sản Phẩm</th>
								<th class="text-center" style="font-size: 15px">Số Lượng</th>
								<th class="text-center" style="font-size: 15px">Giá</th>
								<th class="text-center" style="font-size: 15px">Tổng Cộng</th>
							</tr>
						</thead>
						<tbody>	
							<?php
							$cart = [];
							if(isset($_SESSION['cart'])) {
								$cart = $_SESSION['cart'];
							}
							$count = 0;
							$total = 0;
							foreach ($cart as $item) {
								$total += $item['quantity']*$item['price'];
								echo '<tr>
								<td class="text-center">'.(++$count).'</td>
								<td class="text-center"><img src="upload/images/'.$item['thumbnail'].'" style="height: 70px" /></td>
								<td class="text-center">'.$item['title'].'</td>
								<td class="text-center">
								'.$item['quantity'].'
								</td>
								<td class="text-center">'.number_format($item['price'],0,',','.').'</td>
								<td class="text-center">'.number_format($item['quantity']*$item['price'],0,',','.').'</td>
								</tr>';
							}
							?>
						</tbody>
					</table>
					<p style="font-size: 30px; color: #dc3545 ; padding: 10px" class="text-right" >
						Tổng Tiền: <?=number_format($total,0,',','.')?>đ
					</p>
					<div class=" navbar navbar-nav navbar-right ">
						<div class="container">	
							<div>
								<a href="Cart.php" class="nav-link " style="font-size: 20px">
							Quay lại giỏ hàng
						</a>
							</div>
							<div class=""  >
								<button class="btn  " style="width: 200px; font-size: 20px;color: white;background-color:#f79f8e ">Thanh Toán</button>							
							</div>	
						</div>
					</div>					
				</div>
			</div>
		</div>
	</form>
<?php }else{ ?>
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Vui lòng đăng nhập để mua hàng.</strong> <a href="Login.php?action=CheckOut" title="">Đăng nhập</a>
	</div>
<?php }?> 

<?php

include_once('layout/footer.php');
?>