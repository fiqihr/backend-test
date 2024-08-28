<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    // membuat base response api
    public function sendResponse($result, $message,)
    {
        $response = [
            'status' => true,
            'message' => $message,
            'result'    => $result,
        ];
        return response()->json($response, 200);
    }
    
    // untuk send error
    public function sendError($error, $errorMessages = [], $code = 404)
    {
        $response = [
            'status' => false,
            'message' => $error,
        ];
        if(!empty($errorMessages)){
            $response['data'] = $errorMessages;
        }
        return response()->json($response, $code);
    }
}