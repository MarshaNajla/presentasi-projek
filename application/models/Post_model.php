<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function get_recent_posts($limit = 5) {
        $this->db->order_by('created_at', 'DESC');
        $query = $this->db->get('posts', $limit);
        return $query->result_array();
    }

    public function get_post_by_slug($slug) {
        $this->db->where('slug', $slug);
        $query = $this->db->get('posts'); // Ganti 'posts' dengan nama tabel Anda
        return $query->row(); // Mengembalikan satu baris
    }
}