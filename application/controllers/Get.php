<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get extends CI_Controller {

	public function datasiswaabsen()
	{
		$cl_code = $_POST['cl_code'];
    $tg = $_POST['date'];

    function tgl_indo($tanggal){
      $bulan = array (
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
      
     
      return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
    }

		$kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
		$siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();

		$data = '';
		$data .= '<div class="card-header"><h3 class="card-title">Input Absensi</h3></div><div class="card-body">
            <div class="row">
              <div class="col-md-12">
                <table>
                  <tr>
                    <td style="padding-right: 20px">Nama Kelas</td><td>:</td><td style="padding-left: 10px">';
        $data .= $kelas['cl_name'];

        $data .= '<input type="hidden" name="abs_id[]" value="'.$siswa->abs_id.'">';

        $data .= '<input type="hidden" name="class_name" value="'.$kelas["cl_name"].'"> ';
        $data .= '<input type="hidden" name="class_code" value="'.$cl_code.'"> ';

        $data .= '<input type="hidden" name="date" value="'.$tg.'"> ';
        $data .= '</td>
                  </tr><tr><td>Tanggal</td><td>:</td><td style="padding-left: 10px">';
        $data .= tgl_indo($tg);
        $data .= '</td>
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
        foreach ($siswa as $siswa) {
        	$data .= '<input type="hidden" name="std_nisn[]" id="std_nisn" value="'.$siswa->std_nisn.'">';
        	$data .= '<tr><td>';
        	$data .= $no++;
        	$data .= '</td>';
        	$data .= '<td>';
        	$data .= $siswa->std_name;
        	$data .= '<td>';
        	$data .= '<select name="absen[]" id="absen" class="form-control">
					<option value="">-</option>
					<option value="1">Sakit</option>
					<option value="2">Ijin</option>
					<option value="3">Tanpa Keterangan</option>
					</select>';
        	$data .= '</td>';
        	$data .= '<td>';
        	$data .= '<input type="text" name="ket_lain[]" id="ket_lain" class="form-control">';
        	$data .= '</td></tr>';

        }
        $data .= '</tbody></table>';
        $data .= '</div></div></div></div>';
        $data .= '<button type="submit" class="btn btn-success">Input</button>';
        	
		echo json_encode($data);

	}

  public function datasiswab()
	{
		$cl_code = $_POST['cl_code'];

		$kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
    //$kelas = $this->db->get_where('app_class', ['cl_teacher' => $email])->row_array(); (?)
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

public function data_hari()
{
    $cl_code = $_POST['cl_codeh'];
    $tg = $_POST['dateh'];
    $kelas = $this->db->get_where('app_class', ['cl_code' => $cl_code])->row_array();
    $siswa = $this->db->get_where('app_student', ['std_class_code' => $cl_code])->result();

    $no = 1;
    $data = '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Harian</h3></div><div class="card-body"><div class="row"><div class="col-md-6">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Tanggal</td><td>:</td><td>'.$tg.'</td></tr></table>';
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

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_ket', '2');
        $this->db->where('abs_date', $tg);
        $ijin = $this->db->get('std_rekap_absen')->num_rows();

        $this->db->where('abs_nisn', $siswa->std_nisn);
        $this->db->where('abs_ket', '3');
        $this->db->where('abs_date', $tg);
        $tanpa_ket = $this->db->get('std_rekap_absen')->num_rows();

        $data .= '<td style="text-align: center">'.$sakit.'</td>';
        $data .= '<td style="text-align: center">'.$ijin.'</td>';
        $data .= '<td style="text-align: center">'.$tanpa_ket.'</td>';
        $data .= '</tr>';
    }
    $data .= '</tbody></table></div></div>';
    echo json_encode($data);
}



  public function data_bulan()
  {
    $cl_code = $_POST['cl_codeb'];
    $bulan = $_POST['dateb'];
    $kelas = $this->db->get('app_class',['cl_code' => $cl_code])->row_array();
    //$bulan = substr($tg, 5, 2);
  

    $this->db->select('*');
    $this->db->where('std_class_code', $cl_code);
    //$this->db->join('std_rekap_absen', 'std_rekap_absen.abs_nisn = app_student.std_nisn', 'left');
    $siswa = $this->db->get('app_student')->result();

    $no = 1;
    $data = '';
    $data .= '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Peserta Didik</h3></div><div class="card-body">
            <div class="row">
               <div class="col-md-12">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Bulan</td><td>:</td><td>'.$bulan.'</td></tr></table>';
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
    $kelas = $this->db->get('app_class',['cl_code' => $kelass])->row_array();

    $this->db->select('*');
    $this->db->where('std_class_code', $kelass);
    $siswa = $this->db->get('app_student')->result();

    $no = 1;
    $data = '';
    $data .= '<div class="container-fluid"><div style="text-align:center" class="card-header"><h3 class="card-title">Data Kehadiran Peserta Didik</h3></div><div class="card-body">
            <div class="row">
               <div class="col-md-12">';
    $data .= '<table><tr><td style="padding-right: 20px">Nama Kelas</td><td>:</td><td>'.$kelas["cl_name"].'</td>';
    $data .= '<tr><td>Tahun Pelajaran</td><td>:</td><td>'.$tp.'</td></tr>';
    $data .= '<tr><td>Semester</td><td>:</td><td>'.$sem.'</td></tr></table>';
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