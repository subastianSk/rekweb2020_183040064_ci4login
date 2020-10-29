<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container mt-4">
  <div class="row">
    <div class="col">
      <h2>Detail Komik <?= $komik['judul'] ?></h2>
      <div class="card mb-3" style="max-width: 540px;">
        <div class="row no-gutters">
          <div class="col-md-4">
            <img src="/img/<?= $komik['sampul'] ?>" class="card-img" alt="<?= $komik['slug'] ?>">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title font-weight-bold"><?= $komik['judul'] ?></h5>
              <p class="card-text"><small class="text-muted">Penulis : <?= $komik['penulis'] ?></small></p>
              <p class="card-text"><small class="text-muted">Penerbit : <?= $komik['penerbit'] ?></small></p>
              <a href="/komik/edit/<?= $komik['slug'] ?>" class="btn btn-warning">Edit</a>
              <form action="/komik/<?= $komik['id'] ?>" method="post" class="d-inline">
                <?= csrf_field(); ?>
                <input type="hidden" name="_method" value="DELETE">
                <button type="submit" class="btn btn-danger" onclick="showConfirm('Apakah anda yakin?')">Delete</button>
              </form>
              <br><br>
              <a href="/komik">kembali ke daftar komik</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?= $this->endSection() ?>