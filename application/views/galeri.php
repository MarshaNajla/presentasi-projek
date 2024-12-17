<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title></title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<link href="<?= base_url('assets/front/');?>assets/img/favicon.png" rel="icon">
	<link href="<?= base_url('assets/front/');?>assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	<link href="https://fonts.googleapis.com" rel="preconnect">
	<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
		rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/animate.css/animate.min.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link href="<?= base_url('assets/front/');?>assets/css/main.css" rel="stylesheet">

	<style>
		.justify-text {
			text-align: justify;
			/* Mengatur teks agar terjustifikasi */
		}

		.portfolio-item img {
			width: 100%;
			/* Atur lebar gambar menjadi 100% dari kontainer */
			height: auto;
			/* Tinggi otomatis untuk menjaga rasio aspek */
			max-height: 200px;
			/* Atur tinggi maksimum sesuai kebutuhan */
			object-fit: cover;
			/* Memastikan gambar terpotong dengan baik jika tidak sesuai rasio */
		}

		.footer {
			padding: 20px 0;
		}

		.footer .container {
			display: flex;
			align-items: center;
			justify-content: space-between;
			gap: 20px;
			flex-wrap: wrap;
			/* Untuk membuat tampilan responsif */
		}

		.footer .footer-text {
			flex: 1;
			max-width: 50%;
			font-size: 18px;
			/* Ukuran font teks diperbesar */
			line-height: 1.6;
			/* Memberikan jarak antar baris */
		}

		.footer .footer-text h3 {
			font-size: 24px;
			/* Ukuran font untuk judul */
			margin-bottom: 10px;
		}

		.footer .footer-map {
			flex: 1;
			max-width: 500px;
			/* Lebar peta lebih besar */
			height: 300px;
			/* Tinggi peta lebih besar */
		}

		.copyright {
			margin-top: 20px;
			color: #fff;
			font-size: 16px;
			/* Ukuran font copyright */
			text-align: center;
		}

		.footer-text {
			text-align: center;
		}

		.social-links {
			margin-top: 20px;
			/* Jarak antara teks dan ikon */
			display: flex;
			/* Menggunakan flexbox untuk menata ikon secara horizontal */
			justify-content: center;
			/* Membuat ikon berada di tengah secara horizontal */
		}

		.social-links a {
			font-size: 30px;
			/* Ukuran ikon */
			margin: 0 10px;
			/* Jarak antar ikon */
			color: #000;
			/* Warna ikon */
			text-decoration: none;
		}

		.social-links a:hover {
			color: #f39c12;
			/* Warna ikon saat hover */
		}

		.portfolio-container .portfolio-item {
			margin-bottom: 20px;
			/* Memberikan jarak vertikal antar galeri */
		}

		.portfolio-container .col-lg-4 {
			padding: 10px;
			/* Memberikan jarak horizontal antar galeri */
		}

	</style>
</head>
<body class="blog-page">
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

			<a href="index.html" class="logo d-flex align-items-center">
				<h1 class="sitename"><?= $konfig->judul_website; ?></h1>
			</a>

			<nav id="navmenu" class="navmenu">
				<ul>
					<li><a href="<?= base_url() ?>">Home</a></li>
					<li><a href="<?= base_url('home/galeri')?>">Portofolio</a></li>
					<li class="dropdown">
						<a href="#" class="dropbtn">Kategori</a>
						<ul class="dropdown-content">
							<?php foreach($kategori as $kate){ ?>
							<li><a
									href="<?= base_url('home/kategori/'.$kate['id_kategori']) ?>"><?= $kate['nama_kategori'] ?></a>
							</li>
							<?php } ?>
						</ul>
					</li>

					<li><a href="<?= base_url('auth')?>">Login</a></li>
				</ul>
				<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
			</nav>
		</div>
	</header>
	<main class="main">
		<!-- Page Title -->
		<div class="page-title dark-background">
			<div class="container position-relative">
				<h1>Portofolio</h1>
				<nav class="breadcrumbs">
					<ol>
						<li><a href="<?= base_url(); ?>">Home</a></li>
						<li class="current">Portofolio</li>
					</ol>
				</nav>
			</div>
		</div><!-- End Page Title -->
		<section class="portfolio">
			<div class="container">
				<div class="text-center pb-2">
					<h1 class="mb-4">PHOTO</h1>
				</div>

				<div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out"
					data-aos-duration="500">
					<?php $no=1; foreach ($galeri as $aa) { ?>
					<div class="col-lg-4 col-md-6 filter-app">
						<div class="portfolio-item">
							<img src="<?= base_url('assets/upload/galeri/'.$aa['foto'])?>" class="img-fluid" alt="">
							<div class="portfolio-info">
								<h3>
									<a href="<?= base_url('assets/upload/galeri/'.$aa['foto'])?>"
										data-gall="portfolioGallery" class="venobox" title="App 1"></a>
								</h3>
								<a href="<?= base_url('assets/upload/galeri/'.$aa['foto'])?>"
									data-gall="portfolioGallery" class="venobox" title="App 1">
									<i class="icofont-plus"></i>
								</a>
							</div>
						</div>
					</div>
					<?php $no++; } ?>
				</div>
			</div>
		</section>
	</main>
	<footer id="footer" class="footer dark-background">
		<div class="container d-flex align-items-center justify-content-between">
			<!-- Kolom Teks (Kiri) -->
			<div class="footer-text">
				<h3 class="sitename"><?= $konfig->judul_website; ?></h3>
				<p><?= $konfig->profil_website; ?></p>
				<div class="social-links">
					<a href="<?= $konfig->instagram; ?>"><i class="bi bi-instagram"></i></a>
					<a href="<?= $konfig->tiktok; ?>"><i class="bi bi-tiktok"></i></a>
				</div>
			</div>


			<!-- Kolom Peta (Kanan) -->
			<div class="footer-map" style="width: 100%; max-width: 500px; height: 300px;">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1716451.3886850865!2d108.46355438232423!3d-7.579647145954004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a150031c6a8cd%3A0xabb05b11c9b7a441!2sKantor%20Bnb%20Shop%20Indonesia!5e1!3m2!1sen!2sid!4v1733741009019!5m2!1sen!2sid"
					width="100%" height="100%" style="border: 0;" allowfullscreen="" loading="lazy"
					referrerpolicy="no-referrer-when-downgrade">
				</iframe>
			</div>
		</div>
		<div class="copyright text-center mt-4">
			<p>&copy; <a class="text-white border-bottom" href="#"><?= $konfig->judul_website; ?></a>. All Rights
				Reserved.</p>
		</div>
	</footer>
	<!-- Scroll Top -->
	<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>
	<!-- Preloader -->
	<div id="preloader"></div>
	<!-- Vendor JS Files -->
	<script src="<?= base_url('assets/front/');?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/php-email-form/validate.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/aos/aos.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="<?= base_url('assets/front/');?>assets/vendor/swiper/swiper-bundle.min.js"></script>
	<!-- Main JS File -->
	<script src="<?= base_url('assets/front/');?>assets/js/main.js"></script>
</body>
</html>