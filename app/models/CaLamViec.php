<?php 
    require_once(__DIR__ . '/../../config/database.php');
    class CaLamViec{
        private $maCa;
        private $tenCa;
        private $batDau;
        private $ketThuc;
        private $ngayLamViec;
        private $soLuong;

        public function __construct(){

        }
        public function setCa($maCa, $tenCa, $batDau, $ketThuc, $ngayLamViec, $soLuong){
            $this->maCa = $maCa;
            $this->tenCa = $tenCa;
            $this->batDau = $batDau;
            $this->ketThuc = $ketThuc;
            $this->ngayLamViec = $ngayLamViec;
            $this->soLuong = $soLuong;
        }
        public function getMaCa() {
            return $this->maCa;
        }

        public function setMaCa($maCa) {
            $this->maCa = $maCa;
        }
        public function getTenCa() {
            return $this->tenCa;
        }

        public function setTenCa($tenCa) {
            $this->tenCa = $tenCa;
        }
        public function getBatDau() {
            return $this->batDau;
        }

        public function setBatDau($batDau) {
            $this->batDau= $batDau;
        }
        public function getKetThuc() {
            return $this->ketThuc;
        }

        public function setKetThuc($ketThuc) {
            $this->ketThuc= $ketThuc;
        }
        public function getNgayLamViec() {
            return $this->ngayLamViec;
        }

        public function setNgayLamViec($ngayLamViec) {
            $this->ngayLamViec = $ngayLamViec;
        }
        public function getSoLuong() {
            return $this->soLuong;
        }

        public function setSoluong($soLuong) {
            $this->soLuong = $soLuong;
        }
        

        //SUA 
        public function update($conn){
            $sql = "UPDATE `calamviec` SET `TenCa`=?',`BatDau`=?,`KetThuc`=?,`NgayLamViec`=?,`SoLuongMax`=? WHERE `MaCa`=?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ssssis" ,$this->tenCa, $this->batDau, $this->ketThuc, $this->ngayLamViec, $this->soLuong, $this->maCa);
            $stmt->execute();
            if ($stmt->error) {
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        //THÊM 
        public function add($conn){
            $sql = "INSERT INTO `calamviec`(`MaCa`, `TenCa`, `BatDau`, `KetThuc`, `NgayLamViec`, `SoLuongMax`) VALUES (?,?,?,?,?,?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssssi" , $this->maCa,$this->tenCa, $this->batDau, $this->ketThuc, $this->ngayLamViec, $this->soLuong);
            $stmt->execute();
            if ($stmt->error) {
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        //XÓA
        public function delete($conn){
            $sql = "DELETE FROM `calamviec` WHERE `maCa` = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s",$this->maCa);
            $stmt->execute();
            if($stmt->error){
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        public function getCa($conn){
            $sql = "SELECT * FROM `nhanvien` WHERE `maCa` = ?";
            $stmt = $conn->prepare($sql);
        
            // Kiểm tra xem câu lệnh prepare có thành công không
            if (!$stmt) {
                die('Error preparing statement: ' . $conn->error);
            }
        
            // Gắn giá trị cho `maNV`
            $stmt->bind_param("s", $this->maCa);
            $stmt->execute();
        
            // Lấy kết quả
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
        
                // Tạo đối tượng `CA và gán giá trị từ kết quả truy vấn
                $ca = new CaLamViec();
                $ca->maCa = $row['MaCa'];
                $ca->tenCa = $row['TenCa'];
                $ca->batDau = $row['BatDau'];
                $ca->ketThuc = $row['KetThuc'];
                $ca->ngayLamViec = $row['NgayLamViec'];
                $ca->soLuong = $row['SoLuongMax'];
                // Đóng kết quả và statement
                $result->close();
                
            } else {
                echo "Không tìm thấy ca nào.";
                $ca = null;
            }
        
            $stmt->close();
            return $ca;
        }
        

        //XEM DANH SÁCH NHÂN VIÊN
        public function getALL($conn){
            $sql = "SELECT * FROM calamviec";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $result = $stmt->get_result();

            $Cas = [];
            while ($row = $result->fetch_assoc()) {
                $ca = new CaLamViec();
                $ca->maCa = $row['MaCa'];
                $ca->tenCa = $row['TenCa'];
                $ca->batDau = $row['BatDau'];
                $ca->ketThuc = $row['KetThuc'];
                $ca->ngayLamViec = $row['NgayLamViec'];
                $ca->soLuong = $row['SoLuongMax'];
                $Cas[] = $ca;
            }

            $stmt->close();
            return $Cas;
        }

    }

?>