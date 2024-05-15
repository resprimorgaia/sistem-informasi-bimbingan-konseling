<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<head>
	<title>Cetak PDF</title>
	<style>
		table {
			border-collapse:collapse; 
			table-layout:fixed;width: 600px;
		}
		table td {
			word-wrap:break-word;
			width: 20%;
		}
	</style>
</head>
<body>

<h5 style="text-align: center;">
<img src="../assets/img/logosmkk.png" alt="" width="50"> <br>
<b>LAPORAN DATA PELANGGARAN SISWA</b> <br>
SMK NEGERI 10 SURABAYA</h5>
<hr border="1px">
<table border="1" style="width:100%;">
<tr>
	<th>Nama Siswa</th>
	<th>Pelanggaran</th>
	<th>Sanksi</th>
	<th>Point</th>
	<th>Tanggal Kejadian</th>
	<th>Keterangan</th>
</tr>
<?php
// Load file koneksi.php
include "../koneksi/+connection.php";
 
$query = "SELECT * FROM tbl_siswa_pelanggaran"; // Tampilkan semua data gambar
$sql = mysqli_query($connection, $query); // Eksekusi/Jalankan query dari variabel $query
$row = mysqli_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql
 
if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
    while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
        echo "<tr>";
        echo "<td>".$data['nm_siswa']."</td>";
        echo "<td>".$data['nm_pelanggaran']."</td>";
        echo "<td>".$data['nm_sanksi']."</td>";
        echo "<td>".$data['poin']."</td>";
        echo "<td>".$data['tgl_kejadian']."</td>";
        echo "<td>".$data['ket']."</td>";
        echo "</tr>";
    }
}else{ // Jika data tidak ada
    echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
}
?>
</table>

<br><br>
<div class="container-fluid">	
<div class="row">
	<div class="col-8"></div>
	<div class="col-4"><p><strong>Surabaya, <?php echo date (" d F Y") ?></strong></p></div>
</div>
<div class="row">
	<div class="col-8"><strong>Koordinator Guru BK</strong></div>
	<div class="col-4"><strong>Kepala Sekolah</strong></div>
</div><br><br><br>
<div class="row">
	<div class="col-8">
	<p class="text-decoration-underline"><strong>Arif Kusyanti, S.Pd., M.Pd</strong></p>
	<b>NIP. </b>
	</div>
	<div class="col-4">
	<p class="text-decoration-underline"><strong>H. Kamus, S.Pd., MM</strong></p>
	<b>NIP. 197104032000031004</b>
	</div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>

<?php
echo "<script>window.print()</script>";
?>