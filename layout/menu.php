
<nav class="navbar navbar-nav  " style="background-color:#f8f9fa; padding: 10px; ">
  <div class="container">
    <div class="row col-md-10">
      <!-- Links -->
      <ul class="navbar-nav bg-light">
       <li class="nav-item">
        <h4>Nhóm Sản Phẩm</h4>
      </li>
      <li class="nav-item " >
        <?php
        $cate = executeResult('select * from category where id_category=1');
        foreach ($cate as $item) {
          echo '<a class="nav-link "  href="Category.php?id_category='.$item['id_category'].'" >Ngày Sinh Nhật</a>';
        }
        ?>
      </li>
      <li class="nav-item">
        <?php
        $cate2 = executeResult('select * from category where id_category=2');
        foreach ($cate2 as $item) {
          echo '<a class="nav-link" href="Category.php?id_category='.$item['id_category'].'">Hoa Chúc Mừng</a>';
        }
        ?>
        
      </li>
      <li class="nav-item">
       <?php
       $cate3 = executeResult('select * from category where id_category=3');
       foreach ($cate3 as $item) {
        echo '<a class="nav-link" href="Category.php?id_category='.$item['id_category'].'">Lễ Tình Nhân</a>';
      }
      ?>
    </li>
    <li class="nav-item">
     <?php
     $cate4 = executeResult('select * from category where id_category=4');
     foreach ($cate4 as $item) {
      echo '<a class="nav-link" href="Category.php?id_category='.$item['id_category'].'">Quốc Tế Phụ Nữ</a>';
    }
    ?>
  </li>
  <li class="nav-item">
   <?php
   $cate5 = executeResult('select * from category where id_category=5');
   foreach ($cate5 as $item) {
    echo '<a class="nav-link" href="Category.php?id_category='.$item['id_category'].'">Nhà Giáo Việt Nam</a>';
  }
  ?>
  
</li>
</ul>  
<ul style="position:absolute;left: 200px">
  <div id="side" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ul class="carousel-indicators">
      <li data-target="#side" data-slide-to="0" class="active"></li>
      <li data-target="#side" data-slide-to="1"></li>
     
    </ul>
    <!-- The slideshow -->
    <div class="carousel-inner">
      <div class="carousel-item active">
         <?php
        $cate = executeResult('select * from category where id_category=1');
        foreach ($cate as $item) {
          echo '<a class="nav-link"  href="Category.php?id_category='.$item['id_category'].'" >
            <img src="upload/images/banner1.png" width="800px" height="240px" >
          </a>';
        }
        ?>
        
      </div>
      <div class="carousel-item">
         <?php
       $cate3 = executeResult('select * from category where id_category=3');
       foreach ($cate3 as $item) {
        echo '<a class="nav-link" href="Category.php?id_category='.$item['id_category'].'">
                 <img src="upload/images/banner2.png" width="800px" height="240px" >
        </a>';
      }
      ?>    
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#side" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#side" data-slide="next">
      <span class="carousel-control-next-icon"></span>
    </a>
  </div>  
</ul>
</div>   
</div>
</nav>