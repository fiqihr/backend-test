<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Http\JsonResponse;

class RegisterController extends BaseController
{
    // melakukan validasi register
    public function register(Request $request): JsonResponse
    {
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // jika validasi gagal
        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $input = $request->all();
        $user = User::create($input);
        $token = $user->createToken('MyApp')->plainTextToken;

        $userDetails = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'registered_at' => $user->created_at->toDateTimeString(), // Format as needed
        ];

        $result = [
            'status' => true,
            'message' => 'User register successfully.',
            'token' => $token,
            'user' => $userDetails,
        ];
        return response()->json($result, 200);
    }

    public function login(Request $request): JsonResponse
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {

        $user = Auth::user();
        $token = $user->createToken('MyApp')->plainTextToken;

        // Format user details
        $userDetails = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'registered_at' => $user->created_at->toDateTimeString(), // Format as needed
        ];

        $result = [
            'status' => true,
            'message' => 'Success login account',
            'token' => $token,
            'user' => $userDetails,
        ];

        return response()->json($result, 200);
        } else {
            return $this->sendError('Unauthorised.', ['error' => 'Unauthorised'], 401);
        }
    }
}