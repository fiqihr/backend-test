<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Brand;

class Product extends Model
{
    protected $fillable = [
        'product_name',
        'brand_id',
        'product_price',
        'product_stock',
        'product_active',
    ];

    public function brands()
    {
        return $this->belongsTo(Brand::class);
    }
}