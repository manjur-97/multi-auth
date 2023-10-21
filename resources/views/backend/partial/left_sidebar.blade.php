<?php
$currentControllerName = Request::segment(2);

?>
<header class="main-nav">
    <div class="sidebar-user text-center"><a class="setting-primary" href="javascript:void(0)"><i
                data-feather="settings"></i></a><img class="img-90 rounded-circle"
            src="{{ asset('assets/backend/images/dashboard/1.png') }}" alt="">
        <div class="badge-bottom"><span class="badge badge-primary">New</span></div>
        <a href="">
            <h6 class="mt-3 f-14 f-w-600">{{ \Illuminate\Support\Facades\Auth::user()->name }}</h6>
        </a>
        <p class="mb-0 font-roboto">IE&I</p>
    </div>
    <nav>
        <div class="main-navbar">
            <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
            <div id="mainnav">
                <ul class="nav-menu custom-scrollbar">
                    <li class="back-btn">
                        <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2"
                                aria-hidden="true"></i></div>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'adminDashboard' ? 'active_menu' : '' }}"
                            href="{{ route('admin.adminDashboard') }}">
                            <i data-feather="home"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'hall' ? 'active_menu' : '' }}"
                            href="{{ route('admin.hall') }}">
                            <i class="bookmark-icon" data-feather="airplay"></i>
                            <span>Halls</span></a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'floor' ? 'active_menu' : '' }}"
                            href="{{ route('admin.floor') }}">
                            <i data-feather="sliders"></i>
                            <span>Floors</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'shift' ? 'active_menu' : '' }}"
                            href="{{ route('admin.shift') }}">
                            <i data-feather="clock"></i>
                            <span>Shifts</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'hall_accessories_facilities' ? 'active_menu' : '' }}"
                            href="{{ route('admin.hall_accessories_facilities') }}">
                            <i data-feather="command"></i>
                            <span>Accessories Facilities</span>
                        </a>
                    </li>
                    
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'user_category' ? 'active_menu' : '' }}"
                            href="{{ route('admin.user_category') }}">
                            <i data-feather="user-check"></i>
                            <span>User Categories</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'hall_price' ? 'active_menu' : '' }}"
                            href="{{ route('admin.hall_price') }}">
                            <i data-feather="dollar-sign"></i>
                            <span>Hall Pricing</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'others_prices' ? 'active_menu' : '' }}"
                            href="{{ route('admin.others_prices') }}">
                            <i data-feather="dollar-sign"></i>
                            <span>Others Pricing</span>
                        </a>
                    </li>
                   
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'holiday' ? 'active_menu' : '' }}"
                            href="{{ route('admin.holidays') }}">
                            <i data-feather="slash"></i>
                            <span>Holiday</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'ramadan' ? 'active_menu' : '' }}"
                            href="{{ route('admin.ramadans') }}">
                            <i data-feather="loader"></i>
                            <span>Ramadan</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'booking' ? 'active_menu' : '' }}"
                            href="{{ route('admin.bookings') }}">
                            <i data-feather="check-circle"></i>
                            <span>Bookings</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'catering' ? 'active_menu' : '' }}"
                            href="{{ route('admin.caterings') }}">
                            <i data-feather="list"></i>
                            <span>Catering List</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'event' ? 'active_menu' : '' }}"
                            href="{{ route('admin.events') }}">
                            <i data-feather="list"></i>
                            <span>Event Managment List</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'guest' ? 'active_menu' : '' }}"
                            href="{{ route('admin.guests') }}">
                            <i data-feather="users"></i>
                            <span>Guest</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav {{ $currentControllerName == 'settings' ? 'active_menu' : '' }}"
                            href="{{ route('admin.settings') }}">
                            <i data-feather="settings"></i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav 
                        {{ $currentControllerName == 'booking_cancellation_rules' ? 'active_menu' : '' }}"
                            href="{{ route('admin.booking_cancellation_rules') }}">
                            <i data-feather="x-square"></i>
                            <span>Cancellation Rules</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link menu-title link-nav 
                        {{ $currentControllerName == 'booking_change_rules' ? 'active_menu' : '' }}"
                            href="{{ route('admin.booking_change_rules') }}">
                            <i data-feather="minus-square"></i>
                            <span>Change Rules</span>
                        </a>
                    </li>






                    <li class="sidebar-main-title">
                        <div>
                            <h6>Role Permission</h6>
                        </div>
                    </li>

                    {{-- @if (count(menu_check('Menu')) !== 0) --}}
                    {{-- <li class="dropdown"><a class="nav-link menu-title active" href="javascript:void(0)"><i --}}
                    {{-- data-feather="list"></i><span>Menu</span></a> --}}
                    {{-- <ul class="nav-submenu menu-content"> --}}
                    {{-- <li><a href="{{route('admin.menu/menu_create')}}" class="active">Create Menu</a></li> --}}
                    {{-- <li><a href="{{route('admin.menu/all_menu')}}" class="{{Request::is('*/*/all_menu')?'active': ''}}">All Menu</a></li> --}}
                    {{-- </ul> --}}
                    {{-- </li> --}}
                    {{-- @endif --}}

                    @if (count(menu_check('Route')) !== 0)
                        <li class="dropdown"><a
                                class="nav-link menu-title link-nav {{ Request::is('*/dynamic_route') ? 'active' : '' }}"
                                href="{{ route('admin.dynamic_route') }}"><i
                                    data-feather="home"></i><span>Module/Route</span></a>
                        </li>
                    @endif

                    @if (count(menu_check('Role')) !== 0)
                        <li class="dropdown"><a
                                class="nav-link menu-title {{ Request::is('*/role/*') ? 'active' : '' }}"
                                href="javascript:void(0)"><i data-feather="list"></i><span>Roles</span></a>
                            <ul class="nav-submenu menu-content">
                                <li><a href="{{ route('admin.role/all_role') }}"
                                        class="{{ Request::is('*/*/all_role') ? 'active' : '' }}">All role</a></li>
                                <li><a href="{{ route('admin.role/add_role') }}"
                                        class="{{ Request::is('*/*/add_role') ? 'active' : '' }}">Add role</a></li>
                            </ul>
                        </li>
                    @endif

                    @if (count(menu_check('User')) !== 0)
                        <li class="dropdown"><a
                                class="nav-link menu-title link-nav {{ Request::is('*/all_user') ? 'active' : '' }}"
                                href="{{ route('admin.all_user') }}"><i data-feather="home"></i><span>Admin
                                    Users</span></a>
                        </li>
                    @endif
                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </div>
    </nav>
</header>
