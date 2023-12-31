<div class="content-wrapper">
    <section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Data Guru</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Data</a></li>
                <li class="breadcrumb-item active">Guru</li>
                </ol>
            </div>
            <div class="col-md-12">
            <a href="<?php echo base_url('administrator/data_guru_tambah'); ?>" class="btn btn-success float-right">
                Tambah
            </a>
            
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
            <h3 class="card-title">Data Guru</h3>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Email</th>
                                <th>Nama</th>
                                <th>Password</th>
                                <th>Role</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($gurus as $guru) {
                                echo '<tr>';
                                echo '<td>' . $no++ . '</td>';
                                echo '<td>' . $guru->email . '</td>';
                                echo '<td>' . $guru->name . '</td>';
                                echo '<td>' . $guru->password . '</td>';
                                echo '<td>' . $guru->role . '</td>';
                                echo '<td>';
                                echo '<a href="' . base_url('administrator/data_guru_edit/' . $guru->id_) . '" class="btn btn-success float-left">Edit</a>';
                                echo '<a href="' . base_url('administrator/data_guru_hapus/' . $guru->id_) . '" class="btn btn-danger float-left" onclick="return confirm(\'Apakah Anda yakin ingin menghapus data ini?\')">Hapus</a>';
                                echo '</td>';
                                echo '</tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

        <!-- /.card -->
      </div><!-- /.container-fluid -->

      </form>
    </section>
    <!-- /.content -->

</div>