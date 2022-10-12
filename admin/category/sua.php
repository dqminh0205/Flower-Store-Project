<?php 
include_once "connect_db.php";
if(isset($_POST['name'])){
    $name = $_POST['name'];

    $sql = "UPDATE category SET name = '$name' WHERE id_category = $id";
    $query = mysqli_query($conn,$sql);
    if($query){
        header('Location:index.php?page_layout=danhsach');
    }else{
        // echo "Loi";
    }

}
?>

<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Sửa sản phẩm</h2>
        </div>
        <div class="card-body">
            <form method="post" enctype="multipart/form-data">
                </div>

                <div class="form-group">
                    <label for="">Tên danh mục</label>
                    <input type="text" name="name" id="" class="form-control" required >
                </div>


                <button name="sbm" class="btn btn-success" type="submit">Sửa</button>
            </form>

        </div>