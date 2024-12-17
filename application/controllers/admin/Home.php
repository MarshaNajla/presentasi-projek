<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller {
    public function __construct(){
        parent ::__construct();
		if($this->session->userdata('level')==NULL){
            redirect('auth');   
        }
    }
	public function index(){
		// ngasih variabel untuk judul halaman di dalam dashoard
		$data = array(
			'judul_halaman' => 'halaman Dashboard'
		);
		//memanggil template di halaman dashboard
		//memanggil juga isi nya yg berada di folder admin > di dalam file dashboard 
		$this->template->load('template_admin','admin/dashboard',$data);

        
	}
	public function cari(){
	$judul = $this->input->post('judul');
    $skincare = $this->home_model->cari($judul);
    // Cek apakah data ditemukan
    if (empty($skincare)) {
        // Jika data tidak ditemukan, beri pesan dan tetap di halaman dashboard
        $this->session->set_flashdata('message', 'Tidak ada skincare yang ditemukan.');
        redirect('');
    } else {
        // Jika data ditemukan, arahkan ke halaman hasil dan kirim data
        $data = array(
            'halaman' => 'Carbook - Search',
            'skincare' => $skincare,
        );
        // var_dump($data);
        // die;
        $this->load->view('skincare', $data);
    }
	}

}