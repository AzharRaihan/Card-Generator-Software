@extends('auth.layouts')
@section('content')
    <div class="container">
        <div class="card"></div>
        <div class="card">
            <div class="alert_margin">
                @if(Session::has('message'))
                   <div class="alert alert-danger p-3">
                       <p>{{ Session::get('message') }}</p>
                   </div>
                @endif

            </div>
            <h1 class="title">@lang('index.step_3')</h1>
            <div class="alert_margin">
                @if(Session::has('message'))
                   <div class="alert alert-danger p-3">
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
            <form action="{{ route('reset-password') }}" method="POST">
                @csrf
                <input type="hidden" name="email" value="{{ $email }}">
                <div class="input-container">
                    <input tabindex="2" type="password" name="new_password"  value="">
                    <label for="new_password">@lang('index.new_password')</label>
                    <div class="bar"></div>
                </div>

                <div class="input-container">
                    <input tabindex="2" type="password" name="confirm_password"  value="">
                    <label for="confirm_password">@lang('index.confirm_password')</label>
                    <div class="bar"></div>
                </div>
                <div class="button-container">
                    <button type="submit" name="submit" value="submit"><span>@lang('index.submit')</span></button>
                </div>
                <div class="footer"><a href="{{ route('home') }}">@lang('index.back_to_login')</a></div>
            </form>
        </div>
    </div>
@endsection
