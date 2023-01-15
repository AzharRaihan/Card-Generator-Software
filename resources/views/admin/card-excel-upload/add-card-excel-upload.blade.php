@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Add Card Excel</h3>
    </section>

    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <form action="{{ route('admin.card-excel-upload.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="generate_for">Title <span class="required_star"> *</span></label>
                                <input type="text" class="form-control @error('generate_for') is-invalid @enderror" id="generate_for" name="generate_for" placeholder="Title" value="{{ old('generate_for') }}">
                                @error('generate_for')
                                <span class="invalid-feedback" role="alert">
                                    <p class="erro_msg">{{ $message }}</p>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="excel_file">Upload Card Excel <span class="required_star"> *</span></label>
                                <input type="file" class="form-control @error('excel_file') is-invalid @enderror" id="excel_file" name="excel_file">
                                @error('excel_file')
                                <span class="invalid-feedback" role="alert">
                                    <p class="erro_msg">{{ $message }}</p>
                                </span>
                                @enderror
                            </div>
                            <a href="{{ route('admin.card-demo-download') }}" class="btn bg-blue-btn me-2 d-inline"><i class="fa fa-download me-1"></i>Download Sample File</a>
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