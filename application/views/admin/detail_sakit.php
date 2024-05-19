<!-- detail_sakit.php -->
<div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Detail</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Detail</a></li>
              <li class="breadcrumb-item">Absensi</li>
              <li class="breadcrumb-item">Sakit</li>
            </ol>
          </div>
        </div>
      </div>
    </div>

    <section class="content">
      <div class="container-fluid">
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Detail Absensi Sakit</h3>
          </div>
          <div class="card-body">
            <div class="row">
               <div class="col-md-12">
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Kelas</th>
                      <th>Keterangan Lain</th>
                      <th>Tanggal</th>
                      <th>Tahun Ajar</th>
                      <th>Semester</th>
                    </tr>
                  </thead>
                  <tbody>
                     <?php $no = 1; foreach ($sakit as $sakit): ?>
                      <tr>
                        <td><?= $no++ ?></td>
                        <td><?= $sakit->std_name ?></td>
                        <td><?= $sakit->std_class_name ?></td>
                        <td><?= $sakit->abs_ket_lain ?></td>
                        <td><?= $sakit->abs_tg.' - '.$sakit->abs_bln.' - '.$sakit->abs_th ?></td>
                        <td><?= $sakit->abs_tp ?></td>
                        <td><?= $sakit->abs_semester ?></td>
                      </tr>
                  <?php endforeach ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <br>
      </div>
    </section>
</div>
