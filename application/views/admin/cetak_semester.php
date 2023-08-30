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
              <li class="breadcrumb-item active">semester</li>
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
            <h3 class="card-title">Pilih semester dan kelas</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <div class="col-md-4">
                <div class="form-group">
                  <select id="tp" class="form-control select2" style="width: 100%;" required="">
                    <option value="<?php echo $sch['sch_tp'] ?>"><?php echo $sch['sch_tp'] ?></option>
                    <option value="">-- Pilih tahun pelajaran --</option>
                    <?php foreach ($tp as $tp): ?>
                        <option value="<?php echo $tp->tp_name ?>"><?php echo $tp->tp_name ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <select id="sem" class="form-control select2" style="width: 100%;" required="">
                    <option value="<?php echo $sch['sch_semester'] ?>"><?php echo $sch['sch_semester'] ?></option>
                    <option value="">-- Pilih semester --</option>
                    <?php foreach ($semester as $semester): ?>
                        <option value="<?php echo $semester->sem_name ?>"><?php echo $semester->sem_name ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <select id="kelass"  class="form-control select2" style="width: 100%;" required="">
                    <option value="">-- Pilih Kelas --</option>
                    <?php foreach ($kelas as $kelas): ?>
                        <option value="<?php echo $kelas->cl_code ?>"><?php echo $kelas->cl_name ?></option>
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