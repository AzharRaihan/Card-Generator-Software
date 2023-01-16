@extends('admin.layouts.app')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">List Card Background</h3>
        <input type="hidden" class="datatable_name" data-title="List Card Background" data-id_name="datatable">
    </section>



    <div class="box-wrapper">
        <div class="table-box"> 
            <div class="box-body">
                <div class="table-responsive"> 
                    <table id="datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>SN</th>
                                <th>Card Background Title</th>
                                <th>Card Background Image</th>
                                <th>Creation Time</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $count = sizeof($cards_background); @endphp
                            @foreach ($cards_background as $key=>$background)
                            <tr>
                                <td scope="row">{{ $count-- }}</td>
                                <td>{{ $background->background_title }}</td>
                                <td>
                                    <button class="btn bg-blue-btn card_background_trigger" data-bs-toggle="modal" data-bs-target="#staticBackdrop" card_background="{{ $background->background_img }}"><i class="fa fa-eye"></i></button>
                                </td>
                                <td>
                                    {{ $background->created_at->diffForHumans() }}
                                </td>
                                <td class="op_center">
                                    <div class="btn-group actionDropDownBtn">
                                        <button type="button" class="btn bg-blue-color dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i data-feather="more-vertical"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">  
                                            <li><a class="edit" href="{{ route('admin.card-background.edit', encryptDecrypt($background->id, 'encrypt')) }}" ><i class="fa fa-edit tiny-icon"></i>Edit</a></li>
                                            <li>
                                                <a type="button" onclick="deleteData({{ $background->id }})">
                                                    <i class="fa fa-trash tiny-icon"></i>
                                                    <span>Delete</span>
                                                </a>
                                                <form id="delete-form-{{ $background->id }}" action="{{ route('admin.card-background.destroy', encryptDecrypt($background->id, 'encrypt')) }}" method="POST" style="display: none;">
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
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Card Background Image</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
            </div>
            <div class="modal-body m-auto">
                <div class="background-view-image">
                    
                </div>
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

