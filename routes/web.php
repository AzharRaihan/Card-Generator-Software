<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;



Route::group(['middleware' => ['XSS']], function () {
    Route::group(['namespace' => 'Auth'],function() {
        Route::any('/','LoginController@showLoginForm')->name('home');
        Route::any('login','LoginController@login')->name('login');
        Route::post('user-login','LoginController@login')->name('user-login');
        Route::any('login','LoginController@login')->name('login');
        Route::any('reset-password-step-one','RecoverPasswordController@stepOne')
            ->name('reset-password-step-one');
        Route::any('check-email','RecoverPasswordController@checkEmail')
            ->name('check-email');
        Route::any('reset-password-step-two','RecoverPasswordController@stepTwo')
            ->name('reset-password-step-two');
        Route::any('check-question-answer','RecoverPasswordController@checkQuestionAnswer')
            ->name('check-question-answer');
        Route::any('reset-password-step-three','RecoverPasswordController@stepThree')
            ->name('reset-password-step-three');
        Route::any('reset-password','RecoverPasswordController@resetPassword')
            ->name('reset-password');
    });

    Route::get('set-local/{language}',function ($language){
        $user = Auth::user();
        $user->language = $language;
        $user->save();
        $role = Auth::user()->role;
        if($role === "admin"){
            return redirect()->route('admin.dashboard')->with('message','Language Change Successfully');
        } elseif ($role === "user"){
            return redirect()->route('home')->with('message','Language Change Successfully');
        } else{
            return redirect()->route('home');
        }
    })->name('set-locale');

    Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin','set_local']],function(){
        Route::get('dashboard','DashboardController@index')->name('dashboard');


        Route::resource('card-design', 'CardDesignController');
        Route::post('card-design-update/{id}', 'CardDesignController@updateCard');
        Route::resource('card-background', 'CardBackgroundController');
        Route::get('card-background-find/{id}', 'CardBackgroundController@findBackgroudImage')->name('card-background-find');

        Route::resource('card-excel-upload', 'CardExcelUploadController');
        Route::get('card-demo-download', 'CardExcelUploadController@downloadFile')->name('card-demo-download');
        Route::get('card-generate-view', 'CardExcelUploadController@cardGenerateView')->name('card-generate-view');
        Route::post('card-generate', 'CardExcelUploadController@cardGenerate')->name('card-generate');
        Route::get('card-generate-pdf/{id}', 'CardExcelUploadController@cardGeneratePDF')->name('card-generate-pdf');




        // Admin Profile
        Route::get('change-password','ProfileController@changePasswordForm')
            ->name('change-password');
        Route::put('change-password','ProfileController@changePassword')
            ->name('change-password');
        Route::get('edit-profile','ProfileController@profileEditForm')
            ->name('edit-profile');
        Route::put('update-profile','ProfileController@updateProfile')
            ->name('update-profile');
        Route::get('set-security-question','ProfileController@securityQuestionForm')
            ->name('set-security-question');
        Route::put('save-security-question','ProfileController@saveSecurityQuestion')
            ->name('save-security-question');
        Route::get('site-settings','SiteSettingsController@siteSettings')
            ->name('site-settings');
        Route::put('site-settings-update','SiteSettingsController@updateSiteSettings')
            ->name('site-settings-update');    
    });

    Route::get('user-registration','HomePageController@registrationForm')
        ->name('user-registration');
    Route::post('user-signup','HomePageController@userSignUp')
        ->name('user-signup');

    Route::group(['as'=>'user.','prefix'=>'user','middleware'=>['auth','user','set_local']],function(){
        Route::get('dashboard','DashboardController@index')->name('dashboard');
        // User Profile
        Route::get('change-password','UserActivityController@changePasswordForm')
            ->name('change-password');
        Route::put('change-password','UserActivityController@changePassword')
            ->name('change-password');
        Route::get('edit-profile','UserActivityController@profileEditForm')
            ->name('edit-profile');
        Route::put('update-profile','UserActivityController@updateProfile')
            ->name('update-profile');
        Route::get('set-security-question','UserActivityController@securityQuestionForm')
            ->name('set-security-question');
        Route::put('save-security-question','UserActivityController@saveSecurityQuestion')
            ->name('save-security-question');

        
    });


    Route::get('logout',function (){
        Auth::logout();
        session()->flush();
        session()->regenerate();
        return redirect()->route('home');
    })->name('logout');


    Route::get('set-collapse', function() {
        session()->put('is_collapse',request()->get('status'));
    });
});




