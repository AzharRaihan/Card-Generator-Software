@extends('auth.layouts')
@section('content')
    <div class="container">
        <div class="card"></div>
        <div class="card">
            <h1 class="title">@lang('index.step_2')</h1>
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
            <form action="{{ route('check-question-answer') }}" method="POST">
            @csrf
            <input type="hidden" name="email" value="{{ $email }}">
            <div class="input-container">
{{--                <label for="answer">@lang('index.answer')</label>--}}
                <select class="form-control" name="question" id="question">
                    <option value="">Select your security question</option>
                     @foreach($questions as $question)
                       <option value="{{ $question }}" {{ old('question') === $question ? 'selected' : '' }}>{{ $question }}</option>
                    @endforeach
                </select>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input id="answer" type="text" name="answer" value="{{ old('answer') ?? '' }}" autocomplete="off"  required="required"/>
                <label for="answer">@lang('index.answer')</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button type="submit" ><span>@lang('index.submit')</span></button>
            </div>
            <div class="footer"><a href="{{ route('home') }}">@lang('index.back_to_login')</a></div>
            </form>
        </div>
    </div>
@endsection
