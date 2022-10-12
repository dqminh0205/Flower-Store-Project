
 <div class="container">
	<div class="row">
		<div class="bg-white sidebar-box md-3">
			<div class="box-title text-center">
				Nhóm Sản Phẩm
			</div>
			<div class="">
				<?php
				$categoryAll = executeResult('select * from category ');

				foreach ($categoryAll as $item) {
					echo '<div class="col-md-12 ">
					<a href="Category.php?id_category='.$item['id_category'].'">'.$item['name'].'</a>
					</div>';
				}
				?>
			</div>
		</div>
		 <style type="text/css">
			<?php include_once('styles/style.css'); ?>
		</style>   
		