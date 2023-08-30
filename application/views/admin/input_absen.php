  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Input Absensi</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Input</a></li>
              <li class="breadcrumb-item active">Absensi</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="flash_success" data-flash_success="<?php echo $this->session->flashdata('success'); ?>"></div>
      <div class="flash_error" data-flash_error="<?php echo $this->session->flashdata('error'); ?>"></div>
      <div class="container-fluid">

        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Pilih tanggal dan kelas</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <div class="col-md-6">
                <div class="form-group">
                  <input id="date" type="date" class="form-control" value="<?php  echo date('Y-m-d') ?>">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  
                  <select id="kelas" class="form-control select2" style="width: 100%;" required="">
                    <option value="">-- Pilih Kelas --</option>
                    <?php foreach ($kelas as $kelas): ?>
                        <option value="<?php echo $kelas->cl_code ?>"><?php echo $kelas->cl_name ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
              </div>
             <div class="col-md-12">
               <p style="font-family: batang; color: red; font-size: 10pt">- Ubah tanggal untuk melakukan input pada hari lain <br>- Kelas peserta didik masuk semua tidak perlu dilakukan input</p>
             </div>
              
            </div>
          </div>

        </div>



        <form action="<?php echo base_url() ?>administrator/input_absen" method="post">
        <div class="card card-default" id="datakelas">
          <div class="card-header"> 
            <h3 class="card-title">Input Absensi</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-12">
                <?php 
                function tgl_indo($tanggal){
                  $bulan = array (
                    1 =>   'Januari',
                    'Februari',
                    'Maret',
                    'April',
                    'Mei',
                    'Juni',
                    'Juli',
                    'Agustus',
                    'September',
                    'Oktober',
                    'November',
                    'Desember'
                  );
                  $pecahkan = explode('-', $tanggal);
                  
                 
                  return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
                }
                 ?>
                <table>
                  <tr>
                    <td style="padding-right: 20px">Nama Kelas</td><td>:</td><td style="padding-left: 10px">Silahkan pilih kelas</td>
                  </tr>
                  <tr>
                    <td>Tanggal</td><td>:</td><td style="padding-left: 10px"><?php echo tgl_indo(date('Y-m-d')); ?></td>
                  </tr>
                </table>
                <br>
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Absensi</th>
                      <th>Keterangan Lain</th>
                    </tr>
                  </thead>
                </table>
            </div>
          </div>

        </div>
        <!-- /.card -->
      </div><!-- /.container-fluid -->

      </form>
    </section>
    <!-- /.content -->
  </div>