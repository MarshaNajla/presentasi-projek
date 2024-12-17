<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Caraousel extends CI_Controller {
    public function __construct(){
        parent ::__construct(); 
        // membatasi akses pengguna yang bukan Admin. Jika bukan admin maka akan diarahkan ke halaman login
        if($this->session->userdata('level')==NULL){
            redirect('auth');   
        }
    }
	public function index(){
         //memanggil database user 
        $this->db->from('caraousel');
        //ditampung dalam variabel caraousel dan di tampung dalam array
        $caraousel = $this->db->get()->result_array();
        //ditampung dalam variabel caraousel dan di tampung dalam array
		$data = array(
			'judul_halaman'  => 'halaman Caraousel',
            'caraousel'      => $caraousel
		);
        //memanggil template di halaman dashboard
		//memanggil juga isi nya yg berada di folder admin > di dalam file caraousel_index(menampilkan caraousel)
		$this->template->load('template_admin','admin/caraousel_index',$data);
	}
    public function simpan(){
        // Menghasilkan nama file gambar berdasarkan waktu saat itu
        $namafoto = date('YmdHis').'.jpg';
        // Menetapkan folder tujuan di mana file gambar akan disimpan
        $config['upload_path']          = 'assets/upload/caraousel/';
        $config['max_size'] = 500 * 1024; //3 * 1024 * 1024; //3Mb; 0=unlimited
        // Nama file yang akan diunggah ditetapkan menjadi $namafoto
        $config['file_name']            = $namafoto;
        $config['allowed_types']        = '*';
        // Memuat library upload dengan konfigurasi yang telah ditetapkan di atas
        $this->load->library('upload', $config);
        // memeriksa apakah sesuai
        if($_FILES['foto']['size'] >= 500 * 1024){
            $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
            Yahhh ukuran foto terlalu besar, upload ulang foto dengan ukuran yang kurang dari 500 KB !😼
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        ');
        redirect('admin/caraousel');
        } elseif( ! $this->upload->do_upload('foto')){
            $error = array('eror' => $this->upload->display_errors());
        }else {
            $data = array('upload_data' => $this->upload->data());
        }
        $data = array(
            'judul'         => $this->input->post('judul'),
            'foto'          => $namafoto,
        );
        $this->db->insert('caraousel',$data);
        //nontifikasi
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
         Wuiss caraousel berhasil disimpan nihh !😻
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
          </button>
        </div>
        ');
        redirect('admin/caraousel');
    }
    public function hapus($id){
        $filename=FCPATH.'/assets/upload/caraousel/'.$id;
            if(file_exists($filename)){
                unlink("./assets/upload/caraousel/".$id);
            }
        $where = array(
            'foto'  => $id
        );
        //perintah hapus
        $this->db->delete('caraousel',$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil menghapus caraousel nihh ! 😺
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         ');
         redirect('admin/caraousel');
    }
}