@extends('admin.layouts.app')
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
        <h3 class="top-left-header">Edit Design</h3>
    </section>
    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <div class="form-group">
                    <label for="card_title" class="form-label">Card Title <span class="required_star"> *</span></label>
                    <input type="text" id="card_title" name="card_title" class="form-control card_title" placeholder="Card Title" value="{{ $card->card_title }}">
                    <div class="title_erro_msg_count">
                    </div>
                </div>
                <div class="d-flex mt-4">
                    <div class="certificate-wrap">
                        <div class="certificate-area">
                            {!! $card_html_content !!} 
                        </div>
                        <div class="certificate_erro_msg_count">
                        </div>
                        <input type="hidden" name="card_e" class="card_e" value="{{ $card->id }}">
                        <button type="submit" class="mt-4 btn bg-blue-btn card_design_update">Submit</button>
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

