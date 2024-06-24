<?php
 include "koneksi.php";
 $id = $_GET['id_transaksi'];
 $ambilData = mysqli_query($conn,"SELECT * FROM tbl_transaksi WHERE id_transaksi='$id'");
 $data = mysqli_fetch_array($ambilData);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
</head>
<script>
function Export2Doc(element, filename = '') {

            var preHtml = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'><head><meta charset='utf-8'><title>Export HTML To Doc</title></head><body>";
            var postHtml = "</body></html>";

            var html = preHtml + document.getElementById(element).innerHTML + postHtml;

            var blob = new Blob(['\ufeff', html], {
                type: 'application/msword'
            });

            var url = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(html);


            filename = filename ? filename + '.doc' : 'document.doc';


            var downloadLink = document.createElement("a");

            document.body.appendChild(downloadLink);

            if (navigator.msSaveOrOpenBlob) {
                navigator.msSaveOrOpenBlob(blob, filename);
            } else {

                downloadLink.href = url;
                downloadLink.download = filename;
                downloadLink.click();
            }

            document.body.removeChild(downloadLink);
        }

</script>

<body>
    <div id="exportContent">
        <div class="kopsurat">
            <img src="./assets/logo.jpeg">
            <h3>PEMERINTAH   PROVINSI   JAWA  TIMUR</h3>
            <h3>DINAS  PEKERJAAN  UMUM  BINA  MARGA</h3>   
            <h3>Jl.  Gayung  Kebonsari  167 Telp.( 031 )  8290186,  8282690</h3>
            <h3>S U R A B A Y A – 60235</h3>
        </div>
        <div class="isisurat">
            Pada hari ini Senin Tanggal Delapan Belas bulan Maret tahun Dua Ribu Dua Empat, bertempat di Surabaya, kami yang bertanda tangan di bawah ini :<br>
            1.	Nama		: <?php echo $data['id_pengirim'] ?><br>
            <p style="margin-left: 12.5px; margin-top: 2.5px;">NIP / NIK	: <?php echo $data['id_pengirim'] ?></p>
            <p style="margin-left: 12.5px; margin-top: -12.5px;">Jabatan	: <?php echo $data['id_pengirim'] ?></p>  
            <p style="margin-left: 12.5px; margin-top: -12.5px;">Selanjutnya disebut PIHAK PERTAMA bertindak untuk dan atas nama</p>
            ……………………………………………………………………………………………………<br>
            2.	Nama		: <?php echo $data['id_penerima'] ?><br>
            <p style="margin-left: 12.5px; margin-top: 2.5px;">NIP / NIK	: <?php echo $data['id_penerima'] ?></p>
            <p style="margin-left: 12.5px; margin-top: -12.5px;">Jabatan	: <?php echo $data['id_penerima'] ?></p>
            <p style="margin-left: 12.5px; margin-top: -12.5px;">Selanjutnya disebut PIHAK KEDUA bertindak untuk dan atas nama Tim Arsip Dinas PU Bina Marga Prov. Jatim, telah melaksanakan serah terima <?php echo $data['judul_transaksi'] ?>. Yang memiliki nilai guna dan kepentingan Dinas PU Bina Marga Prov. Jatim seperti yang tercantum dalam daftar terlampir untuk disimpan di Record Center Dinas PU Bina Marga Prov. Jatim.</p>
            <p style="">Surabaya, <?php echo $data['tgl_diterima'] ?></p>
        </div>
        <div class="ttd">
            PIHAK KEDUA PIHAK PERTAMA
                                    <br>
                                    <br>
                                    <br>
                                    <br>
            <?php echo $data['id_pengirim'] ?><?php echo $data['id_penerima'] ?> <br>
            <?php echo $data['id_pengirim'] ?><?php echo $data['id_penerima'] ?> <br>



        </div>
    </div>
    <button onclick="Export2Doc('exportContent');">Export As .doc</button>
</body>
</html>