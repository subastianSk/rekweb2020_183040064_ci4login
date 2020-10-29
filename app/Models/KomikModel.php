<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
  protected $table = 'komik';
  protected $useTimestamps = true;
  protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];

  public function getKomik($slug = false)
  {
    return $slug == false ? $this->findAll() : $this->where(['slug' => $slug])->first();
  }
}
