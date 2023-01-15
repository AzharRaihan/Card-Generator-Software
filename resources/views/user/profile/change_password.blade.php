@extends('admin.layouts.app')
@section('title','Change Password')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
	{{ alertMessage() }}
    <section class="content-header">
        <h3 class="top-left-header">
            @lang('index.change_password')
        </h3>
    </section>

    <div class="box-wrapper">
        <!-- general form elements -->
        <div class="table-box">
            <!-- form start -->
           <form action="{{ route('user.change-password') }}" method="POST">
           	@csrf
           	@method('PUT')
            <div>
                <div class="row">
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.old_password') {!! starSign() !!}</label>
                            <input type="password" name="old_password" class="form-control"
                                   placeholder="@lang('index.old_password')"
                                   value="">
                        </div>
                        @error('old_password')
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
                            	@lang('index.new_password')
                            	{!! starSign() !!}
                            </label>
                            <input tabindex="2" type="password" name="new_password" class="form-control"
                                   placeholder="@lang('index.new_password')"
                                   value="">
                        </div>
                        @error('new_password')
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
                            	@lang('index.confirm_password')
                            	{!! starSign() !!}
                            </label>
                            <input tabindex="2" type="password" name="confirm_password" class="form-control"
                                   placeholder="@lang('index.confirm_password')"
                                   value="">
                        </div>
                        @error('confirm_password')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>


                <!-- /.box-body -->

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
