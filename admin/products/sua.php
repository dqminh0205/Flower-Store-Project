<?php 
$id = $_GET['id'];

$sql_category = "select * from category";
$query_category = mysqli_query($conn,$sql_category);

$sql_up = "select * from products where id_product = $id";
$query_up = mysqli_query($conn,$sql_up);
$row_up =mysqli_fetch_assoc($query_up);

if(isset($_POST['sbm'])){
    $id_category = $_POST['id_category'];
    $title = $_POST['title'];
    $price = $_POST['price'];
    $content = $_POST['content'];

    if($_FILES['thumbnail']['name'] == ''){
        $thumbnail = $row_up['title']; 
    }else {
        $thumbnail = $row_up['title']; 

    }
    $sql = "UPDATE products SET id_category=$id_category, title= '$title', price=$price , content='$content' , thumbnail='$thumbnail' WHERE id_product = $id";
    $query = mysqli_query($conn,$sql);
    move_uploaded_file(thumbnail_tmp, 'img/'.$thumbnail);
    header('Location: index.php?page_layout=danhsach');
}
?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Sửa Sản Phẩm</h2>
        </div>
        <div class="card-body">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="">Danh Mục</label>
                    <select class="form-control" name="id_category">
                        <?php 
                        while($row_category = mysqli_fetch_assoc($query_category)){?>
                            <option value="<?php echo $row_category['id_category'] ?>"><?php echo $row_category['name'] ?></option>

                        <?php } ?>

                        
                    </select>
                </div>

                <div class="form-group">
                    <label for="">Tên Sản Phẩm</label>
                    <input type="text" name="title" id="" class="form-control" required value="<?php echo $row_up['title']; ?>">
                </div>

                <div class="form-group">
                    <label for="">Giá Bán</label>
                    <input type="number" name="price" id="" class="form-control" required value="<?php echo $row_up['price']; ?>">
                </div>

                <div class="form-group">
                    <label for="">Mô Tả</label>
                    <input type="text" name="content" id="" class="form-control" required value="<?php echo $row_up['content']; ?>">
                </div>

                <div class="form-group">
                    <label for="">Hình Ảnh</label><br>
                    <input type="file" name="thumbnail" id="" >
                </div>

                <button name="sbm" class="btn btn-success" type="submit">Sửa</button>
            </form>

        </div>