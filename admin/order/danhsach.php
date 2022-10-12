<?php 
$sql = "select * from orders inner join users on orders.id_user = users.id_user";
$query = mysqli_query($conn,$sql);

?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Danh Sách Đơn Hàng</h2>
        </div>
        <div class="card-body">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Mã Đơn Hàng</th>
                        <th>Tên Khách Hàng</th>
                        <th>Số Điện Thoại</th>
                        <th>Địa Chỉ</th>
                        <th>Ngày Đặt</th>
                        <th>Chi Tiết Đơn Hàng</th>
                        
                        
                        <th>Xóa</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $i = 1;
                    while($row = mysqli_fetch_assoc($query)){?>
                        <tr>
                        <td><?php echo $i++ ?></td>
                        <td><?php echo $row['id_order']; ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo $row['phone_number']; ?></td>
                        <td><?php echo $row['address']; ?></td>
                        <td><?php echo $row['order_date']; ?></td>
    
                    
                    
                        
                    </tr>
                   <?php } ?>

                  
                </tbody>
                
            </table>
        </div>
    </div>
</div>
