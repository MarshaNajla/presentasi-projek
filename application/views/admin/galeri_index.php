<div id="ngilang">
	<?= $this->session->flashdata('alert') ?>
</div>
<div class="col-lg-12 col-md-12">
	<div class="mb-3">
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalCenter">
			Tambah Galeri
		</button>
		<!-- Modal -->
		<div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<form action="<?= base_url('admin/galeri/simpan')?>" method="post" enctype="multipart/form-data">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="modalCenterTitle">Tambah Foto</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col mb-6">
									<label class="form-label">Judul</label>
									<input type="text" class="form-control" placeholder="Judul" name="judul" required />
								</div>
							</div>
							<div class="row">
								<div class="col mb-6">
									<label class="form-label">Kategori</label>
									<select name="id_kategori" class="form-control">
										<?php foreach($kategori as $aa) {?>
										<!-- jika pake result_array jadi pake $kategori -->
										<option value="<?= $aa['id_kategori'] ?>"><?= $aa['nama_kategori'] ?></option>
										<?php }; ?>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col mb-6">
									<label class="form-label">Foto</label>
									<input type="file" name="foto" class="form-control" accept="image/png, image/jpeg">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Simpan</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<?php $no=1; foreach ($galeri as $aa) {?>
	<div class="col-lg-4">
		<article>
			<div class="post-img">
				<img src="<?=  base_url('assets/upload/galeri/'.$aa['foto'])?>" alt="" class="img-fluid">
				<div class="card-body">
					<h5 class="card-title"> <?= $aa['judul'] ?></h5>
					<a href="<?= site_url('admin/galeri/delete_data/'.$aa['foto']) ?>"
						class="btn btn-sm btn-outline-primary"
						onClick="return confirm('Apakah anda yakin menghapus data ini?? ')">
						<i class="tf-icons bx bx-trash"></i>
					</a>
					<button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal"
						data-bs-target="#galeri<?= $no; ?>">
						<i class="tf-icons bx bx-edit"></i>
					</button>
					<div class="modal fade" id="galeri<?= $no; ?>" tabindex="-1" aria-hidden="true">
						<div class="modal-dialog modal-md" role="document">
							<form action="<?= base_url('admin/galeri/update')?>" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="nama_foto" value="<?= $aa['foto'] ?>">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="modalCenterTitle"><?= $aa['judul'] ?></h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col mb-6">
												<label class="form-label">Judul</label>
												<input type="text" class="form-control" value="<?= $aa['judul'] ?>"
													name="judul" />
											</div>
										</div>
										<div class="row">
											<div class="col mb-6">
												<label class="form-label">Kategori</label>
												<select name="id_kategori" class="form-control">
													<?php foreach($kategori as $uu) {?>
													<option
														<?php if($uu['id_kategori']==$aa['id_kategori']) { echo "selected"; }?>
														value="<?= $uu['id_kategori'] ?>">
														<?= $uu['nama_kategori'] ?></option>
													<?php }; ?>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col mb-6">
												<label class="form-label">Foto</label>
												<input type="file" name="foto" class="form-control"
													accept="image/png, image/jpeg">
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">Simpan</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

		</article>
	</div>
	<?php $no++; } ?>
</div>