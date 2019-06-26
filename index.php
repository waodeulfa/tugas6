<?php
	$koneksi = mysqli_connect("localhost","root","","db_mahasiswa");
?>
<form action="" method="post">
	<table align="center">
		<tr>
			<td>Nama</td>
			<td> :</td>
			<td><input type="text" name="nama"></td>
		</tr>
		<tr>
			<td>Nim</td>
			<td> :</td>
			<td><input type="text" name="nim"></td>
		</tr>
		<tr>
			<td>Jurusan</td>
			<td> :</td>
			<td><input type="text" name="jurusan"></td>
		</tr>
		<tr>
			<td>Alamat</td>
			<td> :</td>
			<td><input type="text" name="alamat"></td>
		</tr>
		<tr>
			<td>Nomor Telp</td>
			<td> :</td>
			<td><input type="text" name="nomor_telp"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Tambah Data" name="Tambah"></td>
		</tr>	
	</table>

</form>
<table border="1" align="center">
	<thead>
		<th>Nomor</th>
		<th>Nama</th>
		<th>Nim</th>
		<th>Jurusan</th>
		<th>Alamat</th>
		<th>Nomor Telp</th>
		<th>Aksi</th>
	</thead>
	<tbody>
		<?php
			$sqlView="SELECT * FROM mahasiswa";
			$cekView=mysqli_query($koneksi,$sqlView);
			$nomor= 1;
			while ($data=mysqli_fetch_array($cekView)) {
		?>
			<tr>
				<td><?=$nomor ?></td>
				<td><?=$data[1]?></td>
				<td><?=$data[2]?></td>
				<td><?=$data[3]?></td>
				<td><?=$data[4]?></td>
				<td><?=$data[5]?></td>			
				<td>
					<a href="index.php?id_mahasiswa=<?=$data[0]?>">Hapus</a>
				</td>
			</tr>
				
				<?php
					$nomor++;
					}
				?>
	</tbody>
</table>

<?php
	if (isset($_POST['Tambah'])) {
		$sqlInsert="INSERT INTO `mahasiswa` (`nama`, `nim`, `jurusan`, `alamat`, `nomor_telp`) VALUES ('$_POST[nama]','$_POST[nim]','$_POST[jurusan]','$_POST[alamat]','$_POST[nomor_telp]')";
		$cekInput=mysqli_query($koneksi,$sqlInsert);

		if ($cekInput) {
			echo "<script> window.location='index.php'</script>";
		} else{
			echo "Data Telah Masuk";
		}
	} 
		if(isset($_GET['id_mahasiswa'])) {
			$sqlDelete = " DELETE from mahasiswa WHERE id_mahasiswa = '$_GET[id_mahasiswa]'";
			$cekDelete = mysqli_query($koneksi, $sqlDelete);

			if($cekDelete) {
				echo "<script> window.location ='index.php'</script>";
			}else {
				echo "data telah dihapus...";
			}
		}

?>

