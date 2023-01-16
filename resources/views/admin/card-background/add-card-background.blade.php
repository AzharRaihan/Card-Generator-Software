@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.structure.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.theme.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Add Card Background</h3>
    </section>

    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <form action="{{ route('admin.card-background.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="background_title">Card Background Title <span class="required_star"> *</span></label>
                                <input type="text" class="form-control @error('background_title') is-invalid @enderror" id="background_title" name="background_title" placeholder="Card Background Title"  value="{{ old('background_title') }}">
                                @error('background_title')
                                <span class="invalid-feedback" role="alert">
                                    <p class="erro_msg">{{ $message }}</p>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="background_img">Card Backgorund Image <span class="required_star"> *</span></label>
                                <input type="file" class="form-control" id="background_img" name="background_img" accept="image/*">
                                @if(Session::has('background_img_error'))
                                <span class="" role="alert">
                                    <p class="erro_msg">{{ Session::get('background_img_error') }}</p>
                                </span>
                                @enderror

                            </div>
                        </div>
                    </div>
                    <div class="d-flex mt-4">
                        <button type="submit" class="btn bg-blue-btn card_design_submit">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
@endpush

