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
                    <div class="certificate-wrap">
                        <div class="certificate-area">
                            <span class="drag c_pointer" style="position: relative; left: 146px; top: 136px;">
                                <span class="trigger_to_select_location">Location</span>
                            </span>
                            <span class="drag c_pointer" style="position: relative; left: -43px; top: 138px;">
                                <span class="trigger_to_select_model">Model</span>
                            </span>
                            <span class="drag c_pointer" style="position: relative; left: 72px; top: 42px;">
                                <span class="trigger_to_select_price" style="font-size: 26px; font-weight: 900;">Price</span>
                            </span>
                            <span class="drag c_pointer" style="position: relative; left: -55px; top: 99px;">
                                <span class="trigger_to_select_date">Date-Range</span>
                            </span>
                            <span class="drag c_pointer" style="position: relative; left: 267px; top: -40.5px;">
                                <span class="trigger_to_select_other">Other</span>
                            </span>
                            <div class="drag resize edit-image ui-widget-content qr_code_range position_relative" style="left: 0px; top: -55px; height: 131px; width: 131px;">
                                <img src="{{ asset('frequent_changing/upload-demo/qrcode.png') }}" width="50" height="50">
                            </div>
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
                        <button class="btn btn-danger del_item w-100 mt-4"><i class="fa fa-trash"></i> Del Item</button>
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

