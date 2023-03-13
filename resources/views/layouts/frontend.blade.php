<!doctype html>
<html lang="en">
   @include('partials.header')
   <body>
      <div class="site-mobile-menu site-navbar-target">
         <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
               <span class=" js-menu-toggle"><i class="fa fa-times"></i></span>               
            </div>
         </div>
         <div class="site-mobile-menu-body"></div>
      </div>
      @include('partials.navbar')

      @yield('content')
      
      @include('partials.footer')
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
      <script src="{{ asset('js/slick.min.js') }}"></script>
      <script src="{{ asset('js/slick2.js') }}"></script>

      <script src="{{ asset('js/main.js') }}"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>  
      <script>
         $(".hero").css({ height: $(window).height() + "px" });
         
         $(window).on("resize", function() {
         $(".hero").css({ height: $(window).height() + "px" });
         });


         $('.owl-carousel').owlCarousel({
            loop:true,
            margin:5,
            nav:false,
            dots:false,
            responsive:{
               0:{
                  items:1,
                  stagePadding: 25
               },
               600:{
                     items:4
               },
               1000:{
                     items:4
               }
            }
         })
         
      </script>   
   </body>
</html>