<?php

include "../koneksi.php";

$nip = $_POST['nip'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$no_telp = $_POST['no_telp'];

if($simpan = mysqli_query($connect,"INSERT INTO guru (nip, nama, alamat, jenis_kelamin, no_telp) VALUES ('$nip','$nama','$alamat','$jenis_kelamin','$no_telp')")) {
	echo "<script>alert('Berhasil Simpan Data Guru');</script>";
	echo "<meta http-equiv='refresh' content='0; url=data-guru.php'>";
} else {
	echo "<script>alert('Gagal Simpan Data Guru');</script>";
	echo "<meta http-equiv='refresh' content='0; url=data-guru.php'>";
}

$connect->close();
exit();

?>