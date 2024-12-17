<!DOCTYPE html>
<html lang="id">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Daftar Saran</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		.btn-ungu-biru {
			background: linear-gradient(135deg, #9b59b6, #3498db);
			/* Ungu ke Biru */
			color: white;
			border: none;
		}

		.btn-ungu-biru:hover {
			background: linear-gradient(135deg, #8e44ad, #2980b9);
			/* Darker Hover */
		}

	</style>

</head>

<body>
	<div class="container mt-5">
		<h1>Daftar Saran</h1>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID Saran</th>
					<th>Nama</th>
					<th>Email</th>
					<th>Isi Saran</th>
					<th>Tanggal</th>
				</tr>
			</thead>
			<tbody>
				<?php if (!empty($saran)) { ?>
				<?php foreach ($saran as $row) { ?>
				<tr>
					<td><?= isset($row['id_saran']) ? htmlspecialchars($row['id_saran']) : '' ?></td>
					<td><?= isset($row['nama']) ? htmlspecialchars($row['nama']) : '' ?></td>
					<td><?= isset($row['email']) ? htmlspecialchars($row['email']) : '' ?></td>
					<td><?= isset($row['isi_saran']) ? htmlspecialchars($row['isi_saran']) : '' ?></td>
					<td><?= isset($row['tanggal']) ? htmlspecialchars($row['tanggal']) : '' ?></td>
					<td>
						<a href="<?= site_url('admin/saran/hapus/' . $row['id_saran']) ?>" class="btn btn-ungu-biru btn-sm"
							onclick="return confirm('Yakin ingin menghapus saran ini?')">Hapus</a>
					</td>
				</tr>
				<?php } ?>
				<?php } else { ?>
				<tr>
					<td colspan="6" class="text-center">Tidak ada saran yang tersedia</td>
				</tr>
				<?php } ?>
			</tbody>

		</table>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
