<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get extends CI_Controller {

  public function datasiswaabsen()
  {
      $cl_code = $_POST['cl_code'];
      $tg = $_POST['date'];
  
      function tgl_indo($tanggal)
      {
          $bulan = array(
              1 =>   'Januari',
              'Februari',
              'Maret',
              'April',
              'Mei',
              'Juni',
              'Juli',
              'Agustus',
              'September',
              'Oktober',
              'November',
              'Desember'
          );
          $pecahkan = explode('-', $tanggal);
  
          return $pecahkan[2] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[0];
      }
  
      $kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
      $siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();
  
      // Cek apakah data absen sudah ada untuk kelas dan tanggal tersebut
      $existing_data = $this->db->get_where('std_rekap_absen', [
          'abs_cl_code' => $cl_code,
          'abs_date' => $tg
      ])->result();
  
      $data = '<div class="card-header"><h3 class="card-title">Input Absensi</h3></div>
               <div class="card-body">
                  <div class="row">
                      <div class="col-md-12">
                          <form action="' . base_url() . 'administrator/input_absen" method="post">
                              <table>
                                  <tr>
                                      <td style="padding-right: 20px">Nama Kelas</td>
                                      <td>:</td>
                                      <td style="padding-left: 10px">' . $kelas['cl_name'] . '
                                          <input type="hidden" name="class_name" value="' . $kelas["cl_name"] . '">
                                          <input type="hidden" name="class_code" value="' . $cl_code . '">
                                          <input type="hidden" name="date" value="' . $tg . '">
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>Tanggal</td>
                                      <td>:</td>
                                      <td style="padding-left: 10px">' . tgl_indo($tg) . '</td>
                                  </tr>
                              </table>
                              <br>
                              <table class="table">
                                  <thead>
                                      <tr>
                                          <th>No</th>
                                          <th>Nama</th>
                                          <th>Absensi</th>
                                          <th>Keterangan Lain</th>
                                      </tr>
                                  </thead>
                                  <tbody>';
  
      $no = 1;
      $existing_data_array = array();

// Membuat array dari data yang sudah ada
foreach ($existing_data as $ex_data) {
  $existing_data_array[$ex_data->abs_nisn] = [
      'abs_ket' => $ex_data->abs_ket,
      'abs_ket_lain' => $ex_data->abs_ket_lain,
  ];
}

foreach ($siswa as $siswa) {
  $data .= '<input type="hidden" name="std_nisn[]" id="std_nisn" value="' . $siswa->std_nisn . '">';
  $data .= '<tr>
              <td>' . $no++ . '</td>
              <td>' . $siswa->std_name . '</td>
              <td>
                  <select name="absen[]" id="absen" class="form-control">
                      <option value="0" ' . (isset($existing_data_array[$siswa->std_nisn]) && $existing_data_array[$siswa->std_nisn]['abs_ket'] == 0 ? 'selected' : '') . '>-</option>
                      <option value="1" ' . (isset($existing_data_array[$siswa->std_nisn]) && $existing_data_array[$siswa->std_nisn]['abs_ket'] == 1 ? 'selected' : '') . '>Sakit</option>
                      <option value="2" ' . (isset($existing_data_array[$siswa->std_nisn]) && $existing_data_array[$siswa->std_nisn]['abs_ket'] == 2 ? 'selected' : '') . '>Ijin</option>
                      <option value="3" ' . (isset($existing_data_array[$siswa->std_nisn]) && $existing_data_array[$siswa->std_nisn]['abs_ket'] == 3 ? 'selected' : '') . '>Tanpa Keterangan</option>
                  </select>
              </td>
              <td>
                  <input type="text" name="ket_lain[]" id="ket_lain" class="form-control" value="' . (isset($existing_data_array[$siswa->std_nisn]) ? $existing_data_array[$siswa->std_nisn]['abs_ket_lain'] : '') . '">
              </td>
          </tr>';
}
  
      $data .= '</tbody></table>
                <button type="submit" class="btn btn-success">Input</button>
              </form>
          </div>
      </div>
  </div>';
  
      echo json_encode($data);
  }
  
  public function datasiswab()
	{
		$cl_code = $_POST['cl_code'];

		$kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
		$siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();

		$data = '';
		$data .= '<div class="card-header"><h3 class="card-title">Data Siswa</h3></div><div class="card-body">
            <div class="row">
              <div class="col-md-12">
                <table>
                  <tr>
                    <td style="padding-right: 20px">Nama Kelas</td><td>:</td><td style="padding-left: 10px">';
        $data .= $kelas['cl_name'];
        $data .= '<input type="hidden" name="class_name" value="'.$kelas["cl_name"].'"> ';
        $data .= '<input type="hidden" name="class_code" value="'.$cl_code.'"> ';
        $data .= '</td>
                  </tr>
                </table>
                <br>
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>NISN</th>
                      <th>Kelas</th>
                      <th>Alamat</th>
                      <th>No Telp</th>
                      <th>Email</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>';
        $no = 1;
        foreach ($siswa as $siswa) {
        	$data .= '<input type="hidden" name="std_nisn[]" id="std_nisn" value="'.$siswa->std_nisn.'">';
        	$data .= '<tr><td>';
        	$data .= $no++;
        	$data .= '</td>';
        	$data .= '<td>';
        	$data .= $siswa->std_name;
          $data .= '</td><td>';
          $data .= $siswa->std_nisn;
          $data .= '</td><td>';
          $data .= $siswa->std_class_name;
          $data .= '</td><td>';
          $data .= $siswa->std_address;
          $data .= '</td><td>';
          $data .= $siswa->std_hp;
          $data .= '</td><td>';
          $data .= $siswa->std_email;
          $data .= '</td><td>';

          $data .= '<a href="'.base_url('administrator/data_siswa_edit/'.$siswa->id_).'" class="btn btn-success float-left">Edit</a>';
          $data .= '<a href="'.base_url('administrator/data_siswa_hapus/'.$siswa->id_).'" class="btn btn-danger float-left" onclick="return confirm(\'Apakah Anda yakin ingin menghapus data ini?\')">Hapus</a>';

          
          $data .= '</td>';
        	$data .= '</tr>';

        }
        $data .= '</tbody></table>';
        $data .= '</div></div></div></div>';
        	
		echo json_encode($data);

	}

  public function dataguru()
{
    $role = 'admin';

    $gurus = $this->db->get_where('app_absen_user', ['role' => $role])->result();

    $data = '';
    $data .= '<div class="card-header"><h3 class="card-title">Data Guru</h3></div><div class="card-body">
            <div class="row">
              <div class="col-md-12">
                <table>
                  <tr>';
    $data .= '</tr>
                </table>
                <br>
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Email</th>
                      <th>Nama</th>
                      <th>NIP</th>
                      <th>Password</th>
                      <th>Role</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>';
    $no = 1;
    foreach ($gurus as $guru) {
        $data .= '<tr>';
        $data .= '<td>' . $no++ . '</td>';
        $data .= '<td>' . $guru->email . '</td><td>';
        $data .= $guru->name . '</td><td>';
        $data .= $guru->nip . '</td><td>';
        $data .= $guru->password . '</td><td>';
        $data .= $guru->role . '</td><td>';
        $data .= '<a href="' . base_url('administrator/data_guru_edit/' . $guru->id_) . '" class="btn btn-success float-left">Edit</a>';
        $data .= '<a href="' . base_url('administrator/data_guru_hapus/' . $guru->id_) . '" class="btn btn-danger float-left" onclick="return confirm(\'Apakah Anda yakin ingin menghapus data ini?\')">Hapus</a>';
        $data .= '</td>';
        $data .= '</tr>';
    }

      $data .= '</tbody></table>';
      $data .= '</div></div></div></div>';
      echo $data;
  }

  public function datakelas()
  {
      $klass = $this->db->get_where('app_class', ['cl_code' => $cl_code])->result();

      $data = '';
      $data .= '<div class="card-header"><h3 class="card-title">Data Kelas</h3></div><div class="card-body">
              <div class="row">
                <div class="col-md-12">
                  <table>
                    <tr>';
      $data .= '</tr>
                  </table>
                  <br>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Kelas</th>
                        <th>Guru</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>';
      $no = 1;
      foreach ($klass as $klas) {
          $data .= '<tr>';
          $data .= '<td>' . $no++ . '</td>';
          $data .= '<td>' . $klas->cl_name . '</td><td>';
          $data .= $klas->cl_teacher . '</td><td>';
          $data .= '<a href="' . base_url('administrator/data_kelas_edit/' . $klas->id_) . '" class="btn btn-success float-left">Edit</a>';
          $data .= '</td>';
          $data .= '</tr>';
      }

      $data .= '</tbody></table>';
      $data .= '</div></div></div></div>';
      echo $data;
  }

public function data_hari()
{
    $cl_code = $_POST['cl_codeh'];
    $tg = $_POST['dateh'];
    $kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
    $siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();

    $this->db->select('name');
    $this->db->from('app_absen_user');
    $this->db->where('email', $kelas['cl_teacher']);
    $nama_guru = $this->db->get()->row_array();

    $no = 1;
    $data = '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Harian</h3></div><div class="card-body"><div class="row"><div class="col-md-6">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Tanggal</td><td>:</td><td>'.$tg.'</td></tr>';

    $data .= '<tr><td>Guru</td><td>:</td><td>'.$nama_guru['name'].'</td></tr></table>';

    $data .= '</div></div></div>';

    $data .= '<hr><table border="all" style="border-collapse: collapse; width:100%" class="table table-hover table-bordered"><thead><tr><th width="40px">No</th><th>Nama</th><th>NISN</th><th width="100px" style="text-align: center;">Sakit</th><th width="100px" style="text-align: center;">Ijin</th><th width="100px" style="text-align: center;">Tanpa Ket</th></tr></thead>';
    $data .= '<tbody>';
    foreach ($siswa as $siswa) {
        $data .= '<tr>';
        $data .= '<td style="text-align: right; padding-right: 5px;">'.$no++.'</td>';
        $data .= '<td nowrap>'.$siswa->std_name.'</td>';
        $data .= '<td nowrap>'.$siswa->std_nisn.'</td>';

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_date', $tg);
        $ket = $this->db->get('std_rekap_absen')->row_array();

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_ket', '1');
        $this->db->where('abs_date', $tg);
        $sakit = $this->db->get('std_rekap_absen')->num_rows();
        $color_sakit = ($sakit > 0) ? 'blue' : 'transparent';

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_ket', '2');
        $this->db->where('abs_date', $tg);
        $ijin = $this->db->get('std_rekap_absen')->num_rows();
        $color_ijin = ($ijin > 0) ? 'yellow' : 'transparent';

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_ket', '3');
        $this->db->where('abs_date', $tg);
        $tanpa_ket = $this->db->get('std_rekap_absen')->num_rows();
        $color_tanpa_ket = ($tanpa_ket > 0) ? 'red' : 'transparent';

        $data .= '<td style="text-align: center; background-color: ' . $color_sakit . '; background-color: ' . $color_sakit . ';">'. $sakit .'</td>';
        $data .= '<td style="text-align: center; background-color: ' . $color_ijin . ';">'. $ijin .'</td>';
        $data .= '<td style="text-align: center; background-color: ' . $color_tanpa_ket . ';">'. $tanpa_ket .'</td>';
        $data .= '</tr>';
    }
    $data .= '</tbody></table></div></div>';
    echo json_encode($data);
}


  public function data_bulan()
  {
    $cl_code = $_POST['cl_codeb'];
    $bulan = $_POST['dateb'];

    // Perubahan 1: Ambil data kelas dari tabel 'app_class' berdasarkan 'cl_code'
    $kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();

    $months = array(
        '01' => 'Januari',
        '02' => 'Februari',
        '03' => 'Maret',
        '04' => 'April',
        '05' => 'Mei',
        '06' => 'Juni',
        '07' => 'Juli',
        '08' => 'Agustus',
        '09' => 'September',
        '10' => 'Oktober',
        '11' => 'November',
        '12' => 'Desember'
    );
    
    $nama_bulan = $months[$bulan];

    // Perubahan 2: Ambil data siswa dari tabel 'app_student' berdasarkan 'std_class_code'
    $siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();

    // Perubahan 3: Ambil nama guru dari database 'app_absen_user' berdasarkan 'cl_teacher'
    $this->db->select('name');
    $this->db->from('app_absen_user');
    $this->db->where('email', $kelas['cl_teacher']);
    $nama_guru = $this->db->get()->row_array();

    $no = 1;
    $data = '';
    $data .= '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Peserta Didik</h3></div><div class="card-body">
            <div class="row">
               <div class="col-md-12">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Bulan</td><td>:</td><td>'.$nama_bulan.'</td></tr>';

    $data .= '<tr><td>Guru</td><td>:</td><td>'.$nama_guru['name'].'</td></tr></table>';

    $data .= '</div></div></div>';

    $data .= '<hr><table border="all" style="border-collapse: collapse; width:100%" class="table table-hover table-bordered"><thead><tr><th width="40px">No</th><th>Nama</th><th>NISN</th><th width="100px" style="text-align: center;">Sakit</th><th width="100px" style="text-align: center;">Ijin</th><th width="100px" style="text-align: center;">Tanpa Ket</th></tr></thead>';
    $data .= '<tbody>';
    foreach ($siswa as $siswa) {
      $data .= '<tr>';
      $data .= '<td style="text-align: right; padding-right: 5px;">'.$no++.'</td>';
      $data .= '<td nowrap>'.$siswa->std_name.'</td>';
      $data .= '<td nowrap>'.$siswa->std_nisn.'</td>';
      
      
      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '1');
      $this->db->where('abs_bln', $bulan);
      $sakit = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$sakit.'</td>';

      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '2');
      $this->db->where('abs_bln', $bulan);
      $ijin = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$ijin.'</td>';

      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '3');
      $this->db->where('abs_bln', $bulan);
      $bolos = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$bolos.'</td>';
      $data .= '</tr>';


    }
    $data .= '</tbody></table></div></div></div>';
    echo $data;
  }

  public function data_semester()
  {
    $sem = $_POST['sem'];
    $tp = $_POST['tp'];
    $kelass = $_POST['cl_codes'];

    // Perubahan 1: Ambil data kelas dari tabel 'app_class' berdasarkan 'cl_code'
    $kelas = $this->db->get_where('app_class', ['cl_code' => $kelass])->row_array();

    // Perubahan 2: Ambil data siswa dari tabel 'app_student' berdasarkan 'std_class_code'
    $this->db->select('*');
    $this->db->where('std_class_code', $kelass);
    $siswa = $this->db->get('app_student')->result();

    // Perubahan 3: Ambil nama guru dari database 'app_absen_user' berdasarkan 'cl_teacher'
    $this->db->select('name');
    $this->db->from('app_absen_user');
    $this->db->where('email', $kelas['cl_teacher']);
    $nama_guru = $this->db->get()->row_array();

    $no = 1;
    $data = '';
    $data .= '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Peserta Didik</h3></div><div class="card-body">
            <div class="row">
               <div class="col-md-12">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Tahun Pelajaran</td><td>:</td><td>'.$tp.'</td></tr>';
    $data .= '<tr><td>Semester</td><td>:</td><td>'.$sem.'</td></tr>';

    $data .= '<tr><td>Guru</td><td>:</td><td>'.$nama_guru['name'].'</td></tr></table>';

    $data .= '</div></div></div>';

    $data .= '<hr><table border="all" style="border-collapse: collapse; width:100%" class="table table-hover table-bordered"><thead><tr><th width="40px">No</th><th>Nama</th><th>NISN</th><th width="100px" style="text-align: center;">Sakit</th><th width="100px" style="text-align: center;">Ijin</th><th width="100px" style="text-align: center;">Tanpa Ket</th></tr></thead>';
    $data .= '<tbody>';
    foreach ($siswa as $siswa) {
      $data .= '<tr>';
      $data .= '<td style="text-align: right; padding-right: 5px;">'.$no++.'</td>';
      $data .= '<td nowrap>'.$siswa->std_name.'</td>';
      $data .= '<td nowrap>'.$siswa->std_nisn.'</td>';
      
      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '1');
      $this->db->where('abs_semester', $sem);
      $this->db->where('abs_tp', $tp);
      $sakit = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$sakit.'</td>';

      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '2');
      $this->db->where('abs_semester', $sem);
      $this->db->where('abs_tp', $tp);
      $ijin = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$ijin.'</td>';

      $this->db->where('abs_nisn', $siswa->std_nisn);
      $this->db->where('abs_ket', '3');
      $this->db->where('abs_semester', $sem);
      $this->db->where('abs_tp', $tp);
      $bolos = $this->db->get('std_rekap_absen')->num_rows();
      $data .= '<td style="text-align: center">'.$bolos.'</td>';
      $data .= '</tr>';


    }
    $data .= '</tbody></table></div></div></div>';
    echo $data;

  }

}

/* End of file Get.php */
/* Location: ./application/controllers/Get.php */