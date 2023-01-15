@extends('auth.layouts')

@section('content')
    <div class="container">
        <div class="card"></div>
        <div class="card">
            <h1 class="title">@lang('index.profile')</h1>
                <div class="footer"><a href="{{ route('user.switch-to-provider') }}">@lang('index.switch_provider')</a></div>
            </form>
        </div>
    </div>
@endsection
