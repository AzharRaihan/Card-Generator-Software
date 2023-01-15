@extends('auth.layouts')

@section('content')
    <div class="container">
        <div class="card"></div>

        <div class="card">
            <h1 class="title">Login</h1>
            <div class="alert_margin">
                @if(Session::has('message'))
                   <div class="alert alert-{{ Session::get('type') ?? 'danger' }} p-3">
                       <p>{{ Session::get('message') }}</p>
                   </div>
                @endif
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>
            <br>
            <form action="{{ route('user-login') }}" method="POST">
                @csrf
                <div class="input-container div_2">
                    <input name="login_info" type="text" value="" id="login_info" />
                    <label for="login_info">@lang('index.email')</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container div_2">
                    <input id="password" type="password" name="password" value=""/>
                    <label for="password">@lang('index.password')</label>
                    <div class="bar"></div>
                </div>
                <div class="button-container div_2">
                    <button type="submit" class="submit_login" ><span>@lang('index.login')</span></button>
                </div>
                <div class="footer div_2"><a href="{{ route('reset-password-step-one') }}">Forgot Password?</a></div>
                <div class="footer div_2"><a href="{{ route('user-registration') }}">Register</a></div>
            </form>
        </div>
    </div>
@endsection
