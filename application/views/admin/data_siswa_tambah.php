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


            <form action="<?php echo base_url() ?>administrator/input_siswa" method="post">
                <div class="card card-default" id="datakelas">
                    <div class="card-header">
                        <h3 class="card-title">Tambah Data Siswa</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="<?php echo base_url() ?>administrator/input_siswa" method="post">
                                    <div class="form-group">
                                        <label for="nama">Nama Siswa:</label>
                                        <input type="text" class="form-control" id="nama" name="nama" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="nisn">NISN Siswa:</label>
                                        <input type="text" class="form-control" id="nisn" name="nisn" pattern="[0-9]+" title="Masukkan hanya angka" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="kelas">Kelas:</label>
                                        <select id="kelas" class="form-control" name="kelas" required>
                                            <option value="">-- Pilih Kelas --</option>
                                            <?php foreach ($kelas as $kelas): ?>
                                                <option value="<?php echo $kelas->cl_code ?>"><?php echo $kelas->cl_name ?></option>
                                            <?php endforeach ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="alamat">Alamat:</label>
                                        <input type="text" class="form-control" id="alamat" name="alamat" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="hp">No HP:</label>
                                        <input type="text" class="form-control" id="hp" name="hp" pattern="[0-9]+" title="Masukkan hanya angka" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" class="form-control" id="email" name="email" title="Masukkan hanya email" required>
                                    </div>

                                    <button type="submit" class="btn btn-primary">Tambah Siswa</button>
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
