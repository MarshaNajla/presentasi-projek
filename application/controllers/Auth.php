<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Auth extends CI_Controller {
    public function __construct(){
        parent ::__construct();
        $this->load->library('form_validation');
    }
	public function index(){
		$this->load->view('login');
	}
    public function login(){
        //cocokan dlu pasword nya
        //username sambung ke dalam variabel baru
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
		 //mencari username di dalam tabel user agar username tidak boleh sama
         $this->db->from('user');
         $this->db->where('username',$username);
         //kemudian di tampung dalam variabel cek 
         //data sifat nya sedikit / cuman 1 data yang di tampilkan
         $cek = $this->db->get()->row();
         //jika cek tidak sama dengan null
         if($cek==NULL){
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
             Yahhh username tidakk adaa !😼
             <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
             </button>
         </div>
         ');
         redirect('auth');
         //jadi di cocokan dlu password yg di inputkan ketika login yg ada di dalam db
         } else if($password==$cek->password) {
            $data = array(
                'id_user'   => $cek->id_user,
                'nama'      => $cek->nama,  
                'username'  => $cek->username,
                'level'     => $cek->level,
            );
            $this->session->set_userdata($data);
            redirect('admin/home');
         } else { 
            $this->session->set_flashdata('alert', '
            <div class="alert alert-primary alert-dismissible" role="alert">
                password salah ! 😸 
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
            ');
            redirect('auth');
         }
	}
    public function register(){
        $this->load->view('register'); // Load view register
    }
    public function register_process(){
        $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|max_length[12]');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');
        
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('alert', '
            <div class="alert alert-danger alert-dismissible" role="alert">
                Registrasi gagal, pastikan semua field diisi dengan benar! 😿
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>');
            redirect('auth/register');
        } else {
            $data = array(
                'username' => $this->input->post('username'),
                'nama' => $this->input->post('nama'),
                'level' => ucfirst(strtolower($this->input->post('level'))),  // Menyimpan level dengan format pertama huruf kapital
                'password' => md5($this->input->post('password')) // Simpan password dengan MD5
            );
            $this->db->insert('user', $data);
          
        
            $this->session->set_flashdata('alert', '
            <div class="alert alert-success alert-dismissible" role="alert">
                Registrasi berhasil! Silakan login. 😺
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>');
            redirect('auth');
        }
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('home');
    }
} 
                  