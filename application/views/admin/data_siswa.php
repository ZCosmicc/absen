<div class="content-wrapper">
    <section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Data Siswa</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Data</a></li>
                <li class="breadcrumb-item active">Siswa</li>
                </ol>
            </div>
            <div class="col-md-12">
                <button type="button" class="btn btn-success float-right" data-toggle="modal" data-target="#tambahModal">
                Tambah
                </button>
            </div>
        </div>
    </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="flash_success" data-flash_success="<?php echo $this->session->flashdata('success'); ?>"></div>
      <div class="flash_error" data-flash_error="<?php echo $this->session->flashdata('error'); ?>"></div>
      <div class="container-fluid">

        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Pilih kelas</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
               <!-- <div class="col-md-6">
                <div class="form-group">
                  <input id="date" type="date" class="form-control" value="<#?php  echo date('Y-m-d') ?>">
                </div>
              </div>
              <div class="col-md-6"> -->
                <div class="form-group">
                  
                  <select id="kelas" class="form-control select2" style="width: 100%;" required="">
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

</div>