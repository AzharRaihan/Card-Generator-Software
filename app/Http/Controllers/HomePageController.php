<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class HomePageController extends Controller
{
    /**
     * User registration form
     */
    public function registrationForm() {
        return view('auth.register');
    }

    /**
     * User registration submit
     */
    public function userSignUp(Request $request) {
        $this->validate($request,[
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email|string',
            'mobile' => 'required',
            'password' => 'required',
        ],[
            'first_name.required' => 'The First Name field is required.',
            'last_name.required' => 'The Last Name field is required.',
            'email.required' => 'The Email field is required.',
            'email.email' => 'The Email should be a valid email address.',
            'mobile.required' => 'The Mobile field is required',
            'password.required' => 'The Password field is required.',
        ]);
        $user = new User();
        $user->role = "user";
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->username = $request->username ?? Str::random(5);
        $user->password = Hash::make($request->password);
        $user->save();
        $user_id = $user->id;
        Auth::loginUsingId($user_id);

        if (Auth::check()) {
            return redirect()->route('user.select-profile-form');
            //return redirect()->route('user.dashboard');
        } else {
            return redirect()->route('home');
        }
    }


}
