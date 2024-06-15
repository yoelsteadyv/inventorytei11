<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangKeluar extends Model
{
    use HasFactory;

    protected $table = 'barang_keluars';

    protected $fillable = ['kd_brg_keluar', 'tgl_keluar', 'barang_id', 'customer_id', 'brg_keluar'];

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }

    public function customer()
    {
        return $this->belongsTo(MainCustomer::class, 'customer_id');
    }
}
