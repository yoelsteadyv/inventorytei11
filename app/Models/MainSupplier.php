<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MainSupplier extends Model
{
    use HasFactory;

    protected $table = 'main_suppliers';

    protected $fillable = ['kd_supplier', 'pt_supplier', 'alamat', 'telp', 'email', 'person'];

    public function barangMasuks()
    {
        return $this->hasMany(BarangMasuk::class, 'supplier_id');
    }
}
