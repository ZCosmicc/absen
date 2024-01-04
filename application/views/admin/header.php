
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
       <!-- SEARCH FORM -->
    <!-- <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form> -->
    <?php
    $email = $this->session->userdata('email');
    $name = $this->session->userdata('name');
    $role = $this->session->userdata('role');
    ?>

    <?php if ($email !== null && $role !== null) : ?>
        <p><b>SELAMAT DATANG, <?php echo $name; ?></b> <br>(Email: <?php echo $email; ?>, Status pengguna: <?php echo $role; ?>)</p>
    <?php endif; ?>

    
  </nav>
  <!-- /.navbar -->