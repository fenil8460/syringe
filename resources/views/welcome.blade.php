<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link href="https://fonts.googleapis.com/css2?family=Asap:wght@100;200;300;400;500;600;700;800;900&family=Montserrat:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="fonts/icomoon/style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
      <link rel="stylesheet" href="{{asset('css/owl.carousel.min.css')}}">
      <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
      <link rel="stylesheet" href="{{asset('css/style.css')}}">
      <link rel="stylesheet" href="{{asset('css/custom.css')}}">
      <title>The Syringe</title>
   </head>
   <body>
      <div class="site-mobile-menu site-navbar-target">
         <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
               <span class=" js-menu-toggle"><i class="fa fa-times"></i></span>               
            </div>
         </div>
         <div class="site-mobile-menu-body"></div>
      </div>
      <nav class="site-navbar site-navbar-target" role="banner">
         <div class="container">
            <div class="row align-items-center position-relative py-2">
               <div class="col-3 text-left order-1">
                  <div class="site-logo">
                     <a href="" class="font-weight-bold text-danger"><img src="{{ asset('/images/'. $website_infos->app_logo) }}" alt=""></a>
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
      
      <div class="hero-image">
         <img src="{{ asset('/images/'. $website_infos->main_image) }}" alt="" class="w-100">
         <div class="hero-text">
            <h1 class="display-5 fw-bold text-white"><span class="text-warning">Jobs</span> | <span class="text-danger">Healthcare</span> </h1>
            <h3 class="lead mb-4 pl-3 text-white">Explore Healthcare Jobs around the world together</h3>
         </div>
      </div>

      <section class="feature-categories">
         <div class="container">
            <div class="sec-title">
                <h2><span>Job </span>Categories</h2>
                <p>What Jobs are you looking for ?</p>
            </div>
            <div class="row">
                @foreach($skills as $skill)
                <div class="{{ $skill->sgm_id == 1 ? 'col-lg-12' : 'col-lg-4' }} col-lg-4 col-md-6 col-sm-6 px-2">
                    <!-- Image Box -->
                    <a href="{{ $skill->app_link }}" class="img-box hover-effect">
                        <img src="{{ asset('images/'.$skill->image) }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        <div class="listing-badges">
                            <span class="featured">text here</span>
                        </div>
                        <div class="img-box-content visible">
                            <h4 class="mb-3">{{ $skill->group_name }}</h4>
                            <span>{{ $skill->description }}</span>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
         </div>
      </section>

      <section class="feature-categories major-cities">
         <div class="container">
            <div class="sec-title">
                <h2><span>Major </span>Cities</h2>
                <p>Jobs available in major cities</p>
            </div>
            <div class="row">
                @foreach($majorCities as $key => $city)
                @php 
                  $col = '3';
                  if($key == 0 || $key == 5){
                     $col = '6';
                  } elseif($key > 5){
                     break;
                  }
                @endphp
                <div class="col-lg-{{ $col }} col-md-{{ $col }} px-2">
                    <!-- Image Box -->
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/'.$city->image) }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        <div class="listing-badges">
                            <span class="featured">text here</span>
                        </div>
                        <div class="img-box-content visible">
                            <h4 class="mb-3">{{ $city->city_name }}</h4>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>

            <div class="row justify-content-center">
               <a href="#" class="btn btn-outline-light mt-2">View All  <i class="fa fa-circle-arrow-right"></i></a>
            </div>
         </div>
      </section>


      <section class="feature-categories major-cities">
         <div class="container">
            <div class="sec-title">
                <h2><span>Employer </span>Settings</h2>
                <p>List of places where you can find work</p>
            </div>
            <div class="row">
                @if($employerSetting)
                <div class="col-lg-4 col-md-6 px-2">
                    <!-- Image Box -->
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/'.$employerSetting[0]->image) }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        <div class="img-box-content visible">
                            <h4 class="mb-3">{{ $employerSetting[0]->settings_name }}</h4>
                        </div>
                    </a>
                </div>
                
                <div class="col-lg-4 col-md-6 px-2 employer-image">
                    <!-- Image Box -->
                    <div class="row">
                        @foreach($employerSetting as $key => $setting)
                        @php 
                        if($key == 0){
                           continue;
                        } elseif($key > 4){
                           break;
                        }
                        @endphp
                        <div class="col-6">
                           <a href="#" class="img-box hover-effect">
                              <img src="{{ asset('images/'.$setting->image) }}" class="img-responsive" alt="">
                              <div class="overlay"></div>
                              <div class="img-box-content visible">
                                 <p class="mb-3 text-white"><strong>{{ $setting->settings_name }}</strong></p>
                              </div>
                           </a>
                        </div>
                        @endforeach
                    </div>
                    
                </div>


                <div class="col-lg-4 col-md-6 px-2">
                    
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/'.$employerSetting[5]->image) }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        <div class="img-box-content visible">
                            <h4 class="mb-3">{{ $employerSetting[5]->settings_name }}</h4>
                        </div>
                    </a>
                </div>
               @endif
            </div>

            <div class="row justify-content-center">
               <a href="#" class="btn btn-outline-light mt-2">View All  <i class="fa fa-circle-arrow-right"></i></a>
            </div>
         </div>
      </section>


      <section class="feature-categories who-uses">
         <div class="container">
            <div class="sec-title">
                <h2><span>Who will </span>use</h2>
                <p>Everyone in Healthcare</p>
            </div>
            <div class="row justify-content-center">
                
                <div class="col-lg-3 col-md-6 col-sm-6 px-2">
                    <!-- Image Box -->
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/jobseeker.jpg') }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        
                        <div class="img-box-content visible">
                            <h4 class="mb-3">Job Seekers</h4>
                            <button class="btn btn-job text-white rounded-0">Signup / Register</button>
                        </div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 px-2">
                    <!-- Image Box -->
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/employer.jpg') }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        
                        <div class="img-box-content visible">
                            <h4 class="mb-3">Employers</h4>
                            <button class="btn btn-employer text-white rounded-0">Open free account</button>
                        </div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 px-2">
                    <!-- Image Box -->
                    <a href="#" class="img-box hover-effect">
                        <img src="{{ asset('images/agency.jpg') }}" class="img-responsive" alt="">
                        <div class="overlay"></div>
                        
                        <div class="img-box-content visible">
                            <h4 class="mb-3">Agencies</h4>
                            <button class="btn btn-success rounded-0">Send Inquiry</button>
                        </div>
                    </a>
                </div>
               
            </div>
         </div>
      </section>
      
      <footer class="first-footer">
         <div class="top-footer">
            <div class="container">
               <div class="row">
                  <div class="widget col-lg-3 col-md-6">
                     <h3 class="widget-title pt-4">About {{ $website_infos->company_name }}</h3>
                     <div class="netabout">
                        <p class="pt-2">{{ $website_infos->app_description }}</p>
                     </div>
                     <div class="contactus">
                        <ul>
                           <li>
                              <div class="info">
                                 <i class="fa fa-map-marker" aria-hidden="true"></i>
                                 <p class="in-p">{{ $website_infos->location }}</p>
                              </div>
                           </li>
                           <li>
                              <div class="info">
                                 <i class="fa fa-phone" aria-hidden="true"></i>
                                 <p class="in-p">{{ $website_infos->mobile_number }}</p>
                              </div>
                           </li>
                           <li>
                              <div class="info">
                                 <i class="fa-brands fa-whatsapp" aria-hidden="true"></i>
                                 <p class="in-p">{{ $website_infos->whats_app }}</p>
                              </div>
                           </li>
                           <li>
                              <div class="info">
                                 <i class="fa fa-envelope" aria-hidden="true"></i>
                                 <p><a href="mailto:{{ $website_infos->email_id }}" class="in-p ti">{{ $website_infos->email_id }}</a></p>
                              </div>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="widget quick-link clearfix">
                        <h3 class="widget-title pt-4">Quick Links</h3>
                        <div class="quick-links">
                           <ul class="one-half mr-2 p-0">
                              <li><a href="#"> <i class="fa fa-angle-double-right fa-sm"></i> Job Categories</a></li>
                              <li><a href="#"><i class="fa fa-angle-double-right fa-sm"></i> Sign Up/Register</a></li>
                           </ul>
                           <ul class="one-half p-0">
                              <li><a href="#"><i class="fa fa-angle-double-right fa-sm"></i> Agencies</a></li>
                              <li><a href="#"><i class="fa fa-angle-double-right fa-sm"></i> Employers</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="widget pt-4">
                        <h3>Job Categories</h3>
                        <ul class="photo">
                           @foreach($skills as $skill)
                              <li class="hover-effect">
                                 <a href="{{ $skill->app_link }}" class="text-dark">{{ substr($skill->group_name, 0, 12) }}..</a>
                                 <figure>
                                       <a href="{{ $skill->app_link }}"><img src="{{ asset('images/'.$skill->image) }}" alt=""></a>
                                 </figure>
                              </li>
                           @endforeach
                        </ul>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="widget newsletters pt-4">
                        <h3>Jobseekers</h3>
                        <p>Sign Up and be part of our community of Healthcare Jobs around the world. Please type your email and press get started.</p>
                     </div>
                     <form class="bloq-email mailchimp form-inline" method="post" novalidate="true">
                        <label for="subscribeEmail" class="error"></label>
                        <div class="email">
                           <input type="email" id="subscribeEmail" name="EMAIL" placeholder="Enter Your Email">
                           <input type="button" value="Get started">
                           <p class="subscription-success"></p>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
         <div class="second-footer">
            <div class="container">
               <p class="mb-0">
                  <!-- <a href="#" class="text-white">Terms & Policies</a> &nbsp; <a href="#" class="text-white">Privacy Policy</a>.  -->
                  {{ $website_infos->copyright }}
               </p>
               <ul class="netsocials">
                  <li><a href="{{ $website_infos->facebook }}"><i class="fa-brands fa-facebook-f"></i></a></li>
                  <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                  <li><a href="{{ $website_infos->instagram }}"><i class="fa-brands fa-instagram"></i></a></li>
                  <li><a href="{{ $website_infos->youtube }}"><i class="fa-brands fa-youtube"></i></a></li>
               </ul>
            </div>
         </div>
      </footer>
      <div class="shop">
         <div class="item">
            <button class="btn btn-warning mr-2 py-2 px-4 top-button">Employers</button>
            <button class="btn btn-danger mr-1 py-2 px-4 top-button">Agencies</button>
         </div>
      </div>
      <a onclick='window.scrollTo({top: 0, behavior: "smooth"});' class="go-up" style="display: inline;">
      <i class="fa fa-angle-double-up" aria-hidden="true"></i>
      </a>
      <script src="{{ asset('js/jquery-3.3.1.min.js') }}"></script>
      <script src="{{ asset('js/popper.min.js') }}"></script>
      <script src="{{ asset('js/bootstrap.min.js') }}"></script>
      <script src="{{ asset('js/jquery.sticky.js') }}"></script>
      <script src="{{ asset('js/main.js') }}"></script>   
      <script>
         $(".hero").css({ height: $(window).height() + "px" });
         
         $(window).on("resize", function() {
         $(".hero").css({ height: $(window).height() + "px" });
         });
         
      </script>   
   </body>
</html>