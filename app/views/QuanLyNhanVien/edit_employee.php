<?php

require_once '../../models/NhanVien.php';

$maNV = $_GET['maNV'];
$nhanVien = new NhanVien($maNV, "", "", "", "", "", "", "", "", "", $conn);
$employeeData = $nhanVien->getNV();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Edit Employee</h1>
        <form action="process_employee.php?action=update" method="POST">
            <input type="hidden" name="maNV" value="<?= $maNV; ?>">

            <div class="mb-3">
                <label for="tenDangNhap" class="form-label">Tên Đăng Nhập:</label>
                <input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" value="<?php echo $employeeData->getTenDangNhap(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="matKhau" class="form-label">Mật Khẩu:</label>
                <input type="password" class="form-control" id="matKhau" name="matKhau" value="<?php echo $employeeData->getMatKhau(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="thamNien" class="form-label">Thâm Niên:</label>
                <input type="number" class="form-control" id="thamNien" name="thamNien" value="<?php echo $employeeData->getThamNien(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="<?php echo $employeeData->getEmail(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="sdt" class="form-label">SĐT:</label>
                <input type="text" class="form-control" id="sdt" name="sdt" value="<?php echo $employeeData->getSdt(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="stk" class="form-label">STK:</label>
                <input type="text" class="form-control" id="stk" name="stk" value="<?php echo $employeeData->getStk(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="diaChi" class="form-label">Địa Chỉ:</label>
                <input type="text" class="form-control" id="diaChi" name="diaChi" value="<?php echo $employeeData->getDiaChi(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="chucVu" class="form-label">Chức Vụ:</label>
                <input type="text" class="form-control" id="chucVu" name="chucVu" value="<?php echo $employeeData->getChucVu(); ?>" required>
            </div>

            <div class="mb-3">
                <label for="luong" class="form-label">Lương:</label>
                <input type="number" class="form-control" id="luong" name="luong" value="<?php echo $employeeData->getLuong(); ?>" required>
            </div>

            <button type="submit" class="btn btn-warning">Update Employee</button>
        </form>
        <a href="employee_list.php" class="btn btn-secondary mt-3">Back to Employee List</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
