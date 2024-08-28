<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Product;
use Validator;
use App\Http\Resources\ProductResource;
use Illuminate\Http\JsonResponse;

class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    // get products
    public function index()
    {
        $products = Product::all();
        return $this->sendResponse(ProductResource::collection($products), 'Success get products');
    }

    // post product
    public function store(Request $request)
    {
        // validasi input dari request
        $request->validate([
            'product_name' => 'required|string|max:255',
            'brand_id' => 'required|exists:brands,id',
            'product_price' => 'required|integer|min:0',
            'product_stock' => 'required|integer|min:0',
            'product_active' => 'required|string|max:255',
        ]);

        // buat produk baru
        $product = new Product([
            'product_name' => $request->input('product_name'),
            'brand_id' => $request->input('brand_id'),
            'product_price' => $request->input('product_price'),
            'product_stock' => $request->input('product_stock'),
            'product_active' => $request->input('product_active'),
        ]);

    // simpan produk ke database
    $product->save();

    // berikan respon
    return response()->json(['message' => 'Product created successfully'], 201);
    }
}