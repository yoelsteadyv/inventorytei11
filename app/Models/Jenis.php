<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jenis extends Model
{
    use HasFactory;

    protected $table = 'jenis';

    protected $fillable = ['jenis_brg', 'keterangan'];

    public function barangs()
    {
        return $this->hasMany(Barang::class, 'jenis_id');
    }
}
