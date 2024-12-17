<h1>Selamat datang di halaman dashboard barennbliss</h1>
<p> <?= $this->session->userdata('nama') ?? 'Guest'; ?></p>

<?php if($this->session->userdata('level') == 'Admin') { ?>
<!-- Tambahkan jarak antara tulisan -->
<p style="margin-top: 20px; font-weight: bold; font-size: 20px; color: #6c757d;">
	Apakah ada yang bisa kami bantu?
</p>

<!-- Tambahkan daftar tautan -->
<!-- Daftar tautan dengan 3 kalimat per baris, latar belakang biru muda agak ke ungu muda, teks biru tua agak muda, ukuran teks diperbesar -->
<p style="margin-top: 10px; font-size: 18px; color: #0056b3; line-height: 1.8;">
	<a href="<?= site_url('admin/caraousel') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		mengubah carousel untuk tampilan frontend?</a>
	<a href="<?= site_url('admin/kategori') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		mengubah kategori konten yang tersedia?</a>
	<a href="<?= site_url('admin/konten') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		memperbarui konten untuk yang terbaru?</a>
	<br>
	<a href="<?= site_url('admin/user') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		mengelola admin & kontributor?</a>
	<a href="<?= site_url('admin/konfigurasi') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		mengubah konfigurasi profile produk?</a>
	<a href="<?= site_url('admin/galeri') ?>"
		style="text-decoration: none; color: #1e3d8b; background-color: #b3c9f7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Ingin
		mengelola galeri dalam frontend?</a>
</p>
<?php } ?>

<?php if($this->session->userdata('level') == 'User') { ?>
<!-- Tambahkan jarak antara tulisan -->
<p style="margin-top: 20px; font-weight: bold; font-size: 20px; color: #6c757d;">
	Selamat datang, pengguna setia kami! Apa yang ingin Anda lakukan hari ini?
</p>

<!-- Tambahkan daftar tautan -->
<!-- Daftar tautan dengan 3 kalimat per baris, latar belakang hijau muda agak pastel, teks hijau tua, ukuran teks diperbesar -->
<p style="margin-top: 10px; font-size: 18px; color: #2d6a4f; line-height: 1.8;">
	<a href="<?= site_url('user/profil') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Perbarui
		profil dan informasi Anda.</a>
	<a href="<?= site_url('user/konten') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Telusuri
		konten terbaru yang kami sediakan.</a>
	<a href="<?= site_url('user/riwayat') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Lihat
		riwayat aktivitas Anda di website ini.</a>
	<br>
	<a href="<?= site_url('user/bantuan') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Butuh
		bantuan? Klik di sini untuk panduan.</a>
	<a href="<?= site_url('user/langganan') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Lihat
		atau ubah paket langganan Anda.</a>
	<a href="<?= site_url('user/galeri') ?>"
		style="text-decoration: none; color: #1b4332; background-color: #b7e4c7; border-radius: 30px; padding: 12px 20px; display: inline-block; margin-bottom: 10px; width: 30%;">Nikmati
		galeri foto dan video favorit Anda.</a>
</p>
<?php } ?>
