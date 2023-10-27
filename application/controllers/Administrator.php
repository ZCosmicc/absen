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

		//$data['user'] = AMBIL SESSION DI ATAS
		$data['siswa'] = $this->db->get('app_student')->num_rows();
		//$data['kelas'] = $this->db->get_where('app_class',['cl_teacher' => 'SESSION TADI'])->num_rows();
		//$data['siswa'] = $this->db->get_where('app_student',['abs_ket' => '1'])->num_rows();

		//Update percobaan baru. harus mengetahui apakah ada keterkaitan antar db
		// $email = $this->session->userdata('email');
		// $this->db->where('cl_teacher', $email);
		// $data['kelas'] = $this->db->get('app_class')->result();

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

}

/* End of file Administrator.php */
/* Location: ./application/controllers/Administrator.php */