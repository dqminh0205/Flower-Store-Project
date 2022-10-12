<?php
require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');

?>
<!-- body -->
<div class="container">
	<div class="row">
		<div class="col-md-12" id="listCast">
			<table class="table table-bordered " id="cartx">
				<thead>
					<tr>
						<th></th>
						<th class="text-center" style="font-size: 15px">Hình ảnh</th>
						<th class="text-center" style="font-size: 15px">Sản Phẩm</th>
						<th class="text-center" style="font-size: 15px">Số Lượng</th>
						<th class="text-center" style="font-size: 15px">Giá</th>
						<th class="text-center" style="font-size: 15px">Tổng Cộng</th>
						<th></th>
					</tr>
				</thead>
				<tbody>	
					<?php
					$cart = [];
					if(isset($_SESSION['cart'])) {
						$cart = $_SESSION['cart'];
					}
					if ($cart == null || count($cart) == 0) {
						echo '<script type="text/javascript">
						window.location = "TrangChu.php"
						</script>';
						die();
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
						<div class="buttons_add">
						<span class="input-group-btn" onclick="minus(this)" data-id="'.$item['id_product'].'"> 
						<button type="button" class="minus is-form " data-type="minus" data-field=""  > 
						<span class="" >-</span> 
						</button>
						</span> 
						<input id="qtity" name="qtity" class="input-qty" style="width: 60px" onchange="updateToCart('.$item['id_product'].', this)" value="'.$item['quantity'].'" min="1" max="10" type="text" /> 

						<span class="input-group-btn" onclick="plus(this)" data-id="'.$item['id_product'].'">   
						<button type="button" class="plus is-form " data-type="plus" data-field="">
						<span class=""> + </span> 
						</button>
						</span> 
						</div> 
						</td>
						<td class="text-center">'.number_format($item['price'],0,',','.').'</td>
						<td class="text-center">'.number_format($item['quantity']*$item['price'],0,',','.').'</td>
						<td>
						<button class="btn "  onclick="deleteItem('.$item['id_product'].')"> <img style="width: 20px;height:20px" src="upload/images/xoa.png"   >
						</button>
						</td>
						</tr>';
					}
					?>
				</tbody>
			</table>	
			<p style="font-size: 30px; color: #dc3545 ; padding: 10px" class="text-right" >
				Tổng Tiền: <?=number_format($total,0,',','.')?>đ
			</p>
			<div class=" navbar navbar-nav  navbar-right   ">
				<div class="container">	
					<div>
						<a href="TrangChu.php" class="nav-link " style="font-size: 20px">
							Quay lại cửa hàng
						</a>
					</div>
					<div >
						<a href="CheckOut.php" class="nav-link text-right" >
							<button class="btn bg-pink text-white w-100" style="width: 200px; font-size: 20px;">Tiếp tục thanh toán</button>
						</a>
					</div>	
				</div>
			</div>			
		</div>
	</div>
</div>

<style type="text/css">
	<?php require_once('styles/style.css'); ?>
</style>  
<script type="text/javascript">
	function plus(obj) {	
		var _idProduct = $(obj).attr("data-id");
		var num = parseInt($(obj).parent().find("input[name=qtity]").val());
		var tem = 1;

		if (num ) {
			tem = num + 1 ;
		}	 
		$(obj).parent().find("input[name=qtity]").val(tem);	

		updateToCart(_idProduct, obj);
	}

	function minus(obj){
		var _idProduct = $(obj).attr("data-id");
		var num = parseInt($(obj).parent().find("input[name=qtity]").val());
		var tem = 1;
		
		if (num > 1) {
			tem = num - 1 ;
		}
		$(obj).parent().find("input[name=qtity]").val(tem);

		updateToCart(_idProduct, obj);
	}

	function updateToCart(id, obj){
		var num = parseInt($(obj).parent().find("input[name=qtity]").val());

		$.post('api/api-sessionCart.php',{
			'action' : 'update',
			'id_product': id ,
			'quantity' : num ,
		},function(data){
			location.reload()
		})	
	}

	function deleteItem(id){
		$.post('api/api-sessionCart.php',{
			'action' : 'delete',
			'id_product': id
		},function(data){
			location.reload()
		})	
	}

	
</script>
<!-- -->>
<?php
include_once('layout/footer.php');
?>

