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
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="flash_success" data-flash_success="<?php echo $this->session->flashdata('success'); ?>"></div>
        <div class="flash_error" data-flash_error="<?php echo $this->session->flashdata('error'); ?>"></div>
        <div class="container-fluid">

            <form action="<?php echo base_url() ?>administrator/edit_siswa" method="post">
                <div class="card card-default" id="datakelas">
                    <div class="card-header">
                        <h3 class="card-title">Edit Data Siswa</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="<?php echo base_url() ?>administrator/edit_siswa" method="post">
                                    <div class="form-group">
                                        <label for="nama">Nama Siswa:</label>
                                        <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $siswa->std_name; ?>" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="nisn">NISN Siswa:</label>
                                        <input type="text" class="form-control" id="nisn" name="nisn" value="<?php echo $siswa->std_nisn; ?>" required>
                                    </div>
                                    <div class="form-group">
    <label for="kelas">Kelas:</label>
    <select id="kelas" class="form-control" name="kelas" required>
        <option value="">-- Pilih Kelas --</option>
        <?php foreach ($kelas as $kelas_item): ?>
            <option value="<?php echo $kelas_item->cl_code ?>" <?php echo ($siswa->std_class_code == $kelas_item->cl_code) ? 'selected' : ''; ?>><?php echo $kelas_item->cl_name ?></option>
        <?php endforeach ?>
    </select>
</div>

                                    <div class="form-group">
                                        <label for="alamat">Alamat:</label>
                                        <input type="text" class="form-control" id="alamat" name="alamat" value="<?php echo $siswa->std_address; ?>" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="hp">No HP:</label>
                                        <input type="text" class="form-control" id="hp" name="hp" value="<?php echo $siswa->std_hp; ?>" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="text" class="form-control" id="email" name="email" value="<?php echo $siswa->std_email; ?>" required>
                                    </div>
                                    <input type="hidden" id="id_" name="id_" value="<?php echo $siswa->id_; ?>">
                                    <button type="submit" class="btn btn-primary">Edit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
