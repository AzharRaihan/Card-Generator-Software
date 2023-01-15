<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;

class SetLocale
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
//        $url = request()->segment(2);
//        if($url!="set-security-question" && $url!="save-security-question"){
//              if (Auth::user()->question == Null) {
//                    return redirect()->route('admin.set-security-question')->with('info_message','Set security question to continue');
//          }
//        }
        app()->setLocale(getUserLanguage());
        return $next($request);
    }
}
