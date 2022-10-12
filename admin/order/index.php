<?php 
require 'connect_db.php';

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<title>Quản lí Đơn Hàng</title>
</head>
<body>
	<?php 
	if(isset($_GET['page_layout'])){
		switch ($_GET['page_layout']) {
			case 'danhsach':
				require_once 'danhsach.php';
				break;

				case 'them':
				require_once 'them.php';
				break;

				case 'xoa':
				require_once 'xoa.php';
				break;

				case 'sua':
				require_once 'sua.php';
				break;
			
			default:
				require_once 'danhsach.php';
				break;
		}
		
	}else{
		require_once 'danhsach.php';

	}

	?>
	

</body>
</html>