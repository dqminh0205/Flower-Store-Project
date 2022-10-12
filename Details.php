<?php
require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');


$id = getGet('id_product');
$product = executeResult('select * from products where id_product='.$id,true);
if($product == null) {
	echo '<script type="text/javascript">
	window.location = "TrangChu.php"
	</script>';
	die();
}

?>
<!--Body -->>

<div class="container">
	<div class="row">
		<div class="col-md-5">
			<img  src="upload/images/<?=$product['thumbnail']?>" style="width:100%" />
		</div>
		<div class="col-md-7">
			<ul>
				<h4><?=$product['title']?></h4>
			</ul>
			<ul>
				<h6 style="padding: 10px">Giá:<span style="font-size: 20px;color: #dc3545; padding: 10px"><?=number_format($product['price'],0,',','.')?> đ</span> 
				</h6>
			</ul>
			<hr class="flex-grow-1" style="width: 550px"></hr>
			<ul class="row">	
				<h6 class="text-center" style="padding:10px">Số Lượng: </h6>
				<div class="buttons_add" >
					<span class="" onclick="minus()"> 
						<button type="button" class="minus is-form " data-type="minus" data-field=""  > 
							<span class="" >-</span> 		
						</button>
					</span> 
					<input id="qtity" name="qtity" class=" input-qty " style="width: 60px" value="1"  type="text" placeholder="1"> 
					<span class="" onclick="plus()">   
						<button type="button" class="plus is-form " data-type="plus" data-field="">
							<span class=""> + </span> 
						</button>
					</span> 
				</div> 	
			</ul>
			<hr class="flex-grow-1" style="width: 550px"></hr>
			<ul class="bg-zoom">
				<button class="btn " style="width: 250px;height: 45px;font-size: 15px;background-color:#302d6f;color:white" onclick="AddToCart(<?=$id?>);">Thêm Vào Giỏ Hàng 
				</button>
			</ul>
			<hr class="flex-grow-1" style="width: 550px"></hr>
			<ul>
				<h5 style="">Mô tả: </h5>
				<p><?=$product['content']?></p>
			</ul>
		</div>
	</div>
</div> 
<!-- ghi xuong dưới button-->
<style type="text/css">
	<?php require_once('styles/style.css'); ?>
</style> 
<script type="text/javascript" >
	
	function plus() {	
		// num = $("#quantity").val(); //ktra da lấy dc gtrị ô input chua
		// alert(num); 
		var num = parseInt($("#qtity").val());
		var tem = 1;

		if (num <= 9) {
			tem = num + 1 ;
		}	 
		$("#qtity").val(tem);	
	}
	function minus(){
		var num = parseInt($("#qtity").val());
		var tem = 1;

		if (num > 1) {
			tem = num - 1 ;
		}
		$("#qtity").val(tem);
	}

	function AddToCart(id){
		var num = parseInt($("#qtity").val());

		if (num > 0){
			$.post('api/api-sessionCart.php',{
				'action' : 'add',
				'id_product': id ,
				'quantity' : num
			},function(data){
				//alert(data);
				location.reload()
			})
		}else{
			alert("Vui lòng chọn số lượng dương");
			$("#qtity").val(1);
		}

	}
</script>

<?php
include_once('layout/footer.php');
?>

