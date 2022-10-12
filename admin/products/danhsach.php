<?php
$sql = "select * from products inner join category on products.id_category = category.id_category";
$query = mysqli_query($conn,$sql); 

?>


<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Danh Sách Sản Phẩm</h2>
        </div>
        <div class="card-body">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Danh Mục</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Giá Sản Phẩm</th>
                        <th>Mô tả</th>
                        <th>Hình Ảnh</th>
                        
                        <th>Sửa</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $i = 1;
                    while($row = mysqli_fetch_assoc($query)){?>
                        <tr>
                        <td><?php echo $i++ ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['price']; ?></td>
                        <td><?php echo $row['content']; ?></td>
                        <td><img style="width: 100px;" src="img/<?php echo $row['thumbnail']; ?>"></td>
                        <td>
                        <a href="index.php?page_layout=them&id=<?php echo $row['id_product']; ?>">Sửa</a>
                    </td>
                        <td>
                            <a onclick="return Del('<?php echo $row['title']; ?>')" href="index.php?page_layout=them&id=<?php echo $row['id_product']; ?>">Xóa</a>
                        </td>
                        
                    </tr>
                   <?php } ?>

                  
                </tbody>
                
            </table>
            <a class="btn btn-primary" href="index.php?page_layout=them">Them Moi</a>
        </div>
    </div>
</div>
<script>
    function Del(name){
        return confirm("ban co chac xoa san pham:" + name + "?");
    }
</script>