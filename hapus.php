<?php
//------------koneksi---------------------//
include("koneksi.php");
//---------------------------------------//
$id = $_GET['id'];
//--------query------------------------//
$sql= "DELETE FROM tb_peminjam where id_peminjam=$id";
$query = mysqli_query($db, $sql);
//---------------------------------------------------//
$sql= "DELETE FROM tb_montor where id_motor1=$id";
$query = mysqli_query($db, $sql);
//-------------------------------------------------//
if($query){
    header("Location:tampil.php?status=sukses");
}else{
    die("akses dilarang");  
}
?>