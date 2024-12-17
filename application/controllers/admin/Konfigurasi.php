<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konfigurasi extends CI_Controller {
    public function __construct(){
        parent ::__construct();
		if($this->session->userdata('level')==NULL){
            redirect('auth');   
        }
    }
	public function index(){
		$this->db->from('konfigurasi');
		//menampilkan perintah isi
		$konfig = $this->db->get()->row();
		// ngasih variabel untuk judul halaman di dalam Konfigurasi
		$data = array(
			'judul_halaman' => 'Halaman Konfigurasi',
			'konfig'        => $konfig
		);

		//memanggil template di halaman konfigurasi
		//memanggil juga isi nya yg berada di folder admin > di dalam file konfigurasi
		$this->template->load('template_admin','admin/konfigurasi',$data);
	}
	public function update(){
        $where = array('id_konfigurasi'  =>1);
        $data = array(
			'judul_website'   => $this->input->post('judul'),
			'profil_website'  => $this->input->post('profil_website'),
			'instagram'       => $this->input->post('instagram'),
			'tiktok'          => $this->input->post('tiktok'),
			'email'           => $this->input->post('email'),
			'alamat'   		  => $this->input->post('alamat'),
			'no_wa' 		  => $this->input->post('no_wa'),
		);
        //perintah update = nama tabel dan datanya
        $this->db->update('konfigurasi',$data,$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil memperbarui konfigurasi nihh !  😻 
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         '); 
         redirect('admin/konfigurasi');
    }
}