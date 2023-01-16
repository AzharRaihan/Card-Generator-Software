<!DOCTYPE html>
    @php
        $site = App\Models\SiteSetting::first();
    @endphp
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url__" app_url__="{!! url('/') !!}" />
    <title>{{ $site->title ?? 'Door Soft' }}</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- jQuery 3 -->
    <script src="{{ asset('assets/bower_components/jquery/dist/jquery.min.js') }}"></script>
    <!-- Select2 -->
    <script src="{{ asset('assets/bower_components/select2/dist/js/select2.full.min.js') }}"></script>
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/select2/dist/css/select2.min.css') }}">

    <!-- InputMask -->
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.js') }}"></script>
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
    <!-- iCheck -->
    <script src="{{ asset('assets/plugins/iCheck/icheck.min.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/plugins/iCheck/all.css') }}">
    <link rel="stylesheet" href="{{ asset('frequent_changing/css/custom_css.css') }}">

    <!-- Sweet alert -->
    <script src="{{ asset('frequent_changing/sweetalert2/sweetalert.js') }}"></script>

    <!-- Numpad -->
    <script src="{{ asset('assets/bower_components/numpad/jquery.numpad.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/bower_components/numpad/jquery.numpad.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bower_components/numpad/theme.css') }}">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datepicker/datepicker.css') }}">
    <!-- bootstrap datepicker -->
    <script src="{{ asset('assets/bower_components/datepicker/bootstrap-datepicker.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/css-framework/bootstrap-new/bootstrap.min.css') }}">
    <!-- New Admin Panel Design -->
    <link rel="stylesheet" href="{{ asset('frequent_changing/newDesign/style.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="{{ asset('assets/bower_components/font-awesome/css/font-awesome.min.cs') }}s">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/Ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dist/css/jquery.mCustomScrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/plugins/perfect-scrollbar/dist/perfect-scrollbar.css') }}">
    <link rel="shortcut icon" href="{{ asset(isset($site) && $site->favicon ? $site->favicon : 'assets/images/favicon.ico') }}" type="image/x-icon">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/AdminLTE.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dist/css/custom/userHome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dist/css/common.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/plugins/nice-select/css/nice-select.css') }}">

    <!-- Google Font -->
    <link rel="stylesheet" href="{{ asset('assets/plugins/local/google_font.css') }}">
    <link rel="stylesheet" href="{{ asset('frequent_changing/css/custom_tooltip.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/timepicker.min.css') }}">
    <script src="{{ asset('assets/css/timepicker.min.js') }}"></script>

    <link href="{{ asset('assets/dist/css/jquerysctipttop.css') }}" rel="stylesheet" type="text/css">
    <script src="{{ asset('frequent_changing/js/user_home25821.js') }}"></script>
    <!-- Axios Script -->
    {{-- <script src="{{ asset('frequent_changing/js/axios.js') }}"></script> --}}
    <script src="{{ asset('assets/bower_components/ckeditor/ckeditor.js') }}"></script>

    {{-- Custom Created --}}
    <link rel="stylesheet" href="{{ asset('assets/custom/custom.css') }}">
    @stack('css')
</head>
@php
    $is_collapse = session()->get('is_collapse');
@endphp
<body class="hold-transition skin-blue sidebar-mini <?php echo isset($is_collapse) && $is_collapse=="No"? '' : 'sidebar-collapse'?>">

<div class="loader"></div>
<div class="main-preloader">
    <div class="lds-ring"><div></div><div></div><div></div><div></div></div>
</div>
<!-- Site wrapper -->
<div class="wrapper">

<header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="wrapper_up_wrapper">
            <div class="hh_wrapper">
                <div class="navbar-custom-menu">
                    <div class="menu-trigger-box">
                        <a href="javascript:void(0)" data-toggle="push-menu" class="st"><i data-feather="menu"></i></a>
                        <a href="javascript:void(0)" class="om"><i data-feather="grid"></i></a>
                    </div>
                    
                </div>
                 <div class="navbar-custom-menu">
                     <ul class="menu-list">
                         <li class="user-info-box">
                            <div class="c-dropdown-menu">
                                @if(Auth::check() && Request::is('admin*'))
                                    <ul>
                                        <li>
                                            <a href="{{ route('admin.edit-profile') }}">
                                                <i data-feather="user"></i>
                                                @lang('index.change_profile')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('admin.change-password') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.change_password')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('admin.set-security-question') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.set_security_question')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('logout') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.logout')
                                            </a>
                                        </li>
                                    </ul>
                                @endif

                                 @if(Auth::check() && Request::is('user*'))
                                    <ul>
                                        <li>
                                            <a href="{{ route('user.edit-profile') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.change_profile')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('user.change-password') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.change_password')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('user.set-security-question') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.set_security_question')
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('logout') }}">
                                                <i data-feather="key"></i>
                                                @lang('index.logout')
                                            </a>
                                        </li>
                                    </ul>
                                @endif
                            </div>
                             <div class="user-profile">
                                @if((Auth::user()->image != null) AND (file_exists(Auth::user()->image)))
                                    <img class="user-avatar" src="{{ asset(Auth::user()->image) }}" alt="">
                                @else
                                    <img class="user-avatar" src="{{ asset('assets/images/avator.jpg') }}" alt="">
                                @endif
                                <div class="user-info">
                                    <p class="user-name">{{ Auth::check() ? Auth::user()->full_name : "Admin" }}<i class="fa fa-angle-down"></i> </p>
                                    <span class="user-role">{{ Auth::check() ? ucfirst(Auth::user()->role) : "Admin" }}</span>
                                </div>
                            </div>
                         </li>
                     </ul>
                 </div>
            </div>
        </div>
    </nav>
</header>
    <!-- Left side column. contains the sidebar -->


    <aside class="main-sidebar">

        <a href="#" class="sidebar-toggle set_collapse" data-toggle="push-menu" role="button" data-status="<?php echo isset($is_collapse) && $is_collapse == "No" ? '2' : '1'?>">
        <span class="sr-only">Toggle navigation</span>
        <span class="inner-circle"></span>
        </a>
        <!-- Sidebar toggle button-->
        <a href="{{ route('admin.dashboard') }}" class="logo-wrapper">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <h3 class="logo-mini">C G</h3>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">
            <img src="{{ asset(isset($site) && $site->logo ? $site->logo : 'frequent_changing/images/logo/logo.png') }}" alt="" height="40" width="188">
        </span>
        </a>

        @include('admin.layouts.sidebar')

    <!-- /.sidebar -->
    </aside>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<link rel="stylesheet" href="{{ asset('assets/dist/css/custom/dashboard.css') }}">

    @yield('content')





<!-- ChartJS -->
<script src="{{ asset('assets/bower_components/chart.js/Chart.js') }}"></script>

<script type="text/javascript" src="{{ asset('assets/plugins/local/loader.js') }}"></script>

<script src="{{ asset('assets/bower_components/raphael/raphael.min.js') }}"></script>
<script src="{{ asset('assets/bower_components/morris.js/morris.min.js') }}"></script>
<link rel="stylesheet" href="{{ asset('assets/bower_components/morris.js/morris.css') }}">
<script type="text/javascript" src="{{ asset('frequent_changing/js/dashboard.js') }}"></script>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<footer class="main-footer">
<div class="row">
    <div class="col-md-12 ir_txt_center">
        <strong>{{ isset($site) && $site->footer ? $site->footer : '' }}</a></strong>
        <div class="hidden-lg"></div>
    </div>
</div>
</footer>
</div>





    <!-- Bootstrap 5.0.0 -->
    <script src="{{ asset('assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js') }}"></script>
    <script src="{{ asset('assets/css-framework/bootstrap-new/bootstrap.bundle.min.js') }}"></script>

    <!-- FastClick -->
    <script src="{{ asset('assets/bower_components/fastclick/lib/fastclick.js') }}"></script>
    <script src="{{ asset('assets/plugins/nice-select/js/jquery.nice-select.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('assets/plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js') }}"></script>

    <script src="{{ asset('assets/dist/js/adminlte.min.js') }}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{ asset('assets/dist/js/demo.js') }}"></script>
    <script src="{{ asset('assets/dist/js/menu.js') }}"></script>
    <!-- custom scrollbar plugin -->
    <script src="{{ asset('assets/dist/js/jquery.mCustomScrollbar.concat.min.js') }}"></script>
    <!-- material icon -->
    <script src="{{ asset('assets/dist/js/feather.min.js') }}"></script>
    <script src="{{ asset('frequent_changing/js/user_home_buttom1222021v1.js') }}"></script>
    <script src="{{ asset('frequent_changing/newDesign/js/new-script.js') }}"></script>
    <script src="{{ asset('frequent_changing/js/helper.js') }}"></script>
    <script src="{{ asset('frequent_changing/js/common.js') }}"></script>
    <script src="{{ asset('frequent_changing/js/modal.js') }}"></script>
    @stack('js')
</body>

</html>
