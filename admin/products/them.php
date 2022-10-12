<?php 
$sql_category = "select * from category";
$query_category = mysqli_query($conn,$sql_category);

if(isset($_POST['sbm'])){
    $id_category = $_POST['id_category'];
    $title = $_POST['title'];
    $price = $_POST['price'];
    $content = $_POST['content'];
    $thumbnail = $_FILES['thumbnail']['name'];
    $thumbnail_tmp = $_FILES['thumbnail']['tmp_name'];

    $sql = "INSERT INTO products(id_category, title , price , content , thumbnail)
    VALUES ($id_category ,'$title' ,$price,'$content','$thumbnail' )";
    $query = mysqli_query($conn,$sql);
    move_uploaded_file(thumbnail_tmp, 'img/'.$thumbnail);
    header('Location: index.php?page_layout=danhsach');
}
?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Thêm Sản Phẩm</h2>
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
                    <input type="text" name="title" id="" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="">Giá Bán</label>
                    <input type="number" name="price" id="" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="">Mô Tả</label>
                    <input type="text" name="content" id="" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="">Hình Ảnh</label><br>
                    <input type="file" name="thumbnail" id="" >
                </div>

                <button name="sbm" class="btn btn-success" type="submit">Thêm</button>
            </form>

        </div>