<?php

require_once '../../controllers/CaLamViecController.php';
global $conn;
$CaLamViec = new CaLamViec();
$CaLamViecs = $CaLamViec->getALL($conn);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CaLamViec List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</head>

<body>
    <div class="container mt-5">
        <h1 class="mb-4">Danh sách các ca làm việc</h1>
        <a href="add_ca.php" class="btn btn-success mb-3">Thêm 1 ca làm việc</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Mã Ca</th>
                    <th>Tên Ca</th>
                    <th>Thời gian</th>
                    
                    <th>Ngày làm việc</th>
                    <th>Số lượng max</th>
                    <th>Thao tác<colgroup></colgroup></th>

                </tr>
            </thead>
            <tbody>
                <?php foreach ($CaLamViecs as $CaLamViec) : ?>
                    <tr>
                        
                        <td><a href="edit_ca.php?maCa=<?php echo $CaLamViec->getMaCa(); ?>"><?php echo $CaLamViec->getMaCa(); ?></a></td>
                        <td><?php echo $CaLamViec->getTenCa(); ?></td>
                        <td><?php echo $CaLamViec->getBatDau(); ?> - <?php echo $CaLamViec->getKetThuc(); ?></td>
                    
                        <td><?php echo $CaLamViec->getNgayLamViec(); ?></td>
                        <td><?php echo $CaLamViec->getSoLuong(); ?></td>
                        <td>
                            <a href="edit_ca.php?maNV=<?php echo $CaLamViec->getMaCa(); ?>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="process_ca.php?action=delete&maCa=<?php echo $CaLamViec->getMaCa(); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this CaLamViec?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>