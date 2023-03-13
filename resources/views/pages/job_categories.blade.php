@extends('layouts.frontend')
@section('content')
<section class="headings" style="background: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url({{ asset('images/'.$skill->image) }}) no-repeat center center;">
    <div class="text-heading">
        <div class="container">
            <div class="bread">
                <h3 class="text-white">{{ $skill->group_name }}</h3>
                <p class="text-white">{{ $skill->description }}</p>
            </div>
        </div>
    </div>
</section>

<section class="feature-categories">
   <div class="container-fluid">
        <div class="sec-title">
            <h2><span>Select Job </span>Category</h2>
        </div>
      
        <div class="row">
            <div class="col-8">
                <h5 class="pl-1">Icu Nurse Jobs (12)</h5>
            </div>
            <div class="col-4">
                <h6 class="pr-1 float-right">View All</h6>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                
                <div id="news-slider10" class="owl-carousel owl-theme">
                    @foreach($jobCategory as $job)

                    
                    <div class="post-slide8">
                        
                        <div class="post-image">
                            <img class="pic-1" src="{{ asset('images/'.$job->main_image) }}">
                            <div class="post-date">
                                <span class="view">View Job</span>
                            </div>
                            
                        </div>
                        <h3 class="post-title">
                        <div class="post-icons">
                                <span class="share"><i class="fa fa-share-nodes"></i></span>
                                <span class="like"><i class="fa-regular fa-heart"></i></span>
                            </div>
                            <div class="container-fluid">
                            <div class="row">
                                <div class="col-2">
                                    <img src="{{ asset('images/'.$job->logo) }}" style="width:34px">
                                </div>
                                <div class="col-10 p-1">
                                    <span>{{ $job->name }}
                                        <br>
                                        {{ $job->town_id }} | <span class="text-danger">{{ $job->kms }}</span> away
                                    </span>
                                    
                                </div>
                            </div>
                            </div>
                                
                        </h3>                    
                    </div>
                    
                    @endforeach
                    
                </div>
            </div>
        </div>

        <div class="mt-5"></div>

        <!-- <div class="row">
            <div class="col-6">
                <h5 class="pl-1">Icu Nurse Jobs (12)</h5>
            </div>
            <div class="col-6">
                <h6 class="pr-1 float-right">View All</h6>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div id="news-slider10" class="owl-carousel owl-theme">
                    @foreach($skills as $allcourses)
                    <div class="post-slide8">
                        <div class="post-image">
                            <img class="pic-1" src="/images/hospital.jpg">
                            <div class="post-date">
                                <span class="view">View Job</span>
                            </div>
                            <div class="post-icons">
                                <span class="share"><i class="fa fa-share-nodes"></i></span>
                                <span class="like"><i class="fa-regular fa-heart"></i></span>
                            </div>
                        </div>
                        <h3 class="post-title">
                            <div class="row">
                                <div class="col-2">
                                    <img src="https://www.concordhospital.org/favicon-32x32.png" style="width:34px">
                                </div>
                                <div class="col-10">
                                    <span>Lorem ipsum dolor sit.
                                        <br>
                                        Lorem ipsum | <span class="text-danger">2kms</span> away
                                    </span>
                                    
                                </div>
                            </div>
                                
                        </h3>                    
                    </div>
                    <div class="post-slide8">
                        <div class="post-image">
                            <img class="pic-1" src="/images/hospital.jpg">
                            <div class="post-date">
                                <span class="view">View Job</span>
                            </div>
                            <div class="post-icons">
                                <span class="share"><i class="fa fa-share-nodes"></i></span>
                                <span class="like"><i class="fa-regular fa-heart"></i></span>
                            </div>
                        </div>
                        <h3 class="post-title">
                            <div class="row">
                                <div class="col-2">
                                    <img src="https://www.concordhospital.org/favicon-32x32.png" style="width:34px">
                                </div>
                                <div class="col-10">
                                    <span>Lorem ipsum dolor sit.
                                        <br>
                                        Lorem ipsum | <span class="text-danger">2kms</span> away
                                    </span>
                                    
                                </div>
                            </div>
                                
                        </h3>                    
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </div> -->
   </div>
</section>



@endsection