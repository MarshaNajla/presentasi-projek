<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konten_model extends CI_Model {
    public function getKontenByKategori($id_kategori) {
        $this->db->where('id_kategori', $id_kategori);
        $query = $this->db->get('konten');
        return $query->result_array(); // Mengembalikan semua konten dalam kategori
    }
   
}