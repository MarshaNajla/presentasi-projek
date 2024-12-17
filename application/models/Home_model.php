<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home_model extends CI_Model {
    public function ambil_produk(){
        return $this->db->get('konten')->result();
    }
    public function ambil_about(){
        return $this->db->get('konten')->result();
    }

    public function cari($judul){
        $this->db->where('judul',$judul);
        return $this->db->get('konten')->row();
    }
    

}