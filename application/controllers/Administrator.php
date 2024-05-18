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
    
    $data['siswa'] = $this->db->get('app_student')->num_rows();
    $data['sekolah'] = $this->db->get('app_school')->row_array();

    // Ambil data semester dan tahun ajar dari tabel app_school
    $semester = $data['sekolah']['sch_semester'];
    $tahun_ajar = $data['sekolah']['sch_tp'];

    // Filter data absen berdasarkan semester dan tahun ajar
    $this->db->where('abs_tp', $tahun_ajar);
    $this->db->where('abs_semester', $semester);
    $data['sakit'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '1'])->num_rows();

    $this->db->where('abs_tp', $tahun_ajar);
    $this->db->where('abs_semester', $semester);
    $data['ijin'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '2'])->num_rows();

    $this->db->where('abs_tp', $tahun_ajar);
    $this->db->where('abs_semester', $semester);
    $data['bolos'] = $this->db->get_where('std_rekap_absen',['abs_ket' => '3'])->num_rows();

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
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

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
        // Cek apakah data sudah ada di std_rekap_absen
        $existing_data = $this->db->get_where('std_rekap_absen', array(
            'abs_nisn' => $std_nisn[$index],
            'abs_date' => $tanggal
        ))->row_array();

        if ($existing_data) {
            // Jika data sudah ada, update abs_ket dan abs_ket_lain
            $this->db->where('abs_nisn', $std_nisn[$index]);
            $this->db->where('abs_date', $tanggal);
            $this->db->update('std_rekap_absen', array(
                'abs_ket' => $absen[$index],
                'abs_ket_lain' => $ket_lain[$index],
            ));
        } else {
            // Jika data belum ada, tambahkan data baru
            $data[] = array(
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
            );
        }

        $index++;
    }

    // Tambahkan data baru ke std_rekap_absen menggunakan insert_batch
    if (!empty($data)) {
        $this->modelinsert->absen($data);
    }

    redirect('administrator/input', 'refresh');
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

		//$data['semester'] = $this->db->get('app_semester')->result();
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
    
        $data['sekolah'] = $this->db->get('app_school')->row_array();
        $tahun_pelajaran = $data['sekolah']['sch_tp'];
        $semester = $data['sekolah']['sch_semester'];
    
        $this->db->select('*');
        $this->db->where('abs_ket', '1');
        $this->db->where('abs_tp', $tahun_pelajaran);
        $this->db->where('abs_semester', $semester);
        $this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
        $data['sakit'] = $this->db->get('std_rekap_absen')->result();
    
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
    
        $data['sekolah'] = $this->db->get('app_school')->row_array();
        $tahun_pelajaran = $data['sekolah']['sch_tp'];
        $semester = $data['sekolah']['sch_semester'];
    
        $this->db->select('*');
        $this->db->where('abs_ket', '2');
        $this->db->where('abs_tp', $tahun_pelajaran);
        $this->db->where('abs_semester', $semester);
        $this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
        $data['ijin'] = $this->db->get('std_rekap_absen')->result();
    
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
        
        $data['sekolah'] = $this->db->get('app_school')->row_array();
        $tahun_pelajaran = $data['sekolah']['sch_tp'];
        $semester = $data['sekolah']['sch_semester'];
    
        $this->db->select('*');
        $this->db->where('abs_ket', '3');
        $this->db->where('abs_tp', $tahun_pelajaran);
        $this->db->where('abs_semester', $semester);
        $this->db->join('app_student', 'app_student.std_nisn = std_rekap_absen.abs_nisn', 'left');
        $data['bolos'] = $this->db->get('std_rekap_absen')->result();
    
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

		$role = $this->session->userdata('role');
		if ($role !== 'admin') {
			//$this->session->set_flashdata('error', 'Anda tidak memiliki izin untuk mengakses halaman ini.'); (telat)
			redirect('administrator', 'refresh'); 
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

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

	$data['gurus'] = $this->db->get('app_absen_user')->result();

	$this->load->view('admin/meta');
	$this->load->view('admin/header');
	$this->load->view('admin/sidebar');
	$this->load->view('admin/data_guru', $data);
	$this->load->view('admin/footer');
	$this->load->view('admin/script');
}

public function data_kelas()
{
	if (! $this->session->userdata('email')) {
		redirect('','refresh');
	}

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

	$data['klass'] = $this->db->get('app_class')->result();

	$this->load->view('admin/meta');
	$this->load->view('admin/header');
	$this->load->view('admin/sidebar');
	$this->load->view('admin/data_kelas', $data);
	$this->load->view('admin/footer');
	$this->load->view('admin/script');
}

public function data_guru_tambah()
{
	if (! $this->session->userdata('email')) {
		redirect('','refresh');
	}

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
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

		$role = $this->session->userdata('role');
		if ($role !== 'admin') {
			redirect('administrator', 'refresh'); 
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

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

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

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

	$data['gurus'] = $this->db->get_where('app_absen_user', array('id_' => $student_id))->row();
    $this->load->view('admin/meta');
    $this->load->view('admin/header');
    $this->load->view('admin/sidebar');
    $this->load->view('admin/data_guru_edit', $data);
    $this->load->view('admin/footer');
    $this->load->view('admin/script');
}

public function data_kelas_edit($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

	$this->db->where('role', 'guru');
    $data['all_teachers'] = $this->db->get('app_absen_user')->result();

	$data['klass'] = $this->db->get_where('app_class', array('id_' => $student_id))->row();

    $this->load->view('admin/meta');
    $this->load->view('admin/header');
    $this->load->view('admin/sidebar');
    $this->load->view('admin/data_kelas_edit', $data);
    $this->load->view('admin/footer');
    $this->load->view('admin/script');
}

public function data_sem_edit($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

    $data['all_tp'] = $this->db->get('app_tp')->result();
	//$data['all_semester'] = $this->db->get('app_semester')->result();

	// $this->db->where('id_', '1');
	$data['allschool'] = $this->db->get_where('app_school', array('id_' => $student_id))->row();

    $this->load->view('admin/meta');
    $this->load->view('admin/header');
    $this->load->view('admin/sidebar');
    $this->load->view('admin/data_sem_edit', $data);
    $this->load->view('admin/footer');
    $this->load->view('admin/script');
}

public function input_siswa()
{
    $nisn = $this->input->post('nisn');
    $nama = $this->input->post('nama');
    $kelas = $this->input->post('kelas');

    if (empty($nisn) || empty($nama) || empty($kelas)) {
        //$this->session->set_flashdata('error', 'Semua data harus diisi.');
        redirect('administrator/data_siswa_tambah', 'refresh');
        return;
    }

    $existing_student = $this->db->get_where('app_student', ['std_nisn' => $nisn])->row_array();

    if ($existing_student) {
        //$this->session->set_flashdata('error', 'NISN '.$nisn.' sudah ada di database');
        redirect('administrator/data_siswa_tambah', 'refresh');
        return;
    }

    $class_info = $this->db->get_where('app_class', ['cl_code' => $kelas])->row_array();

    if (empty($class_info)) {
        //$this->session->set_flashdata('error', 'Informasi kelas tidak ditemukan.');
        redirect('administrator/data_siswa_tambah', 'refresh');
        return;
    }

    $data = array(
        'id_' => '',
        'std_name' => $nama,
        'std_nisn' => $nisn,
        'std_class_code' => $kelas,
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
        $this->session->set_flashdata('success', 'Input data siswa '.$nama.' berhasil');
        redirect('administrator/data_siswa', 'refresh');
    } else {
        $this->session->set_flashdata('error', 'Input data siswa '.$nama.' gagal');
        redirect('administrator/data_siswa_tambah', 'refresh');
    }
}


public function input_guru()
{
    $nip = $this->input->post('nip');
    $email = $this->input->post('email');
    $name = $this->input->post('name');
    $role = $this->input->post('role');
    $password = $this->input->post('password');

    if (empty($nip) || empty($email) || empty($name) || empty($role) || empty($password)) {
        //$this->session->set_flashdata('error', 'Semua data harus diisi.');
        redirect('administrator/data_guru_tambah', 'refresh');
        return;
    }

    $existing_guru = $this->db->get_where('app_absen_user', ['nip' => $nip])->row_array();

    if ($existing_guru) {
        //$this->session->set_flashdata('error', 'NIP '.$nip.' sudah ada di database');
        redirect('administrator/data_guru_tambah', 'refresh');
        return;
    }

    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    $data = array(
        'id_' => '',
        'email' => $email,
        'name' => $name,
        'nip' => $nip,
        'password' => $hashed_password,
        'role' => $role
    );

    $insert = $this->modelinsert->guru($data);
    if ($insert) {
        $this->session->set_flashdata('success', 'Input data guru '.$name.' berhasil');
        redirect('administrator/data_guru', 'refresh');
    } else {
        $this->session->set_flashdata('error', 'Input data guru '.$name.' gagal');
        redirect('administrator/data_guru_tambah', 'refresh');
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
    $update = $this->modelinsert->update_siswa($data, $id);

    if ($update) {
        //$this->session->set_flashdata('success', 'Update data siswa ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_siswa', 'refresh');
    } else {
        //$this->session->set_flashdata('error', 'Update data siswa ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_siswa', 'refresh');
    }
}
public function edit_guru()
{
	// $password = $this->input->post('password');
    // $hashed_password = password_hash($password, PASSWORD_BCRYPT);
	$password = $this->input->post('password');
    if (substr($password, 0, 4) !== '$2y$') {
        $hashed_password = password_hash($password, PASSWORD_BCRYPT);
    } else {
        $hashed_password = $password;
    }

    $data = array(
        'id_' => '',
        'email' => $this->input->post('email'),
        'name' => $this->input->post('name'),
		'nip' => $this->input->post('nip'),
        'password' => $hashed_password,
        'role' => $this->input->post('role')
    );
    $id = $this->input->post('id_');
    $update = $this->modelinsert->update_guru($data, $id);

    if ($update) {
        //$this->session->set_flashdata('success', 'Update data guru ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_guru', 'refresh');
    } else {
        //$this->session->set_flashdata('error', 'Update data guru ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_guru', 'refresh');
    }
}
public function edit_kelas()
{
	$class_info = $this->db->get_where('app_class', ['cl_name' => $this->input->post('name')])->row_array();
    $data = array(
        'id_' => '',
		'cl_code' => $class_info['cl_code'],
        'cl_name' => $this->input->post('name'),
		'cl_grade' => $class_info['cl_grade'],
        'cl_teacher' => $this->input->post('guru'),

    );
    $id = $this->input->post('id_');
    $update = $this->modelinsert->update_kelas($data, $id);

    if ($update) {
        //$this->session->set_flashdata('success', 'Update data siswa ' . $this->input->post('nama') . ' berhasil');
        redirect('administrator/data_kelas', 'refresh');
    } else {
        //$this->session->set_flashdata('error', 'Update data siswa ' . $this->input->post('nama') . ' gagal');
        redirect('administrator/data_kelas', 'refresh');
    }
}
public function edit_sem()
{
	$sem_info = $this->db->get_where('app_school', ['id_' => $this->input->post('id_')])->row_array();
    $data = array(
        'id_' => '',
		'npsn' => $sem_info['npsn'],
		'sch_name' => $sem_info['sch_name'],
		'sch_address' => $sem_info['sch_address'],
		'sch_tlp' => $sem_info['sch_tlp'],
		'sch_email' => $sem_info['sch_email'],
		'sch_web' => $sem_info['sch_web'],
		'sch_logo' => $sem_info['sch_logo'],
		'sch_about' => $sem_info['sch_about'],
        'sch_tp' => $this->input->post('tp'),
        'sch_semester' => $this->input->post('semester'),

    );
    $id = $this->input->post('id_');
    $update = $this->modelinsert->update_sem($data, $id);

    if ($update) {
        //$this->session->set_flashdata('success', 'Update data semester berhasil');
        redirect('administrator', 'refresh');
    } else {
        //$this->session->set_flashdata('error', 'Update data semester gagal');
        redirect('administrator', 'refresh');
    }
}
public function data_siswa_hapus($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

    $this->load->model('modelinsert');

    $result = $this->modelinsert->delete_siswa($student_id);

    if ($result) {
        //$this->session->set_flashdata('success', 'Data siswa berhasil dihapus');
    } else {
        //$this->session->set_flashdata('error', 'Gagal menghapus data siswa');
    }

    redirect('administrator/data_siswa', 'refresh');
}
public function data_guru_hapus($student_id)
{
    if (!$this->session->userdata('email')) {
        redirect('', 'refresh');
    }

	$role = $this->session->userdata('role');
    if ($role !== 'admin') {
        redirect('administrator', 'refresh'); 
    }

    $this->load->model('modelinsert');

    $result = $this->modelinsert->delete_guru($student_id);

    if ($result) {
        //$this->session->set_flashdata('success', 'Data guru berhasil dihapus');
    } else {
        //$this->session->set_flashdata('error', 'Gagal menghapus data guru');
    }

    redirect('administrator/data_guru', 'refresh');
}



}

/* End of file Administrator.php */
/* Location: ./application/controllers/Administrator.php */