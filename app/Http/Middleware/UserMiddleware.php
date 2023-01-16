<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class UserMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // $user_selected_profile = userSelectedProfile();
        if(Auth::check() && Auth::user()->role === "user"){
            return $next($request);
        } else{
            return redirect()->route('home');
        }
    }
}
