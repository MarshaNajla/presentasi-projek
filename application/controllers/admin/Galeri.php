<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Galeri extends CI_Controller {
    public function __construct(){
        parent::__construct();
    }
    public function index(){
        $this->db->from('kategori ');
        $this->db->order_by('nama_kategori ', 'ASC');
        $kategori = $this->db->get()->result_array();

        $this->db->from('galeri a');
        $this->db->join('kategori b','a.id_kategori=b.id_kategori','left');
        $this->db->join('user c','a.username=c.username','left');
        $this->db->order_by('tanggal ', 'DESC');

        $galeri = $this->db->get()->result_array();
        $data = array(
            'judul_halaman' => 'Halaman Galeri',
            'kategori'      => $kategori,
            'galeri'        => $galeri
        );
		$this->template->load('template_admin','admin/galeri_index', $data);
    }
    public function simpan(){
        $namafoto = date('YmdHis').'.jpg';
        $config['upload_path']      = 'assets/upload/galeri/';
        $config['max_size']         = 500 * 1024; //3 * 1024 * 1024; //3Mb; 0=unlimited
        $config['file_name']        = $namafoto;
        $config['allowed_types']    = '*';
        $this->load->library('upload', $config);
        if($_FILES['foto']['size'] >= 500 * 1024) {
            $this->session->set_flashdata('alert','
                <div class=" alert alert-danger alert-dismissible" role="alert">
                    Ukuran foto terlalu besar, upload ulang foto dengan ukuran yang kurang dari 500 KB.
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div> 
            ');
            redirect('admin/galeri');
        } elseif(! $this->upload->do_upload('foto')){
            $error = array('error' => $this->upload->display_errors());
        }else{
            $data = array('upload_data' => $this->upload->data());
        }

        
        $this->db->from('galeri');
        $this->db->where('judul', $this->input->post('judul'));
        $cek = $this->db->get()->result_array();
        if($cek<>NULL){
            $this->session->set_flashdata('alert', '
            <div class="alert alert-dark alert-dismissible mb-3" role="alert">
                            Yahh Judul sudah ada nihh!! Ganti yang lain oke 😉👌
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                          </div>
            ');
            redirect('admin/galeri');
        }
        $data = array(
            'judul'             => $this->input->post('judul'),
            'id_kategori'       => $this->input->post('id_kategori'), 
            'tanggal'           => date('Y-m-d'),
            'foto'              => $namafoto,
        );
        $this->db->insert('galeri',$data);
        $this->session->set_flashdata('alert', '
        <div class="alert alert-dark alert-dismissible mb-3" role="alert">
                      SELAMAT!! Kamu berhasil menambahkan foto 😉👌
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                      </div>
        ');
        redirect('admin/galeri');
    }
    public function delete_data($id){
        $filename=FCPATH.'/assets/upload/galeri/'.$id;
            if(file_exists($filename)){
                unlink("./assets/upload/galeri/".$id);
            }
        $where = array(
            'foto'  => $id
        );
        //perintah hapus
        $this->db->delete('galeri',$where);
         //nontifikasi
         $this->session->set_flashdata('alert', '
         <div class="alert alert-primary alert-dismissible" role="alert">
          Yeayy berhasil menghapus foto dari galeri nihh 👌
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
           </button>
         </div>
         ');
         redirect('admin/galeri');
    }
    public function update(){
        $namafoto = $this->input->post('nama_foto');
        $config['upload_path']          = 'assets/upload/galeri/';
        $config['max_size'] = 500 * 1024; //3 * 1024 * 1024; //3Mb; 0=unlimited
        $config['file_name']            = $namafoto;
        $config['overwrite']            = true;
        $config['allowed_types']        = '*';
        $this->load->library('upload', $config);
        if($_FILES['foto']['size'] >= 500 * 1024){
            $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
            Yahhh ukuran foto terlalu besar, upload ulang foto dengan ukuran yang kurang dari 500 KB !😼
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        '); 
        redirect('admin/galeri');
        } elseif( ! $this->upload->do_upload('foto')){
            $error = array('error' => $this->upload->display_errors());
        }else {
            $data = array('upload_data' => $this->upload->data());
        }
        $data = array(
            'judul'         => $this->input->post('judul'),
            'id_kategori'   => $this->input->post('id_kategori')
        );
        $where = array(
            'foto'    => $this->input->post('nama_foto')
        );
        $this->db->update('galeri',$data,$where);
        //nontifikasi
        $this->session->set_flashdata('alert', '
        <div class="alert alert-primary alert-dismissible" role="alert">
         Wuiss Galerimu berhasil diperbarui nihh !😻
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
          </button>
        </div>
        ');
        redirect('admin/galeri');
    }
}
?>