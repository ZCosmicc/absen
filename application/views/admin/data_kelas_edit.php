<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Kelas</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Data</a></li>
                        <li class="breadcrumb-item active">Kelas</li>
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

            <form action="<?php echo base_url() ?>administrator/edit_kelas" method="post">
                <div class="card card-default" id="datakelas">
                    <div class="card-header">
                        <h3 class="card-title">Edit Data Kelas</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="<?php echo base_url() ?>administrator/edit_kelas" method="post">
                                    <div class="form-group">
                                        <label for="name">name:</label>
                                        <input type="text" class="form-control" id="name" name="name" value="<?php echo $klass->cl_name; ?>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="guru">Guru:</label>
                                        <select id="guru" class="form-control" name="guru" required>
                                            <option value="">-- Pilih Guru --</option>
                                            <?php foreach ($all_teachers as $teacher): ?>
                                                <option value="<?php echo $teacher->email ?>" <?php echo ($teacher->email == $klass->cl_teacher) ? 'selected' : ''; ?>>
                                                    <?php echo $teacher->email; ?>
                                                </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <input type="hidden" id="id_" name="id_" value="<?php echo $klass->id_; ?>">
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
