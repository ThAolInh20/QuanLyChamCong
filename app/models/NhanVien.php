<?php
    require_once(__DIR__ . '/../../config/database.php');
    class NhanVien{
        private $maNV;
        private $tenDangNhap;
        private $matKhau;
        private $thamNien;
        private $email;
        private $sdt;
        private $stk;
        private $diaChi;
        private $chucVu;
        private $luong;
        private $conn;
        
        public function __construct($maNV, $tenDangNhap, $matKhau, $thamNien, $email, $sdt, $stk, $diaChi, $chucVu, $luong) {
            $this->maNV = $maNV;
            $this->tenDangNhap = $tenDangNhap;
            $this->matKhau = $matKhau;
            $this->thamNien = $thamNien;
            $this->email = $email;
            $this->sdt = $sdt;
            $this->stk = $stk;
            $this->diaChi = $diaChi;
            $this->chucVu = $chucVu;
            $this->luong = $luong;
            global $conn; // Giả sử $conn đã được khởi tạo trong config/database.php
            $this->conn = $conn;
        }
        // Getter and Setter for $maNV
        public function getMaNV() {
            return $this->maNV;
        }

        public function setMaNV($maNV) {
            $this->maNV = $maNV;
        }

        // Getter and Setter for $tenDangNhap
        public function getTenDangNhap() {
            return $this->tenDangNhap;
        }

        public function setTenDangNhap($tenDangNhap) {
            $this->tenDangNhap = $tenDangNhap;
        }

        // Getter and Setter for $matKhau
        public function getMatKhau() {
            return $this->matKhau;
        }

        public function setMatKhau($matKhau) {
            $this->matKhau = $matKhau;
        }

        // Getter and Setter for $thamNien
        public function getThamNien() {
            return $this->thamNien;
        }

        public function setThamNien($thamNien) {
            $this->thamNien = $thamNien;
        }

        // Getter and Setter for $email
        public function getEmail() {
            return $this->email;
        }

        public function setEmail($email) {
            $this->email = $email;
        }

        // Getter and Setter for $sdt
        public function getSdt() {
            return $this->sdt;
        }

        public function setSdt($sdt) {
            $this->sdt = $sdt;
        }

        // Getter and Setter for $stk
        public function getStk() {
            return $this->stk;
        }

        public function setStk($stk) {
            $this->stk = $stk;
        }

        // Getter and Setter for $diaChi
        public function getDiaChi() {
            return $this->diaChi;
        }

        public function setDiaChi($diaChi) {
            $this->diaChi = $diaChi;
        }

        // Getter and Setter for $chucVu
        public function getChucVu() {
            return $this->chucVu;
        }

        public function setChucVu($chucVu) {
            $this->chucVu = $chucVu;
        }

        // Getter and Setter for $luong
        public function getLuong() {
            return $this->luong;
        }

        public function setLuong($luong) {
            $this->luong = $luong;
        }
    
        //SUA THONG TIN NHA VIEEN
        public function update(){
            $sql = "UPDATE `nhanvien` SET `TenDangNhap`=?,`MatKhau`=?,`ThamNien`=?,`Email`=?,`SDT`=?,`STK`=?,`DiaChi`=?,`ChucVu`=?,`Luong`=? WHERE MaNV = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssisiissis" , $this->tenDangNhap, $this->matKhau,$this->thamNien,$this->email,$this->sdt,$this->stk,$this->diaChi,$this->chucVu,$this->luong,$this->maNV);
            $stmt->execute();
            if ($stmt->error) {
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        //THÊM NHÂN VIÊN
        public function add(){
            $sql = "INSERT INTO `nhanvien`(`MaNV`, `TenDangNhap`, `MatKhau`, `ThamNien`, `Email`, `SDT`, `STK`, `DiaChi`, `ChucVu`, `Luong`) VALUES (?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssisiissi", $this->maNV, $this->tenDangNhap, $this->matKhau,$this->thamNien,$this->email,$this->sdt,$this->stk,$this->diaChi,$this->chucVu,$this->luong);
            $stmt->execute();
            if ($stmt->error) {
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        //XÓA NHÂN VIÊN
        public function delete(){
            $sql = "DELETE FROM `nhanvien` WHERE ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("s",$this->maNV);
            $stmt->execute();
            if($stmt->error){
                die('Error: ' . $stmt->error);
            }
            $stmt->close();
        }
        public function getNV(){
            $sql = "SELECT * FROM `nhanvien` WHERE `maNV` = ?";
            $stmt = $this->conn->prepare($sql);
        
            // Kiểm tra xem câu lệnh prepare có thành công không
            if (!$stmt) {
                die('Error preparing statement: ' . $this->conn->error);
            }
        
            // Gắn giá trị cho `maNV`
            $stmt->bind_param("s", $this->maNV);
            $stmt->execute();
        
            // Lấy kết quả
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
        
                // Tạo đối tượng `NhanVien` và gán giá trị từ kết quả truy vấn
                $nv = new NhanVien($row['MaNV'], 
                                    $row['TenDangNhap'], 
                                    $row['MatKhau'],
                                    $row['ThamNien'],
                                    $row['Email'],
                                    $row['SDT'],
                                    $row['STK'],
                                    $row['DiaChi'],
                                    $row['ChucVu'],
                                    $row['Luong']);
                
             
        
                // Đóng kết quả và statement
                $result->close();
                
            } else {
                echo "Không tìm thấy nhân viên với mã nhân viên này.";
                $nv = null;
            }
        
            $stmt->close();
            return $nv;
        }
        

        //XEM DANH SÁCH NHÂN VIÊN
        public function getALL(){
            $sql = "SELECT * FROM nhanvien";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $result = $stmt->get_result();

            $nhanViens = [];
            while ($row = $result->fetch_assoc()) {
                $nhanVien = new NhanVien(
                    $row['MaNV'], 
                    $row['TenDangNhap'], 
                    $row['MatKhau'],
                    $row['ThamNien'],
                    $row['Email'],
                    $row['SDT'],
                    $row['STK'],
                    $row['DiaChi'],
                    $row['ChucVu'],
                    $row['Luong'],
                );
                $nhanViens[] = $nhanVien;
            }

            $stmt->close();
            return $nhanViens;
        }

    }
    
?>