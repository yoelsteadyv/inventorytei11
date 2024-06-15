<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satuan extends Model
{
    use HasFactory;

    protected $table = 'satuans';

    protected $fillable = ['satuan_brg', 'keterangan'];

    public function barangs()
    {
        return $this->hasMany(Barang::class, 'satuan_id');
    }
}
