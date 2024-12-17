<div id="ngilang">
	<?= $this->session->flashdata('alert') ?>
</div>
<div class="card">
	<form action="<?= base_url('admin/caraousel/simpan')?>" method="post" enctype='multipart/form-data'>
		<h5 class="card-header">File input</h5>
		<div class="card-body">
			<div class="row">
				<div class="col mb-6">
					<label class="form-label">Judul</label>
					<input type="text" class="form-control" placeholder="judul foto" name="judul" required />
				</div>
			</div>
			<div class="mb-3">
				<label for="formFile" class="form-label">Pilih foto dengan ukuran (1:3)</label>
				<input class="form-control" type="file" name="foto">
			</div>
		</div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Simpan</button>
		</div>
	</form>
</div>
<?php foreach ($caraousel as $aa){?>
<div class="col-md-12 mb-3 mt-3">
	<div class="card h-100">
		<img class="card-img-top" src="<?=  base_url('assets/upload/caraousel/'.$aa['foto'])?>">
		<div class="card-body">
			<h5 class="card-title"><?= $aa['judul'] ?></h5>
			<a href="<?= site_url('admin/caraousel/hapus/'.$aa['foto']) ?>" class="btn btn-sm btn-outline-primary"
				onClick="return confirm('Apakah anda yakin menghapus data ini hmmm 😸')">
				<i class="fa fa-trash"></i>
			</a>
		</div>
	</div>
</div>
<?php } ?>
