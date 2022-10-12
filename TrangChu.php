<?php
require_once('db/dbhelper.php');
require_once('untils/utility.php');
include_once('layout/header.php');
include_once('layout/menu.php');


?>
<!-- A vertical navbar -->

<!-- body -->
<div style="padding: 10px"></div>
<!-- List danh sach -->
<div class="container">
  <div class="bg-light navbar section-title-1 ">
    <h3 class="bg-light " style="font-size:25px"><span class="text-body">Bán Chạy Nhất</span></h3>
    <?php 
    $cate = executeResult('select * from category where id_category=6');
    foreach ($cate as $item) {
      echo '<a href="Category.php?id_category='.$item['id_category'].'" class="right text-danger">Xem Thêm</a>';
    }
    ?>  
  </div>
  <div class="tab-pane">
    <div class="row gutters-5 ">
      <?php
      $productBanChay = executeResult('select * from products where id_category=6 limit 12');
      foreach ($productBanChay as $item) {
        echo '<div class="col-md-2 col-6   " >
        <ul class="zoom">
          <div class="product-box-2 h-100 position-relative "> 
            <a class=" h-100 w-100"  href="Details.php?id_product='.$item['id_product'].'">
              <img  src="upload/images/'.$item['thumbnail'].'" style="width: 100%" />
            </a>  
            <div class="p-3 border-top" >
                <h2 class=" " style="font-size:15px">'.$item['title'].'</h2> 
                <div class="align-items-end  w-100" >
                  <div class="float-left flex-grow-1 price-box">
                    <div class="strong-600 d-lg-block product-price" style="color: #f79f8e">
                        '.number_format($item['price'],0,',','.').'đ
                    </div>
                  </div>
                  <div class="float-right d-lg-blockk">
                      <i class=""><img src="upload/images/logocart.png" style="width: 20px; hight: 20px"/></i>
                  </div> 
                </div>
            </div>
          </div>
        </ul>
      </div>  ';
      }
      ?> 
    </div>
  </div> 
</div>
  <div style="padding: 20px"></div>
<!--2 -->
<div class="container">
  <div class="bg-light navbar section-title-1" >
    <h3 class="bg-light"><span class="text-body" style="font-size:25px">Hộp Hoa Độc Đáo</span></h3>  
    <?php 
    $cate7 = executeResult('select * from category where id_category=7');
    foreach ($cate7 as $item) {
      echo '<a href="Category.php?id_category='.$item['id_category'].'" class="right text-danger">Xem Thêm</a>';
    }
    ?>
  </div>
  <div class="tab-pane">
    <div class="row" >
      <?php
      $productHopHoa = executeResult('select * from products where id_category=7 limit 12');
      foreach ($productHopHoa as $item) {
        echo '<div class="col-md-2 col-6 " >
        <ul class="zoom">
          <div class="product-box-2 h-100 position-relative ">
              <a class="h-100 w-100" href="Details.php?id_product='.$item['id_product'].'">
                <img  src="upload/images/'.$item['thumbnail'].'" alt="hover" style="width:100%" />
              </a> 
              <div class="p-3 border-top" >
                <h2 class=" " style="font-size:15px">'.$item['title'].'</h2>
                  <div class="align-items-end  w-100" >
                      <div class="float-left flex-grow-1 price-box">
                          <div class="strong-600 d-lg-block product-price" style="color: #f79f8e">
                                '.number_format($item['price'],0,',','.').'đ
                          </div>
                      </div>
                        <div class="float-right d-lg-blockk">
                      <i class=""><img src="upload/images/logocart.png" style="width: 20px; hight: 20px"/></i>
                  </div> 
                  </div>
              </div>
          </div>
       </ul>
    </div>  ';
      }
      ?>   
    </div>
  </div> 
</div> 
<!-- 3 -->
<div style="padding: 20px"></div>
<div class="container">
  <div class="bg-light navbar section-title-1" >
    <h3 class="bg-light"><span class="text-body" style="font-size:25px">Giỏ Hoa Thanh Lịch</span></h3>
    <?php 
    $cate8 = executeResult('select * from category where id_category=8');
    foreach ($cate8 as $item) {
      echo '<a href="Category.php?id_category='.$item['id_category'].'" class="right text-danger">Xem Thêm</a>';
    }
    ?> 
  </div>
  <div class="tab-pane">
    <div class="row" >
      <?php
      $productGioHoa = executeResult('select * from products where id_category=8 limit 12');
      foreach ($productGioHoa as $item) {
        echo '<div class="col-md-2 col-6 " >
        <ul class="zoom">
          <div class="product-box-2 h-100 position-relative ">
              <a class="h-100 w-100" href="Details.php?id_product='.$item['id_product'].'">
                <img  src="upload/images/'.$item['thumbnail'].'" alt="hover" style="width:100%" />
              </a> 
              <div class="p-3 border-top" >
                <h2 class="" style="font-size:15px">'.$item['title'].'</h2>
                  <div class="align-items-end  w-100" >
                      <div class="float-left flex-grow-1 price-box">
                          <div class="strong-600 d-lg-block product-price" style="color: #f79f8e">
                                '.number_format($item['price'],0,',','.').'đ
                          </div>
                      </div>
                        <div class="float-right d-lg-blockk">
                      <i class=""><img src="upload/images/logocart.png" style="width: 20px; hight: 20px"/></i>
                  </div> 
                  </div>
              </div>
          </div>
       </ul>
    </div>  ';
      }
      ?>   
    </div>
  </div> 
</div> 
<div style="padding: 20px"></div>
<!-- footer -->
<style type="text/css"> 
  <?php require_once('styles/style.css'); ?>
</style >
<?php
include_once('layout/footer.php');
?>