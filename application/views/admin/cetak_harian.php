  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Cetak</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Cetak</a></li>
              <li class="breadcrumb-item active">harian</li>
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

        <script>
            function refreshPage() {
                location.reload();
            }
        </script>

          <div class="card-header">
            <h3 class="card-title">Pilih tanggal dan kelas. Halaman ini hanya bisa menunjukkan data pada tanggal yang dipilih.</h3>
            <a href="#" class="btn btn-sm btn-success float-right" onclick="refreshPage()">Refresh</a>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <div class="col-md-6">
                <div class="form-group">
                  <input id="dateh" type="date" class="form-control" value="<?php  echo date('Y-m-d') ?>">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  
                  <select id="kelash" class="form-control select2" style="width: 100%;" required="">
                  <option value="">-- Pilih Kelas --</option>
                  <?php foreach ($kelas as $kelas_item): ?>
                      <?php if ($this->session->userdata('role') == 'admin' || $kelas_item->cl_teacher == $this->session->userdata('email')): ?>
                          <option value="<?php echo $kelas_item->cl_code ?>"><?php echo $kelas_item->cl_name ?></option>
                      <?php endif; ?>
                  <?php endforeach ?>

                  </select>
                </div>
              </div>             
            </div>
          </div>

        </div>
        <button type="button" style="display: none" id="tombol-cetak" class="btn btn-success btn-flat" onclick="printJS('daftar', 'html')"><i class="fas fa-print"></i>
          Cetak
        </button><br>
       
        <div class="card card-default" id="daftar">

        </div>
        <br>



      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->