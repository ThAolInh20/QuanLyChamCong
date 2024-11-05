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
    header("Location: employee_list.php");

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
    header("Location: employee_list.php");

} elseif ($action == 'delete') {
    $maNV = $_GET['maNV'];
    // Delete employee
    $controller->deleteNV($maNV);
    header("Location: employee_list.php");
}
?>
