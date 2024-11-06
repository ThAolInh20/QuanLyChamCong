<?php
require_once(__DIR__ . '/../models/NhanVien.php');

class NhanVienController {
    private $conn;
    

    public function __construct($dbConnection) {
        $this->conn = $dbConnection; // Use the provided database connection
    }

    // Add a new employee
    public function addNV($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong) {
        $nhanVien = new NhanVien($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong);
        return $nhanVien->add(); // Call the add method from the NhanVien model
        
    }

    // Retrieve all employees
    public function getAllNV() {
        $nhanVien = new NhanVien("", "", "", "", "", "", "", "", "", "", $this->conn); // Create a NhanVien object with the DB connection
        return $nhanVien->getALL(); // Call the getALL method from the NhanVien model
    }

    // Update employee information
    public function updateNV($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong) {
        $nhanVien = new NhanVien($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong);
        return $nhanVien->update(); // Call the update method from the NhanVien model
       
    }

    // Delete an employee
    public function deleteNV($maNV) {
        $nhanVien = new NhanVien($maNV, "", "", "", "", "", "", "", "", "", $this->conn); // Create a NhanVien object with the DB connection
        return $nhanVien->delete(); // Call the delete method from the NhanVien model
        
    }
}
?>
