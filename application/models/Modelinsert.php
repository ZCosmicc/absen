<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Modelinsert extends CI_Model {

	function absen($data)
	{
		$insert = $this->db->insert_batch('std_absen', $data);

		$this->db->where('abs_ket', '');
		$selec = $this->db->delete('std_absen');
		
		$copy = $this->db->query('INSERT INTO std_rekap_absen(abs_nisn,abs_cl_code,abs_ket,abs_ket_lain,abs_date,abs_tg,abs_bln,abs_th,abs_tp,abs_semester) SELECT abs_nisn,abs_cl_code,abs_ket,abs_ket_lain,abs_date,abs_tg,abs_bln,abs_th,abs_tp,abs_semester FROM std_absen ');
		$kosong = $this->db->truncate('std_absen');

		if ($insert && $selec && $copy && $kosong) {
			return TRUE;
		} else {
			return FALSE;
		}


	}	

}

/* End of file Modelinsert.php */
/* Location: ./application/models/Modelinsert.php */