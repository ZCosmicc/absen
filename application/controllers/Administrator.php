<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('modelinsert');

	}

	public function index()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$email = $this->session->userdata('email');
    	$role = $this->session->userdata('role');
		
		//Perbaruan terbaik untuk menampilkan jumlah siswa yang sudah dipilah, tapi apa yang salah pada bagian foreachnya itu tidak diketahui 🤔
		// $email = $this->session->userdata('email');
		// $data['kelas'] = $this->db->get_where('app_class', ['cl_teacher' => $email])->result();

		// $totalSiswa = 0;

		// foreach ($data['kelas'] as $kelasItem) {
		// 	$this->db->where('std_class_code', $kelasItem->class_code);
		// 	$totalSiswa += $this->db->get('app_student')->num_rows();
		// }

		// $data['siswa'] = $totalSiswa;

		//sementara tetap pakai ini
		$data['siswa'] = $this->db->get('app_student')->num_rows();
		
		$data['sakit'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '1'])->num_rows();
		$data['ijin'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '2'])->num_rows();
		$data['bolos'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '3'])->num_rows();
		$data['sekolah'] = $this->db->get('app_school')->row_array();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/dashboard', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function input()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['kelas'] = $this->db->get('app_class')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/input_absen', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	function input_absen()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}
		//error_reporting(0);
		$std_nisn = $this->input->post('std_nisn[]');
		$absen = $this->input->post('absen[]');
		$ket_lain = $this->input->post('ket_lain[]');
		$nama_kelas = $this->input->post('class_name');
		$tanggal = $this->input->post('date');

		$sch = $this->db->get('app_school')->row_array();

		$abs_th = substr($tanggal, 0, 4);
		$abs_bln = substr($tanggal, 5, 2);
		$abs_tg = substr($tanggal, 8, 2);

		$data = array();
		$index = 0;
		foreach ($absen as $data_absen) {

			array_push($data, array(
				'abs_nisn' => $std_nisn[$index],
				'abs_ket' => $absen[$index],
				'abs_ket_lain' => $ket_lain[$index],
				'abs_date' => $tanggal,
				'abs_cl_code' => $this->input->post('class_code'),
				'abs_th' => $abs_th,
				'abs_bln' => $abs_bln,
				'abs_tg' => $abs_tg,
				'abs_tp' => $sch['sch_tp'],
				'abs_semester' => $sch['sch_semester'],

			));

			$index++;
			
		}

		$insert = $this->modelinsert->absen($data);
		if ($insert) {
			$this->session->set_flashdata('success', 'Input data absen kelas '.$nama_kelas.' berhasil');
			redirect('administrator/input','refresh');
		} else {
			$this->session->set_flashdata('error', 'Input data absen kelas '.$nama_kelas.' gagal');
			redirect('administrator/input','refresh');
		}

	}

	public function cetak_harian()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['kelas'] = $this->db->get('app_class')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/cetak_harian', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function cetak_bulan()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['kelas'] = $this->db->get('app_class')->result();
		$data['month'] = $this->db->get('app_month')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/cetak_bulan', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function detail($nisn)
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['siswa'] = $this->db->get_where('app_student',['std_nisn' => $nisn])->row_array();

		$this->db->order_by('abs_date', 'desc');
		$this->db->where('abs_nisn', $nisn);
		$data['absen'] = $this->db->get('std_rekap_absen')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/detail', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function cetak_semester()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['semester'] = $this->db->get('app_semester')->result();
		$data['tp'] = $this->db->get('app_tp')->result();
		$data['kelas'] = $this->db->get('app_class')->result();
		$data['sch'] = $this->db->get('app_school')->row_array();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/cetak_semester', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function detail_sakit()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$this->db->select('*');
		$this->db->where('abs_ket', '1');
		$this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
		$data['sakit'] = $this->db->get('std_rekap_absen')->result();
		
		$data['sekolah'] = $this->db->get('app_school')->row_array();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/detail_sakit', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function detail_ijin()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$this->db->select('*');
		$this->db->where('abs_ket', '2');
		$this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
		$data['sakit'] = $this->db->get('std_rekap_absen')->result();
		
		$data['sekolah'] = $this->db->get('app_school')->row_array();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/detail_ijin', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	public function detail_bolos()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}
		
		$this->db->select('*');
		$this->db->where('abs_ket', '3');
		$this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
		$data['sakit'] = $this->db->get('std_rekap_absen')->result();
		
		$data['sekolah'] = $this->db->get('app_school')->row_array();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/detail_bolos', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}

	//================================================================ BARU ===========================================================

	public function data_siswa()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['kelas'] = $this->db->get('app_class')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/data_siswa', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}
	
public function data_guru()
{
	if (! $this->session->userdata('email')) {
		redirect('','refresh');
	}

	$data['gurus'] = $this->db->get('app_absen_user')->result();

	$this->load->view('admin/meta');
	$this->load->view('admin/header');
	$this->load->view('admin/sidebar');
	$this->load->view('admin/data_guru', $data);
	$this->load->view('admin/footer');
	$this->load->view('admin/script');
}

public function data_guru_tambah()
{
	if (! $this->session->userdata('email')) {
		redirect('','refresh');
	}

	$data['gurus'] = $this->db->get('app_absen_user')->result();

	$this->load->view('admin/meta');
	$this->load->view('admin/header');
	$this->load->view('admin/sidebar');
	$this->load->view('admin/data_guru_tambah', $data);
	$this->load->view('admin/footer');
	$this->load->view('admin/script');
}


	public function data_siswa_tambah()
	{
		if (! $this->session->userdata('email')) {
			redirect('','refresh');
		}

		$data['kelas'] = $this->db->get('app_class')->result();

		$this->load->view('admin/meta');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('admin/data_siswa_tambah', $data);
		$this->load->view('admin/footer');
		$this->load->view('admin/script');
	}
	
	public function data_siswa_edit($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

    // Assuming you have a column named 'id_' as the primary key
    $data['siswa'] = $this->db->get_where('app_student', array('id_' => $student_id))->row();
	$data['kelas'] = $this->db->get('app_class')->result();
    $this->load->view('admin/meta');
    $this->load->view('admin/header');
    $this->load->view('admin/sidebar');
    $this->load->view('admin/data_siswa_edit', $data);
    $this->load->view('admin/footer');
    $this->load->view('admin/script');
}
	public function data_guru_edit($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }
	$data['gurus'] = $this->db->get_where('app_absen_user', array('id_' => $student_id))->row();
    $this->load->view('admin/meta');
    $this->load->view('admin/header');
    $this->load->view('admin/sidebar');
    $this->load->view('admin/data_guru_edit', $data);
    $this->load->view('admin/footer');
    $this->load->view('admin/script');
}

	

	public function input_siswa()
{
    $class_info = $this->db->get_where('app_class', ['cl_code' => $this->input->post('kelas')])->row_array();

    $data = array(
        'id_' => '',
        'std_name' => $this->input->post('nama'),
        'std_nisn' => $this->input->post('nisn'),
        'std_class_code' => $this->input->post('kelas'),
        'std_class_name' => $class_info['cl_name'],
        'std_grade' => $class_info['cl_grade'],
        'std_major' => '-',
        'std_address' => $this->input->post('alamat'),
        'std_hp' => $this->input->post('hp'),
        'std_email' => $this->input->post('email'),
        'std_activity' => '-',
        'std_sick' => '-',
        'std_ijin' => '-',
        'std_absen' => '-',
        'std_status' => '1'
    );

    $insert = $this->modelinsert->siswa($data);
    if ($insert) {
        $this->session->set_flashdata('success', 'Input data siswa '.$this->input->post('nama').' berhasil');
        redirect('administrator/data_siswa','refresh');
    } else {
        $this->session->set_flashdata('error', 'Input data absen kelas '.$this->input->post('kelas').' gagal');
        redirect('administrator/data_siswa','refresh');
    }
}
public function input_guru()
{
    $password = $this->input->post('password');
    // Hash the password using Bcrypt
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    $data = array(
        'id_' => '',
        'email' => $this->input->post('email'),
        'name' => $this->input->post('name'),
        'password' => $hashed_password, // Store the hashed password
        'role' => $this->input->post('role')
    );

    $insert = $this->modelinsert->guru($data);
    if ($insert) {
        $this->session->set_flashdata('success', 'Input data guru ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_guru', 'refresh');
    } else {
        $this->session->set_flashdata('error', 'input data guru ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_siswa', 'refresh');
    }
}


public function edit_siswa()
{
    $class_info = $this->db->get_where('app_class', ['cl_code' => $this->input->post('kelas')])->row_array();
    $data = array(
        'id_' => '',
        'std_name' => $this->input->post('nama'),
        'std_nisn' => $this->input->post('nisn'),
        'std_class_code' => $this->input->post('kelas'),
        'std_class_name' => $class_info['cl_name'],
        'std_grade' => $class_info['cl_grade'],
        'std_major' => '-',
        'std_address' => $this->input->post('alamat'),
        'std_hp' => $this->input->post('hp'),
        'std_email' => $this->input->post('email'),
        'std_activity' => '-',
        'std_sick' => '-',
        'std_ijin' => '-',
        'std_absen' => '-',
        'std_status' => '1'
    );
    $id = $this->input->post('id_');
    $update = $this->modelinsert->update_siswa($data, $id);  // Pass both $data and $id

    if ($update) {
        $this->session->set_flashdata('success', 'Update data siswa ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_siswa', 'refresh');
    } else {
        $this->session->set_flashdata('error', 'Update data siswa ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_siswa', 'refresh');
    }
}
public function edit_guru()
{
	$password = $this->input->post('password');
    // Hash the password using Bcrypt
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);
    $data = array(
        'id_' => '',
        'email' => $this->input->post('email'),
        'name' => $this->input->post('name'),
        'password' => $hashed_password, // Store the hashed password
        'role' => $this->input->post('role')
    );
    $id = $this->input->post('id_');
    $update = $this->modelinsert->update_guru($data, $id);  // Pass both $data and $id

    if ($update) {
        $this->session->set_flashdata('success', 'Update data guru ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_guru', 'refresh');
    } else {
        $this->session->set_flashdata('error', 'Update data guru ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_guru', 'refresh');
    }
}
public function data_siswa_hapus($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

    // Load the model that contains the delete function
    $this->load->model('modelinsert');

    // Call the delete function
    $result = $this->modelinsert->delete_siswa($student_id);

    if ($result) {
        $this->session->set_flashdata('success', 'Data siswa berhasil dihapus');
    } else {
        $this->session->set_flashdata('error', 'Gagal menghapus data siswa');
    }

    // Redirect to the data_siswa page or any other page you prefer
    redirect('administrator/data_siswa', 'refresh');
}
public function data_guru_hapus($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

    // Load the model that contains the delete function
    $this->load->model('modelinsert');

    // Call the delete function
    $result = $this->modelinsert->delete_guru($student_id);

    if ($result) {
        $this->session->set_flashdata('success', 'Data guru berhasil dihapus');
    } else {
        $this->session->set_flashdata('error', 'Gagal menghapus data guru');
    }

    // Redirect to the data_siswa page or any other page you prefer
    redirect('administrator/data_guru', 'refresh');
}



}

/* End of file Administrator.php */
/* Location: ./application/controllers/Administrator.php */