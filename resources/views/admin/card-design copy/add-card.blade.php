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
        <h3 class="top-left-header">Add Design</h3>
    </section>
    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <div class="form-group">
                    <label for="card_title" class="form-label">Card Title <span class="required_star"> *</span></label>
                    <input type="text" id="card_title" name="card_title" class="form-control card_title" placeholder="Card Title">
                    <div class="title_erro_msg_count">
                    </div>
                </div>
                <div class="d-flex mt-4">
                    <ul class="placeholder">
                        <li class="location btn df-bg-btn">
                            <span>Location</span>
                        </li>
                        <li class="model btn df-bg-btn">
                            <span>Model</span>
                        </li>
                        <li class="price btn df-bg-btn">
                            <span>Price</span>
                        </li>
                        <li class="date_range btn df-bg-btn">
                            <span>Date Range</span>
                        </li>
                        <li class="qr_code btn df-bg-btn">
                            <span>QR-Code</span>
                        </li>
                        <li class="other btn df-bg-btn">
                            <span>Other</span>
                        </li>
                    </ul>
                    <div class="certificate-wrap">
                        <div class="certificate-area">
                            
                        </div>
                        <div class="certificate_erro_msg_count">
                        </div>
                        <button type="submit" class="mt-4 btn bg-blue-btn card_design_submit">Submit</button>
                    </div>
                    <div class="custom_ctrl">
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Font Size Labe</label>
                            <select name="font-size" id="font-size" class="form-control">
                                <option>Font Size</option>
                                @for ($i = 1; $i <= 30; $i++)
                                    <option value="{{ $i }}">{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="" class="form-label">Font Weight</label>
                            <select name="font-weight" id="font-weight" class="form-control">
                                <option>Font Weight</option>
                                <option value="normal">Normal</option>
                                <option value="lighter">Lighter</option>
                                <option value="600">Semi Bold</option>
                                <option value="900">Bold</option>
                            </select>
                        </div>
                        <button type="button" class="w-100 btn bg-blue-btn reset-trigger mt-4">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')
<script src="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.js') }}"></script>
<script src="{{ asset('frequent_changing/js/card_design.js') }}"></script>
@endpush
