<?php

$dbhost = 'localhost:3306';
$dbuser = 'root';
$dbpass = '';
$dbname = 'spk_topsis_guru';

$connect = new mysqli($dbhost,$dbuser,$dbpass,$dbname);

if($connect -> connect_error) {
	die('Koneksi gagal: '.$connect->connect_error);
}

?>