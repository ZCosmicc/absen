  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
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
        <!-- Small boxes (Stat box) -->
       
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-12 ">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Status peserta didik pada semester <?php echo $sekolah['sch_semester'] ?> Tahun Pelajaran <?php echo $sekolah['sch_tp']; ?>
                </h3>
                <div class="col-md-12">
                <?php if ($this->session->userdata('role') == 'admin'): ?>
                    <a href="<?php echo base_url('administrator/data_sem_edit/' . $sekolah['id_']); ?>" class="btn btn-success float-right">
                        Edit
                    </a>
                <?php endif; ?>
                </div>
              
              </div><!-- /.card-header -->
              <div class="card-body">
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h4><?= $siswa ?> Orang</h4>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">Seluruh Peserta Didik</a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h4><?= $sakit ?> Data</h4>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="<?php echo base_url('administrator/detail_sakit') ?>" class="small-box-footer">Detail tidak masuk karena sakit</a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h4><?= $ijin ?> Data</h4>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="<?php echo base_url('administrator/detail_ijin') ?>" class="small-box-footer">Tidak masuk karena ijin</a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h4><?= $bolos ?> Data</h4>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="<?php echo base_url('administrator/detail_bolos') ?>" class="small-box-footer">Tidak masuk tanpa kerangan</a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->

          </section>

        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->