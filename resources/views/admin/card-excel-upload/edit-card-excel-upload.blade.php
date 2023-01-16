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
        <h3 class="top-left-header">Edit Excel Card Data</h3>
    </section>



    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <form action="{{ route('admin.card-excel-upload.update', encryptDecrypt($card_id->id, 'encrypt')) }}" method="POST">
                    @csrf
                    @method('PUT')
                    @php $count = sizeof($card_item); @endphp
                    <input type="hidden" class="form-control card_item_id" name="card_details_id" value="{{ $count }}">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Location</th>
                                <th>Model</th>
                                <th>Price</th>
                                <th>Date-Range</th>
                                <th>Qr-Code-URL</th>
                                <th>Other</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody class="select_body">
                            @foreach ($card_item as $item)
                            <tr>
                                <td><input required type="text" class="form-control" name="location[]" value="{{ $item->location }}" placeholder=""></td>
                                <td><input required type="text" class="form-control" name="model[]" value="{{ $item->model }}" placeholder=""></td>
                                <td><input required type="text" class="form-control" name="price[]" value="{{ $item->price }}" placeholder=""></td>
                                <td><input required type="text" class="form-control" name="date_range[]" value="{{ $item->date_range }}" placeholder=""></td>
                                <td><input required type="text" class="form-control" name="qr_code[]" value="{{ $item->qr_code }}" placeholder=""></td>
                                <td><input required type="text" class="form-control" name="other[]" value="{{ $item->other }}" placeholder=""></td>
                                <td><button type="button" class="btn btn-danger remove_item_trigger"><i class="fa fa-trash tiny-icon"></i></button></td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="5"></td>
                                <td>
                                    <td><button type="button" class="btn bg-blue-btn add_item_trigger h_36 p_lr_14"><i class="fa fa-plus tiny-icon"></i></button></td>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                    <button type="submit" class="btn bg-blue-btn">Update</button>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')
<script src="{{ asset('frequent_changing/js/excel_upload.js') }}"></script>

@endpush

