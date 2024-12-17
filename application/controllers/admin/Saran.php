<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Saran extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Saran_model');
    }
    public function index() {
        $this->db->from('saran');
        $this->db->order_by('id_saran', 'ASC');
        $saran = $this->db->get()->result_array();
        $data = array(
			'judul_halaman' => 'Data Pengguna' ,
            'saran'          => $saran
		);

        $this->template->load('template_admin','admin/saran_view', $data);
    }
    public function simpan() { // Metode baru
        $data = array(
            'nama' => $this->input->post('name'),
            'email' => $this->input->post('email'),
            'isi_saran' => $this->input->post('comment'),
            'tanggal' => date('Y-m-d H:i:s')
        );

        $this->Saran_model->insert_saran($data);
        redirect('home',$data);
    }
    public function hapus($id_saran) {
        $this->db->where('id_saran', $id_saran);
        $this->db->delete('saran');

        $this->session->set_flashdata('alert', '
            <div class="alert alert-danger alert-dismissible" role="alert">
                Saran berhasil dihapus! 😺
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        ');
        redirect('admin/saran');
    }
}
?>   