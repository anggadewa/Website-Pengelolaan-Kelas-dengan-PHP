<?php
require_once "../core/init.php";
if( !isset($_SESSION['level'])){
  header('Location: ../login.php');
}
?>

<!doctype html>
<html lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin - Kelas 4IA18</title>
  <meta name="description" content="Sufee Admin - HTML5 Admin Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="apple-touch-icon" href="apple-icon.png">
  <link rel="shortcut icon" href="favicon.ico">

  <link rel="stylesheet" href="assets/css/normalize.css">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/themify-icons.css">
  <link rel="stylesheet" href="assets/css/flag-icon.min.css">
  <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
  <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
  <link rel="stylesheet" href="assets/scss/style.css">
  <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">

</head>
<body>
  <!-- Left Panel -->

  <aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">

      <div class="navbar-header">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand" href="admin.php"><img src="../img/logo.png" alt="Logo"></a>
      </div>

      <div id="main-menu" class="main-menu collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active">
            <a href="admin.php"> <i class="menu-icon fa fa-home"></i>Beranda</a>
          </li>
          <h3 class="menu-title">Bagian Informasi</h3><!-- /.menu-title -->
          <li class="menu-item-has-children dropdown">
            <a href="admintugas.php"> <i class="menu-icon fa fa-laptop"></i>Informasi Tugas</a>
            <a href="adminkelas.php"> <i class="menu-icon fa fa-tasks"></i>Informasi Kelas</a>
            <a href="adminlab.php"> <i class="menu-icon fa fa-code"></i>Informasi Laboratorium</a>
          </li>

          <h3 class="menu-title">Bagian Upload</h3><!-- /.menu-title -->

          <li class="menu-item-has-children dropdown">
            <a href="adminuploadkelas.php"> <i class="menu-icon fa fa-upload"></i>Upload Materi Kelas</a>
            <a href="adminuploadlab.php"> <i class="menu-icon fa fa-upload"></i>Upload Materi Lab</a>
          </li>

          <h3 class="menu-title">Bagian Download</h3><!-- /.menu-title -->

          <li class="menu-item-has-children dropdown">
            <a href="#"> <i class="menu-icon fa fa-download"></i>Download Tugas</a>
          </li>

          <h3 class="menu-title">Kelola Akun</h3><!-- /.menu-title -->
          <li class="menu-item-has-children dropdown">
            <a href="admintambah.php"> <i class="menu-icon fa fa-plus"></i>Tambah Akun</a>
            <a href="adminedit.php"> <i class="menu-icon fa fa-edit"></i>Edit Akun</a>
            <a href="adminhapus.php"> <i class="menu-icon fa fa-trash"></i>Hapus Akun</a>
            <!-- <a href="adminganti.php"> <i class="menu-icon fa fa-cogs"></i>Ganti Password Akun</a> -->

          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </nav>
  </aside><!-- /#left-panel -->

  <!-- Left Panel -->

  <!-- Right Panel -->

  <div id="right-panel" class="right-panel">

    <!-- Header-->
    <header id="header" class="header">

      <div class="header-menu">

        <div class="col-sm-7">
          <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
          <div class="header-left">
            <h3>Hapus Akun</h3>
          </div>
        </div>

        <div class="col-sm-5">
          <div class="float-right">
            <h6><a href="../logout.php"> <i class="fa fa-sign-out"></i> Logout</a></h6>
          </div>
        </div>
      </div>

    </header><!-- /header -->
    <!-- Header-->

    <div class="content mt-3">
      <div class="container">
        <div class="col-md-12">
          <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>No</th>
                <th>Username</th>
                <th>Nama</th>
                <th>Level</th>
                <th>Fitur</th>
              </tr>
            </thead>
            <tbody>
              <?php

              $no = 1;
              $data = mysqli_query($link,"SELECT * FROM people");
              while($r = mysqli_fetch_array($data)){
                ?>
                <tr>
                  <td><?php echo $no++ ?></td>
                  <td><?php echo $r['username'];?></td>
                  <td><?php echo $r['nama_mhs'];?></td>
                  <td><?php echo $r['level'];?></td>
                  <td> <a href="hapus.php?username=<?php echo $r['username']; ?>"> <strong>HAPUS</strong> </a> </td>
                </tr>
                <?php
              }
              ?>
            </tbody>
          </table>
        </div>
      </div>

      <!--/.col-->
    </div>
    <!-- .content -->
  </div><!-- /#right-panel -->

  <!-- Right Panel -->

  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>


  <script src="assets/js/lib/data-table/datatables.min.js"></script>
  <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
  <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
  <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
  <script src="assets/js/lib/data-table/jszip.min.js"></script>
  <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
  <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
  <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
  <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
  <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
  <script src="assets/js/lib/data-table/datatables-init.js"></script>


  <script type="text/javascript">
  $(document).ready(function() {
    $('#bootstrap-data-table-export').DataTable();
  } );
  </script>

</body>
</html>
