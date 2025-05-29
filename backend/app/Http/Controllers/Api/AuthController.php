<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request): JsonResponse
    {
        try {
            $request->validate([
                'email' => 'required|email',
                'password' => 'required',
            ]);

            if(!Auth::attempt($request->only('email', 'password'))) {
                throw new \Exception('Invalid credentials');
            }

            $user = Auth::user();
            $user->tokens()->updateOrCreate(['provider' => 'qubook'], [
                'name' => 'access_token',
                'token' => hash('sha256', $token = str()->random(40)),
                'abilities' => ['*'],
            ]);

            return response()->json([
                'status' => true,
                'message' => 'Login successfully',
                'token' => $token,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e->getMessage(),
            ]);
        }
    }
}
