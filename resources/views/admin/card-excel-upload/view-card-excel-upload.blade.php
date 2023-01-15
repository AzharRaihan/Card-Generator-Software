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
        <h3 class="top-left-header">Show Card Excel Upload</h3>
    </section>



    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Location</th>
                            <th>Model</th>
                            <th>Price</th>
                            <th>Qr Code</th>
                            <th>Date Range</th>
                            <th>Other</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($card_item as $item)
                        <tr>
                            <input type="hidden" class="form-control" name="card_details_id[]" value="{{ $item->id }}" placeholder="">
                            <td><input type="text" class="form-control" name="location[]" value="{{ $item->location }}" placeholder=""></td>
                            <td><input type="text" class="form-control" name="model[]" value="{{ $item->model }}" placeholder=""></td>
                            <td><input type="text" class="form-control" name="price[]" value="{{ $item->price }}" placeholder=""></td>
                            <td><input type="text" class="form-control" name="qr_code[]" value="{{ $item->qr_code }}" placeholder=""></td>
                            <td><input type="text" class="form-control" name="date_range[]" value="{{ $item->date_range }}" placeholder=""></td>
                            <td><input type="text" class="form-control" name="other[]" value="{{ $item->other }}" placeholder=""></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')
@endpush

