<?php

require_once '../../controllers/NhanVienController.php';

$controller = new NhanVienController($conn);

$action = $_GET['action'];


if ($action == 'add') {
    // Retrieve data from the form
    $maNV = $_POST['maNV'];
    $tenDangNhap = $_POST['tenDangNhap'];
    $matKhau = $_POST['matKhau'];
    $thamNien = $_POST['thamNien'];
    $email = $_POST['email'];
    $sdt = $_POST['sdt'];
    $stk = $_POST['stk'];
    $diaChi = $_POST['diaChi'];
    $chucVu = $_POST['chucVu'];
    $luong = $_POST['luong'];

    // Add employee
    $controller->addNV($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong);
    
    echo "<script>
    alert('Thêm thành công!');
    setTimeout(function() {
        
        window.location.href = 'employee_list.php'; // Chuyển hướng sau 2 giây
    }, 2000); // Delay 2 giây (2000ms)
</script>";

} elseif ($action == 'update') {
    // Retrieve data from the form
    $maNV = $_POST['maNV'];
    $tenDangNhap = $_POST['tenDangNhap'];
    $matKhau = $_POST['matKhau'];
    $thamNien = $_POST['thamNien'];
    $email = $_POST['email'];
    $sdt = $_POST['sdt'];
    $stk = $_POST['stk'];
    $diaChi = $_POST['diaChi'];
    $chucVu = $_POST['chucVu'];
    $luong = $_POST['luong'];

    // Update employee
    $controller->updateNV($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong);
    echo "<script>
    alert('Cập nhật thành công!');
    setTimeout(function() {
        window.location.href = 'employee_list.php'; // Chuyển hướng sau 2 giây
    }, 400); // Delay 2 giây (2000ms)
</script>";
   

} elseif ($action == 'delete') {
    $maNV = $_GET['maNV'];
    // Delete employee
    $controller->deleteNV($maNV);
    echo "<script>
    alert('Xóa thành công!');
    setTimeout(function() {
        
        window.location.href = 'employee_list.php'; // Chuyển hướng sau 2 giây
    }, 500); // Delay 2 giây (2000ms)
</script>";
}
?>
