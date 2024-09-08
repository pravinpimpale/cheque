<div class="navigation">
    <nav class="navbar navbar-custom" role="navigation">
        <div class="container-nav">
            <button type="button" class="navbar-menu responsive-menu">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="navbar-collapse navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li class="first-nav">
                        <a href="/">
                            <img src="{{ asset('assets/front/img/logo/logo.webp') }}" class="img-fluid w-80 h-80 rounded" alt="Second slide" width="40px" height="40px">
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="first-nav">
                        <a href="/">
                            <i class="fa fa-home"></i>
                        </a>
                    </li>
                    <!-- Category Navigation -->
                    <li class="topmenu hasSub no-js extrimg"
                        data-main="includes/templates/chequesplus/images/nav-images/quickbooks-cheques.png">
                        <a class="category-top" href="{{ url('manual-cheque-list/' . 1) }}">Manual Cheques</a>
                    </li>
                    <li class="topmenu hasSub no-js extrimg"
                        data-main="includes/templates/chequesplus/images/nav-images/quickbooks-cheques.png">
                        <a class="category-top" href="{{ url('laser-cheque') }}">Laser Cheques</a>
                    </li>
                    <li class="extrimg" data-main="">
                        <a class="category-top" href="/personal-cheques/order-cheques-online">Personal Cheques</a>
                    </li>
                    <li class="topmenu hasSub no-js extrimg"
                        data-main="includes/templates/chequesplus/images/nav-images/quickbooks-cheques.png">
                        <a class="category-top" href="/computerCheques">About Us</a>
                    </li>
                    <li class="topmenu hasSub no-js extrimg dropdown" data-main="">
                        <a href="login" class="my-auto category-top dropdown-toggle" type="button"
                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user fa-2x"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
                            <ul>
                                @guest
                                    <li><a class="dropdown-item" href="/login">Login</a></li>
                                @endguest
                                <li>
                                    @if (Auth::check() && Auth::user()->role === 'vendor')
                                        <a class="dropdown-item" href="{{ url('/customer-history') }}">Customers</a>
                                    @endif
                                </li>
                                <li>
                                    @if (Auth::check() && Auth::user()->role === 'vendor')
                                        <a class="dropdown-item" href="{{ url('/order-history') }}">Orders</a>
                                    @endif
                                </li>
                                @auth
                                    <li>
                                        <a class="category-top text-decoration-none dropdown-item" href="#"
                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>
                                        <form id="logout-form" method="POST" action="{{ route('logout') }}"
                                            style="display: none;">
                                            @csrf
                                        </form>
                                    </li>
                                @endauth
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
