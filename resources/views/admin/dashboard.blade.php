@extends('admin.layouts.app')
@section('title','Dashboard')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}


    <div class="box-wrapper"> 
        <!-- general form elements -->
        <div class="table-box">
            <div class="box-body">
                <div class="row"> 
                    <div class="col-md-12 col-lg-4 mb-3">
                        <img src="{{ asset('frequent_changing/images/chef.png') }}" alt="" class="w-100 d-block mx-auto" />
                    </div>
                    <div class="col-lg-8 col-md-12 mb-3">
                        <h1 class="user_info_header">Admin</h1> 
                        <div class="user_detail_container">
                            <p class="user_information">
                                <i class="fa fa-users"></i> Admin
                            </p>
                            <p class="user_information">
                                <i class="fa fa-phone"></i> 0125478225 <br />
                            </p>
                            <p class="user_information">
                                <i class="fa fa-envelope"></i> andmin@cardgenerator.com<br /> 
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
@endpush

