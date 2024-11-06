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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
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
                        
                        <td><a href="edit_employee.php?maNV=<?php echo $employee->getMaNV(); ?>"><?php echo $employee->getMaNV(); ?></a></td>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>