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
            <form action="{{ route('user-signup') }}" method="POST">
                @csrf
                <div class="input-container div_2">
                    <input name="first_name" type="text" value="" id="first_name" />
                    <label for="first_name">@lang('index.first_name')</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container div_2">
                    <input name="last_name" type="text" value="" id="last_name" />
                    <label for="last_name">@lang('index.last_name')</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container div_2">
                    <input name="email" type="text" value="" id="email" />
                    <label for="email">@lang('index.email')</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container div_2">
                    <input name="mobile" type="text" value="" id="mobile" />
                    <label for="mobile">@lang('index.mobile')</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container div_2">
                    <input id="password" type="password" name="password" value=""/>
                    <label for="password">@lang('index.password')</label>
                    <div class="bar"></div>
                </div>
                <div class="button-container div_2">
                    <button type="submit" class="submit_login" ><span>@lang('index.register')</span></button>
                </div>
                <div class="footer"><a href="{{ route('home') }}">@lang('index.back_to_login')</a></div>
            </form>
        </div>
    </div>
@endsection
