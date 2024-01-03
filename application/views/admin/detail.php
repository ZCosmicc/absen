  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Detail</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Detail</a></li>
              <li class="breadcrumb-item active">Absensi</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Detail Absensi <?php echo $siswa['std_name'] ?></h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <div class="col-md-12">
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Keterangan</th>
                      <th>Tanggal</th>
                    </tr>
                  </thead>
                  <tbody>
                     <?php $no = 1; foreach ($absen as $absen): ?>
                      <tr>
                        <td>
                          <?= $no++ ?>
                        </td>
                        <td>
                          <?php
                              if ($absen->abs_ket == '1') {
                                echo 'Sakit';
                              } elseif ($absen->abs_ket == '2') {
                                echo "Ijin";
                              } elseif ($absen->abs_ket == '3') {
                                echo "Tanpa Keterangan";
                              } elseif ($absen->abs_ket == '0') {
                                echo "Hadir";
                              }
                           ?>
                        </td>
                        <td>
                          <?= $absen->abs_tg.' - '.$absen->abs_bln.' - '.$absen->abs_th; ?>
                        </td>
                      </tr>
                  <?php endforeach ?>
                  </tbody>
                  
                 
                </table>
                  
              </div>
             
            </div>
          </div>

        </div>
        
       
        <div class="card card-default" id="daftar">

        </div>
        <br>



      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->