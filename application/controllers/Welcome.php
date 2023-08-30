<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
	}

	public function index()
	{

		$this->form_validation->set_rules('email', 'Email', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('login/loginpage');
		} else {
			$this->_login();
		}
	}

	private function _login()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$query = $this->db->get_where('app_absen_user',['email' => $email])->row_array();

		if ($query) {
			if (password_verify($password, $query['password'])) {
				$data = 
				[
					'email' => $email,
					'session' => date('d-m-Y H:m:s'),
				];
				
				$this->session->set_userdata( $data );

				redirect('administrator','refresh');

			} else {
				$this->session->set_flashdata('error', 'Password Salah');
				redirect('','refresh');
			}
		} else {
			$this->session->set_flashdata('error', 'Email dan Password salah');
			redirect('','refresh');
		}
	}

	public function logout()
	{
		session_destroy();
		redirect('','refresh');
	}
}
