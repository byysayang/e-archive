<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Krub%3A700"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400%2C700"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lilita+One%3A400"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Inria+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="login2.css" media="screen" title="no title">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./styles/form-kardus.css"/>
    <title>Tambah Data Kardus</title>
  </head>

  <body>
    <div class="form-kardus">
      <h1>DATA KARDUS</h1>

      <form action="" method="POST" class="form-item">
        <div class="kotak-id-kardus">KODE KARDUS</div>
        <p><a class="titik-dua-1">:</a></p>
        <input type="text" name="kd_kardus" class="id-kardus"></input>

        <div class="kotak-judul-kardus">JUDUL KARDUS</div>
        <p><a class="titik-dua-2">:</a></p>
        <input type="text" name="judul_kardus" class="judul-kardus"></input>

        <div class="kotak-kd-transaksi">JUDUL TRANSAKSI</div>
        <p><a class="titik-dua-3">:</a></p>
        <select name="id_transaksi" class="kd-transaksi">
          <option>Pilih Transaksi</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_transaksi") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_transaksi]> $data[judul_transaksi]</option>";
                  }
                ?>
        </select>
        <div class="kotak-tgl-transaksi">TANGGAL DITERIMA</div>
        <p><a class="titik-dua-4">:</a></p>
        <select name="tgl_diterima" class="tgl-transaksi">
          <option>Pilih Tanggal</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_transaksi") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_transaksi]> $data[tgl_diterima]</option>";
                  }
                ?>
        </select>

        <div class="kotak-kd-rak">KODE RAK</div>
        <p><a class="titik-dua-5">:</a></p>
        <select name="id_rak" class="kd-rak">
          <option>Pilih Kode Rak</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_rak") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_rak]> $data[kd_rak]</option>";
                  }
                ?>
          </select>

        <div class="kotak-kt-rak">KETERANGAN RAK</div>
        <p><a class="titik-dua-6">:</a></p>
        <select name="kt_rak" class="kt-rak">
          <option>Pilih Rak</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_rak") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_rak]> $data[keterangan]</option>";
                  }
                ?>
        </select>

        <div class="kotak-baris">BARIS</div>
        <p><a class="titik-dua-7">:</a></p>
        <select name="baris_ke" class="baris">
          <option>Pilih Baris</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_rak") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_rak]> $data[baris_ke]</option>";
                  }
                ?>
        </select>

        <div class="kotak-kolom">KOLOM</div>
        <p><a class="titik-dua-8">:</a></p>
        <select name="kolom_ke" class="kolom">
          <option>Pilih Kolom</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_rak") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_rak]> $data[kolom_ke]</option>";
                  }
                ?>
        </select>

        <div class="kotak-kd-shaf">KODE SHAF</div>
        <p><a class="titik-dua-9">:</a></p>
        <select name="id_shaf" class="kd-shaf">
          <option>Pilih Kode Shaf</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_shaf") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_shaf]> $data[kd_shaf]</option>";
                  }
                ?>
        </select>

        <div class="kotak-kt-shaf">KETERANGAN SHAF</div>
        <p><a class="titik-dua-10">:</a></p>
        <select name="id_shaf" class="kt-shaf">
          <option>Pilih Keterangan Shaf</option>
                <?php
                  include "koneksi.php";
                  $query = mysqli_query($conn,"SELECT * FROM tbl_shaf") or die (mysqli_error($conn));
                  while($data = mysqli_fetch_array($query)){
                  echo "<option value=$data[id_shaf]> $data[kt_shaf]</option>";
                  }
                ?>
        </select>

        <div class="kotak-sub-total">SUB TOTAL</div>
        <p><a class="titik-dua-11">:</a></p>
        <input type="text" name="sub_total_kardus" class="sub-total"></input>

        <a href="kardus.php">
            <button type="submit" name="simpan" class="btn-simpan">SIMPAN</button>
          </a>
          <a href="kardus.php">
            <button type="submit" name="batal" class="btn-batal">BATAL</button>
        </a>
      </form>
    </div>
  </body>
</html>

<?php
if(isset($_POST['simpan'])){

$kd_kardus = $_POST['kd_kardus'];
$judul_kardus = $_POST['judul_kardus'];
$id_transaksi = $_POST['id_transaksi'];
$id_rak = $_POST['id_rak'];
$id_shaf = $_POST['id_shaf'];
$sub_total_kardus = $_POST['sub_total_kardus'];

mysqli_query($conn,"INSERT INTO tbl_kardus VALUES('','$kd_kardus','$judul_kardus','$id_transaksi','$id_rak','$id_shaf','$sub_total_kardus')
") OR die(mysqli_error($conn));

?>

<script type="text/javascript">
alert("Data Berhasil Ditambahkan");
window.location='kardus.php';
</script>

<?php
}  if(isset($_POST['batal'])){
?>

<script type="text/javascript">
alert("Tambah Data Dibatalkan");
window.location='kardus.php';
</script>

<?php
}
?>