@extends('auth.layouts')

@section('content')
    <div class="container">
        <div class="card"></div>
        <div class="card">
            <h1 class="title">@lang('index.step_1')</h1>
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
            <form action="{{ route('check-email') }}" method="POST">
                @csrf
                <div class="input-container">
                    <input name="email" type="text" value="{{ old('email') }}" id="email" required="required"/>
                    <label for="email">@lang('index.email')</label>
                    <div class="bar"></div>
                </div>
                <div class="button-container">
                    <button type="submit"><span>@lang('index.submit')</span></button>
                </div>
                <div class="footer"><a href="{{ route('home') }}">@lang('index.back_to_login')</a></div>
            </form>
        </div>
    </div>
@endsection
