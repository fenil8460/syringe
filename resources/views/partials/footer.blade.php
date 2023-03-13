
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
      