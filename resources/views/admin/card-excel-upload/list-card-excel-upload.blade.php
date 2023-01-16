@extends('admin.layouts.app')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush
@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">List Card Excel</h3>
        <input type="hidden" class="datatable_name" data-title="List Card Excel" data-id_name="datatable">
    </section>



    <div class="box-wrapper">
        <div class="table-box"> 
            <div class="box-body">
                <!-- /.box-header -->
                <div class="table-responsive"> 
                    <table id="datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>SN</th>
                                <th>Title</th>
                                <th>Uploaded By</th>
                                <th>Creation Time</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $count = sizeof($cards); @endphp
                            @foreach($cards as $key=> $card)
                            <tr>
                                <td>{{ $count -- }}</td>
                                <td>{{ $card->generate_for }}</td>
                                <td>{{ $card->added_by === 'admin' ? 'Admin' : 'User' }}</td>
                                <td>{{ $card->created_at }}</td>
                                <td class="op_center">
                                    <div class="btn-group actionDropDownBtn">
                                        <button type="button" class="btn bg-blue-color dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i data-feather="more-vertical"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">  
                                            <li><a class="edit" href="{{ route('admin.card-excel-upload.edit', encryptDecrypt($card->id, 'encrypt')) }}" ><i class="fa fa-edit tiny-icon"></i>Edit</a></li>
                                            <li><a class="view" href="{{ route('admin.card-excel-upload.show', encryptDecrypt($card->id, 'encrypt')) }}" ><i class="fa fa-eye tiny-icon"></i>Show</a></li>
                                            <li><a class="pdf" href="{{ route('admin.card-generate-pdf', encryptDecrypt($card->id, 'encrypt')) }}" ><i class="fa fa-edit tiny-icon"></i>Generate PDF</a></li>
                                            @php 
                                                $auth_user = Auth::user();
                                            @endphp
                                            @if($auth_user->role === 'admin')
                                            <li>
                                                <a type="button" onclick="deleteData({{ $card->id }})">
                                                    <i class="fa fa-trash tiny-icon"></i>
                                                    <span>Delete</span>
                                                </a>
                                                <form id="delete-form-{{ $card->id }}" action="{{ route('admin.card-excel-upload.destroy', encryptDecrypt($card->id, 'encrypt')) }}" method="POST" style="display: none;">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </li>
                                            @endif
                                        </ul> 
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
@include('admin.layouts.data_table_script')
@include('admin.layouts.sweetalert')
@endpush

