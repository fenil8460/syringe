<nav class="site-navbar site-navbar-target" role="banner">
    <div class="container">
    <div class="row align-items-center position-relative py-2">
        <div class="col-3 text-left order-1">
            <div class="site-logo">
                <a href="{{ url('/') }}" class="font-weight-bold text-danger"><img src="{{ asset('/images/'. $website_infos->app_logo) }}" alt=""></a>
            </div>
        </div>
        <div class="col-5 ml-auto order-2 text-right d-none d-lg-block">
            <form class="navbar__search">
                <input class="form-control mr-sm-2" type="text" placeholder="Nurse , Physio, Therapist , Oncologist, Patient skill" aria-label="Search" id="product_name" data-autocompleturl="https://boozards.com/merchant-product/search">
                <button class="btn btn--search" type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>
        <div class="col-2 ml-auto order-2 text-right d-none d-lg-block">
            <div class="navbar__signup pr-4">
                <a href="" class="text-white">Sign Up / Register</a>
            </div>
        </div>
        <div class="col-6 ml-auto order-2 text-right d-lg-none d-sm-block d-xl-none">
            <div class="navbar__signup pr-4">
                <a href="" class="text-white">Sign Up / Register</a>
            </div>
        </div>
        
        <div class="col-2 ml-auto order-2 text-right">
            <span class="d-inline-block d-lg-block">
            <a href="#" class="text-black site-menu-toggle js-menu-toggle py-5">
                <span class="nav-bars">
                    <i class="fa fa-bars"></i>
                </span>
            </a>
            </span>
            <nav class="site-navigation text-right ml-auto d-none d-lg-none" role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto ">
                <li class="active"><a href="/" class="nav-link"><img src="{{ asset('/images/menu/menu-home.png') }}" alt="" class="w-20"> Home</a></li>
                <!-- <li><a href="about.html" class="nav-link"><img src="{{ asset('/images/menu/menu-merchants.png') }}" alt="" class="w-20"> Merchant</a></li> -->
                
                </ul>
            </nav>
        </div>

        <div class="col-11 mr-auto ml-auto order-2 mt-2 text-right d-lg-none d-sm-block d-xl-none">
            <form class="navbar__search">
                <input class="form-control mr-sm-2" type="text" placeholder="Nurse , Physio, Therapist , Oncologist, Patient skill" aria-label="Search" id="product_name" data-autocompleturl="https://boozards.com/merchant-product/search">
                <button class="btn btn--search" type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>
    </div>
    </div>
</nav>