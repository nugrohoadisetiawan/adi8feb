<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <table border="1">
    <h4> <a  href="tambah.php" >TAMBAH</a></h4>
        <tr>
            <td>Nama peminjam</td>
            <td>Alamat</td>
            <td>umur</td>
            <td>keperluan</td>
            <td>Jaminan</td>
            <td>No rangka</td>
            <td>Merek</td>
            <td>Jenis montor</td>
            <td>Tahun montor</td>
            <td>Tanggal pinjam</td>
            <td>Tanggal kembali</td>
            <td>diubah</td>
        </tr>

        <?php
        include("koneksi.php");
        $query = mysqli_query($db, "SELECT * FROM tb_peminjam INNER JOIN tb_montor ON tb_peminjam.id_motor1 = tb_montor.id_motor1 ");
        
        while($pinjam=mysqli_fetch_array($query)){
            echo"<tr>";
                  echo"<td>".$pinjam['nama_peminjam']."</td>";
                  echo"<td>".$pinjam['alamat']."</td>";
                  echo"<td>".$pinjam['umur']."</td>";
                  echo"<td>".$pinjam['keperluan']."</td>";
                  echo"<td>".$pinjam['jaminan']."</td>";
                  echo"<td>".$pinjam['nomor_rangka']."</td>";
                  echo"<td>".$pinjam['merek']."</td>";
                  echo"<td>".$pinjam['jenis_montor']."</td>";
                  echo"<td>".$pinjam['tahun_montor']."</td>";
                  echo"<td>".$pinjam['tanggal_pinjam']."</td>";
                  echo"<td>".$pinjam['tanggal_kembali']."</td>";
                  echo "<td>";
                       echo "<a href='edit.php?id=".$pinjam['id_peminjam']."'>Edit</a> |";
                       echo "<a href='hapus.php?id=".$pinjam['id_peminjam']."'>hapus</a>";
                       echo "</td>";
                  echo"</tr>";
        }
        ?>
</body>
</html>