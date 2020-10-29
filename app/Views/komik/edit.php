<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container mt-4">
  <div class="row">
    <div class="col-8 offset-2">
      <h2>Edit Data Komik</h2>
      <form action="/komik/update/<?= $komik['id'] ?>" method="post" enctype="multipart/form-data">
        <?= csrf_field(); ?>
        <div class="form-group">
          <label for="judul">Judul Komik</label>
          <input type="text" class="form-control <?= $validation->hasError('judul') ? 'is-invalid' : '' ?>" id="judul" name="judul" value="<?= (old('judul')) ? old('judul') : $komik['judul'] ?>" autofocus>
          <div class="invalid-feedback">
            <?= $validation->getError('judul') ?>
          </div>
        </div>
        <input type="hidden" name="slug" value="<?= $komik['slug'] ?>">
        <div class="form-group">
          <label for="penulis">Penulis</label>
          <input type="text" class="form-control <?= $validation->hasError('penulis') ? 'is-invalid' : '' ?>" id="penulis" name="penulis" value="<?= (old('penulis')) ? old('penulis') : $komik['penulis'] ?>">
          <div class="invalid-feedback">
            <?= $validation->getError('penulis') ?>
          </div>
        </div>
        <div class="form-group">
          <label for="penerbit">Penerbit</label>
          <input type="text" class="form-control <?= $validation->hasError('penerbit') ? 'is-invalid' : '' ?>" id="penerbit" name="penerbit" value="<?= (old('penerbit')) ? old('penerbit') : $komik['penerbit'] ?>">
          <div class="invalid-feedback">
            <?= $validation->getError('penerbit') ?>
          </div>
        </div>
        <label for="sampul">Sampul</label>
        <div class="form-row">
          <div class="col-4">
            <img src="/img/<?= $komik['sampul'] ?>" class="img-thumbnail img-preview">
          </div>
          <div class="custom-file col-8 mb-3">
            <input type="file" class="custom-file-input <?= ($validation->hasError('sampul')) ? 'is-invalid' : '' ?>" id="sampul" name="sampul" onchange="previewImg()">
            <label class="custom-file-label" for="sampul"><?= $komik['sampul'] ?></label>
            <div class="invalid-feedback"><?= $validation->getError('sampul') ?></div>
          </div>
        </div>
        <button type="submit" class="btn btn-primary my-2">Submit</button>
      </form>
    </div>
  </div>
</div>
<?= $this->endSection() ?>