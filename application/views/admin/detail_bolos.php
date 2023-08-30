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
              <li class="breadcrumb-item">Absensi</li>
              <li class="breadcrumb-item">Bolos</li>

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
            <h3 class="card-title">Detail Absensi Bolos</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <div class="col-md-12">
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Kelas</th>
                      <th>Tanggal</th>
                    </tr>
                  </thead>
                  <tbody>
                     <?php $no = 1; foreach ($sakit as $sakit): ?>
                      <tr>
                        <td>
                          <?= $no++ ?>
                        </td>
                        <td>
                          <?php echo $sakit->std_name ?>
                        </td>
                        <td>
                          <?php echo $sakit->std_class_name ?>
                        </td>
                        <td>
                          <?php echo $sakit->abs_tg.' - '.$sakit->abs_bln.' - '.$sakit->abs_th ;?>
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