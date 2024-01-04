<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Semeseter</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Data</a></li>
                        <li class="breadcrumb-item active">Semeseter</li>
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

            <form action="<?php echo base_url() ?>administrator/edit_sem" method="post">
                <div class="card card-default" id="datakelas">
                    <div class="card-header">
                        <h3 class="card-title">Edit Data Semester</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="<?php echo base_url() ?>administrator/edit_sem" method="post">
                                    <div class="form-group">
                                        <label for="tp">Tahun Pelajaran:</label>
                                        <select id="tp" class="form-control" name="tp" required>
                                            <option value="">-- Pilih Tahun Pelajaran --</option>
                                            <?php foreach ($all_tp as $tp): ?>
                                                <option value="<?php echo $tp->tp_name ?>" <?php echo ($allschool->sch_tp == $tp->tp_name) ? 'selected' : ''; ?>>
                                                    <?php echo $tp->tp_name; ?>
                                                </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="semester">semester:</label>
                                        <select id="semester" class="form-control" name="semester" required>
                                            <option value="Ganjil" selected>Ganjil</option>
                                            <option value="Genap">Genap</option>
                                        </select>
                                    </div>
                                    <input type="hidden" id="id_" name="id_" value="<?php echo $allschool->id_; ?>">
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
