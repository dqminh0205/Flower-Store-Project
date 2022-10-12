<?php 
include_once 'connect_db.php';
if(isset($_POST['name'])){
    $name = $_POST['name'];
    $sql = "INSERT INTO category(name) VALUES ('$name')";
    mysqli_query($conn,$sql);
    header('Location:index.php?page_layout=danhsach');
}
?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Thêm sản phẩm</h2>
        </div>
        <div class="card-body">
            <form method="post" enctype="multipart/form-data">
                </div>

                <div class="form-group">
                    <label for="">Tên danh mục</label>
                    <input type="text" name="name" id="" class="form-control"  >
                </div>


                <button name="sbm" class="btn btn-success" type="submit">Thêm</button>
            </form>

        </div>