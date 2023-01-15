@extends('admin.layouts.app')
@section('title','Edit Profile')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
    <section class="content-header">
        <h3 class="top-left-header">
            @lang('index.edit_profile')
        </h3>
    </section>

    <div class="box-wrapper">
        <!-- general form elements -->
        <div class="table-box">
            <!-- form start -->
           <form action="{{ route('user.update-profile') }}" method="POST" enctype="multipart/form-data">
           	@csrf
            @method('PUT')
            <div>
                <div class="row">
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.first_name')</label>
                            {!! starSign() !!}
                            <input type="text" name="first_name" class="form-control"
                                   value="{{ Auth::user()->first_name }}">
                        </div>
                        @error('first_name')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                                {{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.last_name') {!! starSign() !!}</label>

                            <input type="text" name="last_name" class="form-control"
                                   value="{{ Auth::user()->last_name }}">
                        </div>
                        @error('last_name')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                                {{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.username')</label>
                            {!! starSign() !!}
                            <input type="text" name="username" class="form-control"
                                   value="{{ Auth::user()->username }}">
                        </div>
                        @error('username')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                                {{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.phone_number')</label>
                            {!! starSign() !!}
                            <input tabindex="1" type="text" name="mobile" class="form-control check-integer"
                                   placeholder="Phone"
                                   value="{{ Auth::user()->mobile }}">
                        </div>
                        @error('mobile')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.email')</label>
                            {!! starSign() !!}
                            <input tabindex="1" type="text" name="email" class="form-control"
                                   placeholder="Email"
                                   value="{{ Auth::user()->email }}">
                        </div>
                        @error('email')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>

                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>@lang('index.photo')</label>
                            {!! starSign() !!}
                            @if(file_exists(Auth::user()->image))
                                <button type="button" class="btn bg-blue-btn pull-right btn-xs ds_modal_open"  id="" data="profilePhoto">
                                    <i class="fa fa-eye"></i>
                                </button>
                            @endif
                            <input tabindex="1" accept="image/*" type="file" name="image" class="form-control">
                            @error('image')
                            <div class="callout callout-danger my-2">
                                <span class="error_paragraph">
                                    {{ $message }}
                                </span>
                            </div>
                            @enderror
                        </div>
                    </div>
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
           </form>
        </div>

    </div>
</section>
    <div class="modal fade" id="profilePhoto">
        <div class="modal-dialog modal-sm" role="document">
          <div class="modal-content">
            <div class="custom-modal-header">
              <button type="button" class="btn btn-sm badge-danger ds_close_modal"  data="profilePhoto">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body text-center">
                    <img src="{{ asset(Auth::user()->image) }}" alt="" class="img-responsive" height="200" width="200">
            </div>
          </div>
        </div>
  </div>
@stop

@push('js')
<script src="{{ asset('frequent_changing/js/modal.js') }}"></script>

@endpush
