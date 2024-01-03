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

	function siswa($data)
{
    try {
        $this->db->insert('app_student', $data);

        if ($this->db->affected_rows() > 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    } catch (Exception $e) {

        log_message('error', $e->getMessage());
        return FALSE;
    }
}
	function guru($data)
{
    try {
        $this->db->insert('app_absen_user', $data);

        if ($this->db->affected_rows() > 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    } catch (Exception $e) {
        log_message('error', $e->getMessage());
        return FALSE;
    }
}

function update_siswa($data, $id)
{
    try {
        unset($data['id_']);
        
        $this->db->where('id_', $id);
        $this->db->update('app_student', $data);

        return $this->db->affected_rows() > 0;
    } catch (Exception $e) {

        log_message('error', $e->getMessage());
        return FALSE;
    }
}
function update_guru($data, $id)
{
    try {
        unset($data['id_']);

        $this->db->where('id_', $id);
        $this->db->update('app_absen_user', $data);

        return $this->db->affected_rows() > 0;
    } catch (Exception $e) {
        log_message('error', $e->getMessage());
        return FALSE;
    }
}
function update_kelas($data, $id)
{
    try {
        unset($data['id_']);
        
        $this->db->where('id_', $id);
        $this->db->update('app_class', $data);

        return $this->db->affected_rows() > 0;
    } catch (Exception $e) {

        log_message('error', $e->getMessage());
        return FALSE;
    }
}
function delete_siswa($student_id)
{
    try {
        $this->db->where('id_', $student_id);
        $this->db->delete('app_student');

        return $this->db->affected_rows() > 0;
    } catch (Exception $e) {
        log_message('error', $e->getMessage());
        return FALSE;
    }
}
function delete_guru($student_id)
{
    try {
        $this->db->where('id_', $student_id);
        $this->db->delete('app_absen_user');

        return $this->db->affected_rows() > 0;
    } catch (Exception $e) {
        log_message('error', $e->getMessage());
        return FALSE;
    }
}



}

// /* End of file Modelinsert.php */
// /* Location: ./application/models/Modelinsert.php */