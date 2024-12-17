<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class User extends CI_Controller {
    public function __construct(){
        parent ::__construct();
        //memanggil public di model
        $this->load->model('User_model');
        // membatasi akses pengguna yang bukan Admin. Jika bukan admin maka akan diarahkan ke halaman login
        if($this->session->userdata('level')<>'Admin'){
            redirect('auth');   
        }
    }
	public function index(){
        //memanggil database user 
        $this->db->from('user');
        //mengurutkan berdasarkan nama
        $this->db->order_by('nama', 'ASC');
        //ditampung dalam variabel user dan di tampung dalam array
        $user = $this->db->get()->result_array();
		// ngasih variabel untuk judul halaman di dalam user
		$data = array(
			'judul_halaman' => 'Data Pengguna' ,
            'user'          => $user
		);
		//memanggil template di halaman dashboard
		//memanggil juga isi nya yg berada di folder admin > di dalam file user_index(menampilkan user)
		$this->template->load('template_admin','admin/user_index',$data);
	}
    public function simpan(){
        //mencari username di dalam tabel user agar username tidak boleh sama
        $this->db->from('user');
        $this->db->where('username',$this->input->post('username'));
        //kemudian di tampung dalam variabel cek 
        $cek = $this->db->get()->result_array();
        //jika cek tidak sama dengan null
        if($cek<>NULL){
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
            Yahhh username sudah adaa !😼
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        ');
        redirect('admin/user');
        }
        //memangil nama model dan function
        $this->User_model->simpan();
        //nontifikasi
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
         Wuiss user berhasil disimpan nihh !😻
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
          </button>
        </div>
        ');
        redirect('admin/user');
    }
    public function hapus($id){
        $where = array(
            'id_user'  => $id
        );
        //perintah hapus
        $this->db->delete('user',$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil menghapus user nihh ! 😺
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         ');
         redirect('admin/user');
    }
    public function update(){
         //memangil nama model dan function
         $this->User_model->update();
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil memperbarui user nihh !  😻 
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         ');
         redirect('admin/user');
    }
}