<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo;

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    /**
     * Login form
     * @return \Illuminate\View\View
     */
    public function showLoginForm()
    {
        return view('auth.login');
    }

    /**
     * Handle login request.
     * @param \Illuminate\Http\Request $request
     * @throws \Illuminate\Validation\ValidationException
     */

    public function login(Request $request)
    {
        $this->validate($request,['login_info'=>'required','password'=>'required']);

        if(is_numeric($request->get('login_info'))){
            $credentials =  ['mobile'=>$request->get('login_info'),'password'=>$request->get('password')];
        } elseif (filter_var($request->get('login_info'), FILTER_VALIDATE_EMAIL)) {
            $credentials =  ['email' => $request->get('login_info'), 'password'=>$request->get('password')];
        } else {
            $credentials =  ['username' => $request->get('login_info'), 'password'=>$request->get('password')];
        }
        

        if (Auth::guard()->attempt($credentials)) {
            if(Auth::user()->role === "admin"){
                return redirect()->intended(route('admin.dashboard'));
            } if(Auth::user()->role === "user"){
                return redirect()->intended(route('user.dashboard'));
            }
        } else {
            return redirect()->back()->withInput($request->only('login_info', 'remember'))->with('message','Login Credintials Not Matched');
        }
    }
}
