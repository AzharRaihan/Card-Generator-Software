<!DOCTYPE html>
@php
    $site = App\Models\SiteSetting::first();
@endphp
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{{ $site->title ?? "Title" }}</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <script src="{{ asset('assets/login/jquery/dist/jquery.min.js') }}"></script>
        <link rel="stylesheet" href="{{ asset('assets/login/font-awesome/css/font-awesome.min.css') }}">
        <!-- Ionicons -->
        <link rel="stylesheet" href="{{ asset('assets/login/Ionicons/css/ionicons.min.css') }}">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="{{ asset('assets/login/css/bootstrap.min.css') }}">
        <!-- Latest compiled and minified JavaScript -->
        <script src="{{ asset('assets/login/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('assets/login/js/login.js') }}"></script>
        <link rel="stylesheet" href="{{ asset('assets/login/css/login_new.css') }}">
        <link rel="shortcut icon" href="{{ asset(isset($site) && $site->favicon ? $site->favicon : 'assets/images/favicon.ico') }}" type="image/x-icon">
        <script src="{{ asset('assets/login/pin_login/dist/jquery.pinlogin.min.js') }}"></script>
        <link rel="stylesheet" href="{{ asset('assets/login/pin_login/src/jquery.pinlogin.css') }}">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="pen-title">
                    <img src="{{ asset('assets/images/ds_logo.png') }}" class="ds-logo" height="40" width="80">
                </div>
                @yield('content')
            </div>

        </div>
    </body>
</html>
