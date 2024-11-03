<?php

require_once '../../models/NhanVien.php';

$nhanVien = new NhanVien("", "", "", "", "", "", "", "", "", "", $conn);
$employees = $nhanVien->getALL();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Employee List</h1>
        <a href="add_employee.php" class="btn btn-success mb-3">Add New Employee</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Mã NV</th>
                    <th>Tên Đăng Nhập</th>
                    <th>Email</th>
                    <th>Chức Vụ</th>
                    <th>Lương</th>
                    <th>Thao Tác</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($employees as $employee) : ?>
                    <tr>
                        <td><?php echo $employee->getMaNV(); ?></td>
                        <td><?php echo $employee->getTenDangNhap(); ?></td>
                        <td><?php echo $employee->getEmail(); ?></td>
                        <td><?php echo $employee->getChucVu(); ?></td>
                        <td><?php echo $employee->getLuong(); ?></td>
                        <td>
                            <a href="edit_employee.php?maNV=<?php echo $employee->getMaNV(); ?>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="process_employee.php?action=delete&maNV=<?php echo $employee->getMaNV(); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
