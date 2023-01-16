<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left info">
            <p>Door Soft</p>
            <p>Admin nName</p>
        </div>
    </div>
    <!-- <ul class="sidebar-menu">
        <li class="header"></li>
    </ul> -->
    <div id="left_menu_to_scroll">
    @php
        $url = ucfirst(Request::segment(2));
    @endphp
        <!-- sidebar menu: : style can be found in sidebar.less -->
        @if(Request::is('admin*') && (Auth::user()->role === "admin"))
            <ul class="sidebar-menu" data-widget="tree">
                <li class="{{ $url=="Dashboard" ? 'active' : '' }}">
                    <a href="{{ route('admin.dashboard') }}">
                        <i data-feather="home"></i>
                        <span>User Home</span>
                    </a>
                </li>
                <li  class="{{$url == 'Site-settings' ? 'active' : ($url == 'Special-need' ? 'active' : ($url == 'Difficulties' ? 'active' : ($url == 'Therapies' ? 'active' : ($url == 'Goals' ? 'active' : ($url == 'Designations' ? 'active' : '')) ) ))}} treeview">
                    <a href="#"><i data-feather="settings"></i><span>@lang ('index.setting')</span></a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="{{ route('admin.site-settings') }}">
                                @lang ('index.site_setting')
                            </a>
                        </li>
                    </ul>
                </li>
                <li  class="treeview">
                    <a href="#"><i data-feather="grid"></i><span>Design Layout</span></a>
                    <ul class="treeview-menu">
                        <li class="">
                            <a href="{{ route('admin.card-design.create') }}">
                                Add Design Layout
                            </a>
                        </li>
                        <li class="">
                            <a href="{{ route('admin.card-design.index') }}">
                                List Design Layout
                            </a>
                        </li>
                    </ul>
                </li>

                {{-- <svg  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg> --}}



                <li  class="treeview">
                    <a href="#"><i data-feather="image"></i><span>Background Design</span></a>
                    <ul class="treeview-menu">
                        <li class="">
                            <a href="{{ route('admin.card-background.create') }}">
                                Add Card Background
                            </a>
                        </li>
                        <li class="">
                            <a href="{{ route('admin.card-background.index') }}">
                                List Card Background
                            </a>
                        </li>
                    </ul>
                </li>
                <li  class="treeview">
                    <a href="#"><i data-feather="file-text"></i><span>Card Excel Upload</span></a>
                    <ul class="treeview-menu">
                        <li class="">
                            <a href="{{ route('admin.card-excel-upload.create') }}">
                                Add Card Excel Upload
                            </a>
                        </li>
                        <li class="">
                            <a href="{{ route('admin.card-excel-upload.index') }}">
                                List Card Excel Upload
                            </a>
                        </li>
                        <li class="">
                            <a href="{{ route('admin.card-generate-view') }}">
                                Generate Card
                            </a>
                        </li>
                    </ul>
                </li>
                
            </ul>
        @endif

        @if((Auth::user()->role === "user") && Request::is('user*') )
            <ul class="sidebar-menu" data-widget="tree">
                <li class="{{ $url=="Dashboard" ? 'active' : '' }}">
                    <a href="{{ route('provider.dashboard') }}">
                        <i data-feather="grid"></i>
                        <span> @lang ('index.dashboard')</span>
                    </a>
                </li>
            </ul>
        @endif
    </div>
</section>



