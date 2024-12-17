<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Kategori extends CI_Controller {
    public function __construct(){
        parent ::__construct();
        if($this->session->userdata('level')==NULL){
            redirect('auth');   
        }
    }
	public function index(){
        $this->db->from('kategori');
        //mengurutkan berdasarkan nama
        $this->db->order_by('nama_kategori', 'ASC');
        //ditampung dalam variabel kategori dan di tampung dalam array
        $kategori = $this->db->get()->result_array();
		$data = array(
			'judul_halaman' => 'kategori konten',
            'kategori'      => $kategori
		);
		$this->template->load('template_admin','admin/kategori_index',$data);
	}
    public function simpan(){
        $this->db->from('kategori');
        $this->db->where('nama_kategori',$this->input->post('nama_kategori'));
        $cek = $this->db->get()->result_array();
        if($cek<>NULL){
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
            Yahhh kategoori konten sudah adaa !😼
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        ');
        redirect('admin/kategori');
        }
        $data = array(
            'nama_kategori'  => $this->input->post('nama_kategori')
        );
        $this->db->insert('kategori',$data);
        //nontifikasi
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
         Wuiss kategori berhasil disimpan nihh !😻
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
          </button>
        </div>
        ');
        redirect('admin/kategori');
    }
    public function hapus($id){
        $where = array(
            'id_kategori'  => $id
        );
        //perintah hapus
        $this->db->delete('kategori',$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil menghapus kategori nihh ! 😺
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         ');
         redirect('admin/kategori');
    }
    public function update(){
        $where = array('id_kategori'  => $this->input->post('id_kategori'));
        $data = array('nama_kategori'  => $this->input->post('nama_kategori'));
        //perintah update = nama tabel dan datanya
        $this->db->update('kategori',$data,$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil memperbarui kategori nihh !  😻 
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         '); 
         redirect('admin/kategori');
    }
}