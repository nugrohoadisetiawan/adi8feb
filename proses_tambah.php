<?php
include("koneksi.php");
if(isset($_POST['kirim'])){
    $Nama=$_POST['nama_peminjam'];
    $Alamat=$_POST['alamat'];
    $Umur=$_POST['umur'];
    $Keperluan=$_POST['keperluan'];
    $Jaminan=$_POST['jaminan'];
    $Nomor_Rangka=$_POST['nomor_rangka'];
    $Merek=$_POST['merek'];
    $Jenis_Montor=$_POST['jenis_montor'];
    $Tahun_Montor=$_POST['tahun_montor'];
    $Tanggal_Pinjam=$_POST['tanggal_pinjam'];
    $Tanggal_Kembali=$_POST['tanggal_kembali'];

    $sql="INSERT INTO tb_montor(nomor_rangka,merek,jenis_montor,tahun_montor,tanggal_pinjam,tanggal_kembali) 
    VALUES ('$Nomor_Rangka','$Merek','$Jenis_Montor','$Tahun_Montor','$Tanggal_Pinjam','$Tanggal_Kembali' )";
    $query=mysqli_query($db, $sql);

    $sql="SELECT max(id_motor1) AS motor1_id FROM tb_montor LIMIT 1";
    $query=mysqli_query($db, $sql);

    $data = mysqli_fetch_array($query);
    $as = $data ['motor1_id'];

    $sql="INSERT INTO tb_peminjam(nama_peminjam,alamat,umur,keperluan,jaminan,id_motor1)
     VALUES ('$Nama','$Alamat','$Umur','$Keperluan','$Jaminan','$as' )";
    $query=mysqli_query($db, $sql);

    
    if($query){
                    header('location:tampil.php?status:sukses');
                }else{
                    header('location:tampil.php?status:gagal'); 
                }
            }
            ?>