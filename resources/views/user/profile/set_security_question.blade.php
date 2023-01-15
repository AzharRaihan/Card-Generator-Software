@extends('admin.layouts.app')
@section('title','Change Password')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
	{{ alertMessage() }}
    @if(Session::has('info_message'))
        <p class="alert alert-info">{{ Session::get('info_message') }}</p>
    @endif
    <section class="content-header">
        <h3 class="top-left-header">
            @lang('index.set_security_question')
        </h3>
    </section>

    <div class="box-wrapper">
        <!-- general form elements -->
        <div class="table-box">
            <!-- form start -->
           <form action="{{ route('user.save-security-question') }}" method="POST">
           	@csrf
           	@method('PUT')
            <div>
                <div class="row">
                    <div class="col-sm-12 mb-2 col-md-8">

                        <div class="form-group">
                            <label>@lang('index.question')
                                {!! starSign() !!}
                            </label>
                            <select name="question" id="question" class="form-control select2">
                                <option value="">@lang('index.select_question')</option>
                                @foreach($questions as $question)
                                    <option value="{{ $question }}" {{ Auth::user()->question === $question ? 'selected' : '' }}>{{ $question }}</option>
                                @endforeach
                            </select>
                        </div>
                        @error('question')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>

                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>
                            	@lang('index.answer')
                            	{!! starSign() !!}
                            </label>
                            <input  type="text" name="answer" class="form-control"
                                   placeholder="@lang('index.answer')"
                                   value="{{ Auth::user()->answer ?? '' }}">
                        </div>
                        @error('answer')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>

                <div class="row mt-2">
                    <div class="col-sm-12 col-md-2 mb-2">
                        <button type="submit" name="submit" value="submit"
                                class="btn bg-blue-btn w-100">@lang('index.submit')</button>
                    </div>
                    <div class="col-sm-12 col-md-2 mb-2">
                        <a class="btn bg-blue-btn w-100" href="{{ route('user.dashboard') }}">
                            @lang('index.back')
                        </a>
                    </div>
                </div>
            </div>
                </div>
           </form>
        </div>
    </div>
</section>
@endsection

@push('js')
@endpush
