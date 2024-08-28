<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Brand;
use Validator;
use App\Http\Resources\BrandResource;
use Illuminate\Http\JsonResponse;

class BrandController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     // get brands
    public function index()
    {
        $brands = Brand::all();
        return $this->sendResponse(BrandResource::collection($brands), 'Success get brands');
    }

    public function store(Request $request)
    {
        
    // validasi input dari request
    $request->validate([
        'brand_name' => 'required|string|max:255',
        'brand_active' => 'required|string|max:255',
    ]);

    // buat brand baru
    $brand = new Brand([
        'brand_name' => $request->input('brand_name'),
        'brand_active' => $request->input('brand_active'),
    ]);

    // simpan brand ke database
    $brand->save();

    // berikan respon
    return response()->json(['message' => 'Brand created successfully'], 201);
    }
}