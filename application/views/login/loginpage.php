<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Halaman Masuk</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">

  
  <link rel="stylesheet" href="<?php echo base_url();?>assets/admin/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>assets/admin/dist/css/adminlte.min.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url()?>assets/admin/plugins/toastr/toastr.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">

  <div class="login-logo">
    <img src="<?= base_url()?>assets/img/logo.png" alt="Logo Sekolah" class="brand-image img-circle elevation-3"
           style="opacity: .8; width: 100px; height: 100px;">
           <br>
    <a href="#"><b>Absensi</b> Siswa</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="flashdata" data-flashdata="<?php echo $this->session->flashdata('error'); ?>">
      
    </div>
    <div class="card-body login-card-body">
      <p class="login-box-msg">Masuk untuk memulai aplikasi</p>

      <form action="<?php echo base_url(); ?>" method="post">
        <div class="input-group mb-3">
          <input type="email" name="email" id="email" class="form-control" placeholder="Email" value="<?php echo set_value('email') ?>">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div><p><?php echo form_error('email') ?></p>
        <div class="input-group mb-3">
          <input type="password" name="password" id="password" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <p><?php echo form_error('password') ?></p>
        <div class="row">
          <div class="col-8">
            
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Masuk</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<!-- jQuery -->
<script src="<?php echo base_url();?>assets/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url();?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>assets/admin/dist/js/adminlte.min.js"></script>
<!-- Toastr -->
<script src="<?= base_url()?>assets/admin/plugins/toastr/toastr.min.js"></script>
<script>
  const flashdata = $('.flashdata').data('flashdata');
  if (flashdata) {
    toastr.warning(flashdata)
  }
</script>
</body>
</html>
