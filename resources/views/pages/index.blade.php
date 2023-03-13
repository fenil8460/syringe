@extends('layouts.frontend')
@section('content')
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
            <p>What Job are you looking for ?</p>
        </div>
        <div class="row">
            @foreach($skills as $skill)
            <div class="{{ $skill->sgm_id == 1 ? 'col-lg-12' : 'col-lg-4' }} col-lg-4 col-md-6 col-sm-6 px-2">
                <!-- Image Box -->
                <a href="{{ route('jobCategory',$skill->slug) }}" class="img-box hover-effect">
                    <img src="{{ asset('images/'.$skill->image) }}" class="img-responsive" alt="">
                    <div class="overlay"></div>
                    <div class="listing-badges">
                        <span class="featured">{{ $skill->job_number }} Jobs</span>
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
                        <span class="featured">{{ $city->job_number }} Jobs</span>
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

    <section class="feature-categories employer-cities">
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
                    <div class="listing-badges">
                        <span class="featured">{{ $employerSetting[0]->job_number }} Jobs</span>
                    </div>
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
                            <div class="listing-badges">
                                <span class="featured">{{ $setting->job_number }} Jobs</span>
                            </div>
                            <div class="img-box-content visible">
                                <h6 class="mb-3 text-white"><strong>{{ $setting->settings_name }}</strong></h6>
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
                    <div class="listing-badges">
                        <span class="featured">{{ $employerSetting[5]->job_number }} Jobs</span>
                    </div>
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
                        <button class="btn btn-danger text-white rounded-0">Open free account</button>
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
@endsection