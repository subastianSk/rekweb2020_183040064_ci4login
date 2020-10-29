<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container mt-4">
  <h2><u>Daftar Orang</u></h2>
  <div class="row">
    <div class="col-6 offset-6">
      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" placeholder="Masukkan keyword pencarian.." class="form-control" name="keyword">
          <div class="input-group-append">
            <button type="submit" name="submit" id="cari" class="btn btn-outline-secondary">Cari</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <div class="row">
    <div class="col">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nama</th>
            <th scope="col">Alamat</th>
            <th scope="col">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1 + (5 * ($currentPage - 1)); ?>
          <?php foreach ($orang as $o) : ?>
            <tr>
              <th><?= $i++ ?></th>
              <td><?= $o['nama'] ?></td>
              <td><?= $o['alamat'] ?></td>
              <td><a href="" class="btn btn-success">Detail</a></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <?= $pager->links() ?>
    </div>
  </div>
</div>
<?= $this->endSection() ?>