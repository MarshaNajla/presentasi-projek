<?php
defined('BASEPATH') OR exit('No direct script access allowed');
    class Kategori_model extends CI_Model {
        public function getKategoriById($id_kategori) {
            $this->db->where('id_kategori', $id_kategori);
            $query = $this->db->get('kategori');
            return $query->row_array(); // Mengembalikan kategori
        }
    }
