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
        <h3 class="top-left-header">Edit Card Background</h3>
    </section>

    


    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <form action="{{ route('admin.card-background.update', encryptDecrypt($card_id->id, 'encrypt')) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="background_title">Card Background Title <span class="required_star"> *</span></label>
                                <input type="text" class="form-control @error('background_title') is-invalid @enderror" id="background_title" name="background_title" placeholder="Card Background Title" value="{{ $card_id->background_title }}">
                                @error('background_title')
                                <span class="invalid-feedback" role="alert">
                                    <p class="erro_msg">{{ $message }}</p>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="background_img">Card Backgorund Image <span class="required_star"> *</span></label>
                                <div class="d-flex">
                                    <input type="file" class="form-control @error('background_img') is-invalid @enderror" id="background_img" name="background_img">
                                    <button type="button" class="btn bg-blue-btn ms-3" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye"></i></button>
                                </div>
                                @error('background_img')
                                <span class="invalid-feedback" role="alert">
                                    <p class="erro_msg">{{ $message }}</p>
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


  
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Card Background Image</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <img src="{{ asset('uploads/card-background/'. $card_id->background_img) }}" alt="" width="200" height="200">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


@endsection
@push('js')

@endpush

