<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\Controller;
use Illuminate\Support\Facades\Hash;


class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function username()
    {
        return 'username';
    }

    public function index()
    {
        // $password = Hash::make('password');
        // dd($password);
        return view('auth.login');
    }

    public function login(Request $request)
    {

        $validated  = $request->validate([
            'username' => 'required',
            'password' => 'required',
            'remember' => 'nullable'
        ]);
        return auth()->attempt($validated) ? redirect(url('/admin')) : back()->withErrors(['username' => 'Invalid Credentials']);
    }
}
