 <?php
 require_once('db/dbhelper.php');
 require_once('untils/utility.php');
 include_once('layout/header.php');
 include_once('layout/sidebar.php');

 ?>

 <div class=" sidebar-box col-md-10"  >
      <form class="row" style="padding: 10px" method="get">
    <div class="form-group" >
      <input class="form-control" type="text" name="search" placeholder="Tìm kiếm sản phẩm , giá" style="height:40px;width:350px" >

    </div>
    <div>
     <button class="btn bg-pink text-white " type="submit" name="submit"style="height:40px;width:100px">Tìm kiếm</button>
    </div>

  </form>  
<div class="tab-pane">
  <div class="row">
      <?php 
  if (isset($_GET['submit']) && $_GET['search'] != '') {
    $search = $_GET['search'];  
    $sql = "select * from products where title LIKE '%$search%' OR price LIKE '%$search%' ";
    $pro = executeResult($sql);
    foreach ($pro as $item) {
       echo '
       <div class="col-md-3  " >
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
       </div>     
       ';
     }
   }
   ?>
  </div>
</div>
 
   <div class=" navbar ">	
     <?php 
     $id = getGet('id_category');
     if (isset($id) ) {
      if ($id > 0) {
       $BanChay = executeResult('select * from category where id_category= '.$id,true);
       ?>

       <h3 class="bg-light  section-title-1" style="font-size: 25px"><span class="text-body"><?=$BanChay['name']?></span></h3> 
       <div class="tab-pane">
        <div class="row">	
         <?php 

         $cate = executeResult('select * from products where id_category='.$_GET['id_category']);
         foreach ($cate as $item) {
           echo '<div class="col-md-3 col-9 " >
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
     <?php 
   }
 }
 ?>
</div>   
</div>	 

<div style="padding: 10px"></div>
<style type="text/css">
  <?php include_once('styles/style.css'); ?>
</style>
<?php
include_once('layout/footer.php');
?> 
