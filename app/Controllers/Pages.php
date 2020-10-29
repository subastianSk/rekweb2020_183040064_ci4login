<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'title' => "SubastianSK Home Page"
    ];
    return view('pages/home', $data);
  }
  public function about($nama = 'Dwi Yanto Subastian', $umur = 20)
  {
    $data = [
      'title' => "About Me",
      'nama' => $nama,
      'umur' => $umur
    ];
    return view('pages/about', $data);
  }
  public function contact()
  {
    $data = [
      'title' => "Contact Us",
      'alamat' => [
        [
          'tipe' => 'Rumah',
          'alamat' => 'Jl. Azalea IV no.5',
          'kota' => 'Purwakarta'
        ],
        [
          'tipe' => 'Universitas Pasundan',
          'alamat' => 'Jl. Dr Setiabudi No.193',
          'kota' => 'Bandung'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }
}
