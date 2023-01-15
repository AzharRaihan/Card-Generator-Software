@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    @if(isset($message) && !empty($message))
    <div class="alert alert-success alert-dismissible fade show">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        <div class="alert-body">
            <p>
                <i class="m-right fa fa-check"></i>
                {{ $message }}
            </p>
        </div>
    </div>
    @endif



    <section class="content-header">
        <h3 class="top-left-header">List Design</h3>
    </section>



    <div class="box-wrapper">
        <div class="table-box"> 
            <div class="box-body">
                <div class="table-responsive"> 
                    <table id="datatable" class="table table-bordered table-striped">
                        {{-- <input type="hidden" class="datatable_name" data-id_name="datatable" data-title="List Design"> --}}
                        <thead>
                            <tr>
                                <th>SN</th>
                                <th>Card</th>
                                <th>Card Design View</th>
                                <th>Creation Time</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>


                            @php $count = sizeof($card_designs); @endphp
                            @foreach ($card_designs as $key=>$card)
                            <tr>
                                <td scope="row">{{ $count -- }}</td>
                                <td>{{ $card->card_title }}</td>
                                <td>
                                    <button class="btn bg-blue-btn get_design_trigger" data-bs-toggle="modal" data-bs-target="#staticBackdrop" card_design_html='{!! $card->card_design !!}'><i class="fa fa-eye"></i></button>
                                </td>
                                <td>
                                    {{ $card->created_at->diffForHumans() }}
                                </td>
                                <td class="op_center">
                                    <div class="btn-group actionDropDownBtn">
                                        <button type="button" class="btn bg-blue-color dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i data-feather="more-vertical"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">  
                                            <li><a class="edit" href="{{ route('admin.card-design.edit', encryptDecrypt($card->id, 'encrypt')) }}" ><i class="fa fa-edit tiny-icon"></i>Edit</a></li>
                                            <li>
                                                <a type="button" onclick="deleteData({{ $card->id }})">
                                                    <i class="fa fa-trash tiny-icon"></i>
                                                    <span>Delete</span>
                                                </a>
                                                <form id="delete-form-{{ $card->id }}" action="{{ route('admin.card-design.destroy', encryptDecrypt($card->id, 'encrypt')) }}" method="POST" style="display: none;">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </li>
                                        </ul> 
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection



  
<!-- Card Design Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Card Design</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
            </div>
            <div class="modal-body">
                <div id="show_design" class="certificate-area"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

@push('js')
@include('admin.layouts.data_table_script')
@include('admin.layouts.sweetalert')
<script src="{{ asset('frequent_changing/js/list_pages.js') }}"></script>
@endpush

