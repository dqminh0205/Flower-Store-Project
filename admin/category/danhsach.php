<?php
include_once "connect_db.php";
$category = mysqli_query($conn,"SELECT * FROM category");
// var_dump($category);
?>


<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Danh Sách Danh Mục</h2>
        </div>
        <div class="card-body">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                
                        <th>Tên Danh Mục</th>
                        <th>Sửa</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($category as $key => $value) {?>
                       <tr>
                           <td>#</td>
                           <td><?php echo $value['name']; ?></td>
                           <td><a href="index.php?page_layout=sua">Sửa</a></td>
                           <td> <a href="index.php?page_layout=xoa">Xóa</a></td>

                       </tr>

                    <?php }?>
                        
                  

                  
                </tbody>
                
            </table>
            <a class="btn btn-primary" href="index.php?page_layout=them">Thêm Mới</a>
        </div>
    </div>
</div>
<script>
    function Del(name){
        return confirm("Bạn có chắc muốn xóa danh mục:" + name + "?");
    }
</script>