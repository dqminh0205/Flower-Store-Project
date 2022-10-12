<?php 
$query = "select*from a.fullname as 'username',a.email as'useremail',a.id_user as 'id_user',b.*,c.id_product,c.quantity,d.price,d.name as'productname' users a join orders b on a.id=b.userid join orderDetails c on b.id=c.id_order join products d on c.id_product = d.id where b.id=".$_GET['id'];
$order = mysqli_fetch_array($conn->query($query));
?>

<!-- a=users,b=orders,c=orderdetails,d=products -->
<div class="card">
        <div class="card-header">
            <h2>Chi Tiết Đơn Hàng</h2>
        </div>
        <div class="card-body">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>STT</th>
                        <th>Mã Đơn Hàng</th>
                        <th>Mã Sản Phẩm</th>
                        <th>Số Lượng</th>
                        <th>Giá Sản Phẩm</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $i = 1;
                    while($row = mysqli_fetch_assoc($query_orderDetail)){?>
                        <tr>
                        <td><?php echo $i++ ?></td>
                        <td><?php echo $row['id_orderDetails']; ?></td>
                        <td><?php echo $row['id_order']; ?></td>
                        <td><?php echo $row['id_product']; ?></td>
                        <td><?php echo $row['quantity']; ?></td>
                        <td><?php echo $row['price']; ?></td>
    
    <td><select name="status">
      <option value="1">Chưa Xử Lí</option>
      <option value="2">Xử Lí</option>
      </select></td>
                    <td>
                        <a href="orderdetail.php?id=<?php echo $row['id_order']; ?>">Xem Chi Tiết</a>
                    </td>
                    <td>
                        <a href="xoa.php?id=<?php echo $row['id_order']; ?>">Xóa</a>
                    </td>
                    
                    
                        
                    </tr>
                   <?php } ?>

                  
                </tbody>
                
            </table>
        </div>
    </div>
</div>