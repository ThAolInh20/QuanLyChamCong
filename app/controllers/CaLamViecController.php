<?php
require_once(__DIR__ . '/../models/CaLamViec.php');
class CaLamViecController{
    private $conn;
    public function __construct($dbConnection) {
        global $conn;
        $this->conn = $conn; // Use the provided database connection
    }
    public function addCa($maCa, $tenCa, $batDau, $ketThuc, $ngayLamViec, $soLuong){
        $ca = new CaLamViec();
        $ca->setCa($maCa, $tenCa, $batDau, $ketThuc, $ngayLamViec, $soLuong);
        return $ca->add($this->conn);   
    }
    public function updateCa($maCa, $tenCa, $batDau, $ketThuc, $ngayLamViec, $soLuong){
        $ca = new CaLamViec();
        $ca->setCa($maCa, $tenCa, $batDau, $ketThuc, $ngayLamViec, $soLuong);
        return $ca->update($this->conn);   
    }
    public function deleteCa($maCa){
        $ca = new CaLamViec();
        $ca->setMaCa($maCa);
        return $ca->delete($this->conn);   
    }

    public function getAll(){
        $ca = new CaLamViec();
        return $ca->getALL($this->conn);
    }


}
?>