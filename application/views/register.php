<!DOCTYPE html>
<html lang="en" class="light-style customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">

<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
	<title>Register </title>
	<link rel="icon" type="image/x-icon" href="<?= site_url('assets/sneat')?>/assets/img/favicon/favicon.ico" />
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link
		href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
		rel="stylesheet" />
	<link rel="stylesheet" href="<?= site_url('assets/sneat')?>/assets/vendor/fonts/boxicons.css" />
	<link rel="stylesheet" href="<?= site_url('assets/sneat')?>/assets/vendor/css/core.css"
		class="template-customizer-core-css" />
	<link rel="stylesheet" href="<?= site_url('assets/sneat')?>/assets/vendor/css/theme-default.css"
		class="template-customizer-theme-css" />
	<link rel="stylesheet" href="<?= site_url('assets/sneat')?>/assets/css/demo.css" />
	<link rel="stylesheet"
		href="<?= site_url('assets/sneat')?>/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
	<link rel="stylesheet" href="<?= site_url('assets/sneat')?>/assets/vendor/css/pages/page-auth.css" />
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/js/helpers.js"></script>
	<script src="<?= site_url('assets/sneat')?>/assets/js/config.js"></script>
</head>

<body>
	<div class="container-xxl">
		<div class="authentication-wrapper authentication-basic container-p-y">
			<div class="authentication-inner">
				<div class="card">
					<div class="card-body">
						<div class="app-brand justify-content-center">
							<a href="index.html" class="app-brand-link gap-2">
								<span class="app-brand-logo demo">
									<svg width="25" viewBox="0 0 25 42" xmlns="http://www.w3.org/2000/svg">
										<!-- SVG Logo -->
									</svg>
								</span>

							</a>
						</div>
						<h4 class="mb-2">Registrasi disini 🚀</h4>

						<form id="formAuthentication" class="mb-3"
							action="<?php echo site_url('auth/register_process'); ?>" method="POST">
							<div class="mb-3">
								<label for="username" class="form-label">Username</label>
								<input type="text" class="form-control" id="username" name="username"
									placeholder="Enter your username" required autofocus />
							</div>
							<div class="mb-3 form-password-toggle">
								<label class="form-label" for="password">Password</label>
								<div class="input-group input-group-merge">
									<input type="password" id="password" class="form-control" name="password"
										placeholder="Enter your password" required aria-describedby="password" />
									<span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
								</div>
							</div>
							<div class="mb-3">
								<label for="nama" class="form-label">Nama</label>
								<input type="text" class="form-control" id="nama" name="nama"
									placeholder="Enter your name" required />
							</div>

						
							<input type="hidden" name="level" value="kontributor" />

							<button class="btn btn-primary d-grid w-100">Sign up</button>
						</form>

						<p class="text-center">
							<span>Already have an account?</span>
							<a href="<?php echo site_url('auth/login'); ?>">
								<span>Sign in instead</span>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/libs/popper/popper.js"></script>
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/js/bootstrap.js"></script>
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="<?= site_url('assets/sneat')?>/assets/vendor/js/menu.js"></script>
</body>

</html>
