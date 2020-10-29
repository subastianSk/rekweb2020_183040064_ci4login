<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container mt-4">
  <div class="row">
    <div class="col">
      <h2>About Me.</h2>
      <p>Hi, i am <?= $nama ?>, and i'm <?= $umur ?> yo.</p>
    </div>
  </div>
</div>
<?= $this->endSection() ?>