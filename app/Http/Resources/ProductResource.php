<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // mengatur yang akan tampil di API
        return [
            'id' => $this->id,
            'product_name' => $this->product_name,
            'brand_id' => $this->brand_id,
            'brand_name' => $this->brand->brand_name,
            'product_price' => $this->product_price,
            'product_stock' => $this->product_stock,
            'product_active' => $this->product_active,
            'created_at' => $this->created_at ? $this->created_at->format('Y-m-d H:i:s') : null,
            'created_at' => $this->updated_at ? $this->updated_at->format('Y-m-d H:i:s') : null,
        ];
    }
}