@extends('admin.layouts.app')
@section('title','Organization')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
    <section class="content-header">
        {{ alertMessage() }}
        <h3 class="top-left-header">@lang('index.site_setting') </h3>
    </section>

    <div class="box-wrapper">
        <!-- general form elements -->
        <div class="table-box">
            <!-- form start -->
           <form action="{{ route('admin.site-settings-update') }}" method="POST" enctype="multipart/form-data">
           	@csrf
            @method('PUT')
            <div>
                <div class="row">
                    <div class="col-sm-12 mb-2 col-md-4">
                        <div class="form-group">
                            <label>
                                @lang('index.title')
                                {!! starSign() !!}
                            </label>
                            <input tabindex="1" type="text" name="title" class="form-control"
                                   placeholder="@lang('index.title')"
                                   value="{{ $data->title }}">
                        </div>
                        @error('title')
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
                            	@lang('index.phone_number')
                            	{!! starSign() !!}
                            </label>
                            <input tabindex="1" type="number" name="phone" class="form-control integer-check"
                                   placeholder="@lang('index.phone')"
                                   value="{{ $data->phone }}">
                        </div>
                        @error('phone')
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
                                @lang('index.email')
                                {!! starSign() !!}
                            </label>
                            <input tabindex="1" type="text" name="email" class="form-control"
                                   placeholder="@lang('index.email')"
                                   value="{{ $data->email }}">
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
                            <label>
                            	@lang('index.logo') (Size: 1MB)
                                {!! starSign() !!}
                            </label>
                            @if(file_exists($data->logo))
                                <button type="button" class="btn bg-blue-btn pull-right btn-xs ds_modal_open"  id="" data="siteLogo">
                                    <i class="fa fa-eye"></i>
                                </button>
                            @endif

                            <input tabindex="1" accept="image/*" type="file" name="logo" class="form-control" >
                        </div>
                        @error('logo')
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
                            	@lang('index.favicon') (Size: 1MB)
                                {!! starSign() !!}
                            </label>
                            @if(file_exists($data->favicon))
                                <button type="button" class="btn bg-blue-btn pull-right btn-xs ds_modal_open"  id="" data="siteFavIcon">
                                    <i class="fa fa-eye"></i>
                                </button>
                            @endif

                            <input tabindex="1" accept="image/*" type="file" name="favicon" class="form-control">
                        </div>
                        @error('favicon')
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
                            	@lang('index.footer')
                            	{!! starSign() !!}
                            </label>
                            <input tabindex="1" type="text" name="footer" class="form-control integer-check"
                                   placeholder="@lang('index.footer')"
                                   value="{{ $data->footer }}">
                        </div>
                        @error('footer')
                        <div class="callout callout-danger my-2">
                            <span class="error_paragraph">
                            	{{ $message }}
                            </span>
                        </div>
                        @enderror
                    </div>

                    <div class="col-sm-12 mb-2 col-md-12">
                        <div class="form-group">
                            <label>
                            	@lang('index.address')
                                {!! starSign() !!}
                            </label>
                            <textarea tabindex="1" type="text" name="address" class="form-control"
                                   placeholder="@lang('index.address')"
                                      value="">{{ $data->address }}</textarea>
                            @error('address')
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
                        <button type="submit"
                                class="btn bg-blue-btn w-100">@lang('index.submit')</button>
                    </div>
                    <div class="col-sm-12 col-md-2 mb-2">
                        <a class="btn bg-blue-btn w-100" href="{{ route('admin.dashboard') }}">
                            @lang('index.back')
                        </a>
                    </div>
                </div>
            </div>
           </form>
        </div>
    </div>
</section>
<!-- modal -->
  <div class="modal fade" id="siteFavIcon">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="custom-modal-header">
          <button type="button" class="btn btn-sm badge-danger ds_close_modal"  id="" data="siteFavIcon">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-center">
            <img src="{{ asset($data->favicon) }}" alt="" class="img-responsive">
        </div>
      </div>
    </div>
  </div>

    <div class="modal fade" id="siteLogo">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="custom-modal-header">
          <button type="button" class="btn btn-sm badge-danger ds_close_modal"  id="" data="siteLogo">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-center">
            <img src="{{ asset($data->logo) }}" alt="" class="img-responsive">
        </div>
      </div>
    </div>
  </div>
@endsection

@push('js')

@endpush
