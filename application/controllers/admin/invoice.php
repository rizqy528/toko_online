<?php

class Invoice extends CI_Controller{

  public function __construct(){

    parent::__construct();
    $this->load->library('pdf');

    if($this->session->userdata('role_id')  != '1'){
      $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
Anda belum Login!
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>');
redirect('auth/login');
    }
  }

    public function index()
    {
      $data['invoice']  = $this->model_invoice->tampil_data();
      $this->load->view('templates_admin/header');
      $this->load->view('templates_admin/sidebar');
      $this->load->view('admin/invoice',$data);
      $this->load->view('templates_admin/footer');
    }

    public function detail($id)
    {
      $data['invoice']  = $this->model_invoice->ambil_id_invoice($id);
      $data['pesanan']  = $this->model_invoice->ambil_id_pesanan($id);
      $this->load->view('templates_admin/header');
      $this->load->view('templates_admin/sidebar');
      $this->load->view('admin/detail_invoice',$data);
      $this->load->view('templates_admin/footer');
    }

    // hasil laporan pdf
function LaporanPdf(){
$pdf = new FPDF('l','mm','A4');
      // membuat halaman baru
      $pdf->AddPage();
      // setting jenis font yang akan digunakan
      $pdf->SetFont('Arial','B',16);
      // mencetak string
      $pdf->Cell(290,7,'Botak Online Shop',0,1,'C');
      $pdf->SetFont('Arial','B',14);
      $pdf->Cell(290,7,'LAPORAN DATA PESANAN BARANG',0,1,'C');
      // Memberikan space kebawah agar tidak terlalu rapat
      $pdf->Cell(10,7,'',0,1);
      $pdf->SetFont('Arial','B',12);
      $pdf->Cell(23,6,'Id Invoice',1,0);
      $pdf->Cell(45,6,'Nama Pemesan',1,0);
      $pdf->Cell(75,6,'Alamat Pengirim',1,0);
      $pdf->Cell(42,6,'Tanggal Pemesanan',1,0);
      $pdf->Cell(42,6,'Batas Pembayaran',1,1);
      // $pdf->Cell(25,6,'Aksi',1,1);
      $pdf->SetFont('Arial','',12);
      $db = $this->model_invoice->tampil_data();
      foreach ($db as $row){
          $pdf->Cell(23,6,$row->id,1,0);
          $pdf->Cell(45,6,$row->nama,1,0);
          $pdf->Cell(75,6,$row->alamat,1,0);
          $pdf->Cell(42,6,$row->tgl_pesan,1,0);
          $pdf->Cell(42,6,$row->batas_bayar,1,1);
      }
      $pdf->Output();
  }

  // hasil laporan pdf
function LaporanPesanan($id){
$pdf = new FPDF('l','mm','A4');
    // membuat halaman baru
    $pdf->AddPage();
    // setting jenis font yang akan digunakan
    $pdf->SetFont('Arial','B',16);
    // mencetak string
    $pdf->Cell(290,7,'Botak Online Shop',0,1,'C');
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(290,7,'DETAIL PESANAN',0,1,'C');
    // Memberikan space kebawah agar tidak terlalu rapat
    $pdf->Cell(5,5,'',0,1);
    $pdf->SetFont('Arial','B',12);
    $pdf->Cell(30,6,'ID BARANG',1,0);
    $pdf->Cell(39,6,'NAMA PRODUK',1,0);
    $pdf->Cell(45,6,'JUMLAH PESANAN',1,0);
    $pdf->Cell(40,6,'HARGA SATUAN',1,0);
    $pdf->Cell(30,6,'	SUB-TOTAL',1,1);
    $pdf->SetFont('Arial','',12);
    $db = $this->model_invoice->ambil_id_pesanan($id);
    foreach ($db as $row){
        $pdf->Cell(30,6,$row->id,1,0);
        $pdf->Cell(39,6,$row->nama_brg,1,0);
        $pdf->Cell(45,6,$row->id_invoice,1,0);
        $pdf->Cell(40,6,$row->harga,1,0);
        $pdf->Cell(30,6,$row->jumlah,1,1);
        // $pdf->Cell(45,6,$row->id_brg,1,0);



        // $pdf->Cell(25,6,$row->pilihan,1,0);
    }
    $pdf->Output();
  }
} ?>
