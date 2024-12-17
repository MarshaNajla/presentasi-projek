<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Blog extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Post_model'); // Pastikan model ini ada
    }
    public function detail($slug) {
        // Ambil konten berdasarkan slug
        $data['konten'] = $this->Post_model->get_post_by_slug($slug); // Pastikan method ini ada di model
        $data['recent_posts'] = $this->Post_model->get_recent_posts(); // Ambil recent posts

        // Set judul halaman
        $data['judul'] = $data['konten']->judul;

        // Load view dengan data yang diperlukan
        $this->load->view('detail', $data); // Pastikan view ini ada
    }
    public function detail($slug) {
        $data['recent_posts'] = $this->Post_model->get_recent_posts();
        $this->load->view('detail', $data);
    }
}