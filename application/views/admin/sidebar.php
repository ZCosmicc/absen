<?php 
$segmen1 = $this->uri->segment(1);
$segmen2 = $this->uri->segment(2);
$segmen3 = $this->uri->segment(3);

$role = $this->session->userdata('role');
 ?>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="<?= base_url()?>assets/img/logo.png" alt="Logo Sekolah" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Absensi</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
           <li class="nav-item">
            <a href="<?php echo site_url(); ?>administrator" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == '') {echo 'active';} ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>

          <?php if ($role === 'guru'): ?>
           <li class="nav-item">
            <a href="<?php echo site_url(); ?>administrator/input" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'input') {echo 'active';} ?>">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Input Absensi
              </p>
            </a>
          </li>
          <?php endif; ?>

         
          <li class="nav-item has-treeview <?php if ($segmen1 == 'administrator' && $segmen2 == 'cetak_harian' || $segmen2 == 'cetak_bulan' || $segmen2 == 'cetak_semester') {echo 'menu-open';} ?> ">
            <a href="#" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'cetak_harian' || $segmen2 == 'cetak_bulan' || $segmen2 == 'cetak_semester') {echo 'active';} ?>">
              <i class="nav-icon fas fa-print"></i>
              <p>
                Cetak
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url('administrator/cetak_harian') ?>" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'cetak_harian') {echo 'active';} ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cetak harian</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url('administrator/cetak_bulan') ?>" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'cetak_bulan') {echo 'active';} ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cetak bulan</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url('administrator/cetak_semester') ?>" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'cetak_semester') {echo 'active';} ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cetak semester</p>
                </a>
              </li>
            </ul>
          </li>

          <?php if ($role === 'admin'): ?>
              <li class="nav-item">
                  <a href="<?php echo site_url(); ?>administrator/data_siswa" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'data_siswa') {echo 'active';} ?>">
                      <i class="nav-icon fas fa-users"></i>
                      <p>
                          Data Siswa
                      </p>
                  </a>
              </li>

              <li class="nav-item">
                  <a href="<?php echo site_url(); ?>administrator/data_kelas" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'data_kelas') {echo 'active';} ?>">
                      <i class="nav-icon fas fa-trophy"></i>
                      <p>
                          Data Kelas
                      </p>
                  </a>
              </li>

              <li class="nav-item">
                  <a href="<?php echo site_url(); ?>administrator/data_guru" class="nav-link <?php if ($segmen1 == 'administrator' && $segmen2 == 'data_guru') {echo 'active';} ?>">
                      <i class="nav-icon fas fa-sitemap"></i>
                      <p>
                          Data Guru
                      </p>
                  </a>
              </li>
          <?php endif; ?>


           <li class="nav-item">
            <a href="<?php echo site_url(); ?>welcome/logout" class="nav-link">
              <i class="nav-icon far fa-circle text-warning"></i>
              <p class="text-warning">
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
