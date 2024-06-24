<?php
 include "koneksi.php";
 $id = $_GET['id_uk'];
 $ambilData = mysqli_query($conn,"SELECT * FROM unit_kerja WHERE id_uk='$id'");
 $data = mysqli_fetch_array($ambilData);
?>


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
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inria+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="login2.css" media="screen" title="no title">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./styles/form-uk.css"/>
    <title>Edit Data Unit Kerja</title>
  </head>

  <body>
    <div class="form-dt-uk">
      <h1>EDIT UNIT KERJA</h1>

      <div class="kotak-id-uk">KODE</div>
      <p><a class="titik-dua-1">:</a></p>
      <input type="text" name="kd_uk" value="<?php echo $data['kd_uk'] ?>" class="id-uk"></input>

      <div class="kotak-eselon-2">ESELON II</div>
      <p><a class="titik-dua-2">:</a></p>
      <input type="text" name="eselon_2" value="<?php echo $data['eselon_2'] ?>" class="eselon-2"></input>
      
      <div class="kotak-eselon-3">ESELON III</div>
      <p><a class="titik-dua-3">:</a></p>
      <input type="text" name="eselon_3" value="<?php echo $data['eselon_3'] ?>" class="eselon-3"></input>

      <div class="kotak-eselon-4">ESELON IV</div>
      <p><a class="titik-dua-4">:</a></p>
      <input type="text" name="eselon_4" value="<?php echo $data['eselon_4'] ?>" class="eselon-4"></input>

      <a href="unit-kerja.php">
        <button type="submit" name="simpan" class="btn-simpan">SIMPAN</button>
      </a>

      <a href="unit-kerja.php">
        <button type="submit" name="batal" class="btn-batal">BATAL</button>
      </a>

    </div>
  </body>
</html>


<?php
if(isset($_POST['simpan'])){
    $kd_uk = $_POST['kd_uk'];
    $eselon_2 = $_POST['eselon_2'];
    $eselon_3 = $_POST['eselon_3'];
    $eselon_4 = $_POST['eselon_4'];

    mysqli_query($conn,"UPDATE unit_kerja 
    SET kd_uk='$kd_uk',eselon_2='$eselon_2',eselon_3='$eselon_3',eselon_4='$eselon_4'
    WHERE id_uk='$id'
    ") OR die(mysqli_error($conn));
?>
<script type="text/javascript">
alert("Data Berhasil Diedit");
window.location='unit-kerja.php';
</script>

<?php
}  if(isset($_POST['batal'])){
?>

<script type="text/javascript">
alert("Data Gagal Diedit");
window.location='unit-kerja.php';
</script>

<?php
}
?>