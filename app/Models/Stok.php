<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stok extends Model
{
    use HasFactory;

    protected $table = 'stoks';

    protected $fillable = ['barang_id', 'stok', 'brg_masuk', 'brg_keluar'];

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }
}
