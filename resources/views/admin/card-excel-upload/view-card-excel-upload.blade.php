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
        <h3 class="top-left-header">Show Excel Card Data</h3>
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
                            <th>Date-Range</th>
                            <th>Qr-Code-URL</th>
                            <th>Other</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($card_item as $item)
                        <tr>

                            <td>
                                <span>
                                    {{ $item->location }}
                                </span>
                            </td>
                            <td>
                                <span>
                                    {{ $item->model }}
                                </span>
                            </td>
                            <td>
                                <span>
                                    {{ $item->price }}
                                </span>
                            </td>
                            <td>
                                <span>
                                    {{ $item->date_range }}
                                </span>
                            </td>
                            <td>
                                <span>
                                    {{ $item->qr_code }}
                                </span>
                            </td>
                            <td>
                                <span>
                                    {{ $item->other }}
                                </span>
                            </td>
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

