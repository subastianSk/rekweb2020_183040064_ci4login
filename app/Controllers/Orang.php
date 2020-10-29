<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
  protected $orangModel;

  public function __construct()
  {
    $this->orangModel = new OrangModel();
  }

  public function index()
  {
    $keyword = $this->request->getVar('keyword');

    $currentPage = ($this->request->getGet('page')) ? $this->request->getGet('page') : 1;
    $orang = ($keyword) ? $this->orangModel->search($keyword) : $this->orangModel;

    $data = [
      'title' => 'Daftar Orang',
      'orang' => $orang->paginate(5),
      'pager' => $this->orangModel->pager,
      'currentPage' => $currentPage
    ];
    return view('orang/index', $data);
  }
}
