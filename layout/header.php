<?php 
session_start() ;

?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

  <!-- jQuery library  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
  <!-- hearder -->
  <!-- Grey with black text -->
  <!-- fixed-top cho menu khi kéo dứng im  --> 

  <nav class="navbar navbar-nav  navbar-right  " style="background: #ffaacc0d">
    <div class="container">
      <div>
        <ul class="navbar-nav" > 
          <li class="nav-item active ">
            <a class="nav-link" href="TrangChu.php">          
              <img src="upload/images/logo2.png"  alt="TrangChu.php" height="40px" >
            </a>
          </li>
        </ul>
      </div>
      

      <?php
      
      $cart = [];
      if(isset($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
      }

      $count = 0;
      foreach ($cart as $item) {
        $count += $item['quantity'];
      }

      $user = (isset($_SESSION['user'])) ? $_SESSION['user'] : [];
      ?> 
     
      <div class="row">
           <a href="Cart.php">
          <button type="button" class="btn btn-light" style="height: 40px;background: white; ">
            <img src="upload/images/cart.png" width="50px" height="25px" />
            <span class="badge badge-info" ><?=$count?></span>
          </button>
        </a>
       
        <?php if (isset($user['email'])) {  ?>
          <div class=" ">
           <button type="" class="btn btn-default " ><?php echo $user['email'] ?> <span class="caret"></span></button> 
             <a href="Logout.php" style="color: #f79f8e">Thoát</a> 
         </div>
       <?php }else{?>
         <div class="">
          <a href="Login.php" class="nav-link text " > Đăng Nhập <span class="caret"></span></a>
        </div>    
      <?php }?>
    </div>
  </div> 
</nav>
