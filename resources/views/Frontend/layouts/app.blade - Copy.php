<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--SEO DETAIL BEGINS-->
    <title>{{isset($meta_title)?$meta_title:''}}</title>
    <meta name="description" content="{{isset($meta_description)?$meta_description:''}}">
    <meta property="og:site_name" content="{{$siteSetting->title}}"/>
    <meta property="og:image" content="{{isset($fb_image)?$fb_image:''}}"/>
    <meta property="og:image:secure_url" content="{{isset($fb_image)?$fb_image:''}}"/>
    <meta property="og:title" content="{{isset($fb_title)?$fb_title:''}}"/>
    <meta property="og:description" content="{{isset($fb_description)?$fb_description:''}}"/>
    <meta name="twitter:card" content="summary_large_image"/>
    <meta name="twitter:site" content="{{url('')}}"/>
    <meta name="twitter:description" content="{{isset($twitter_description)?$twitter_description:''}}"/>
    <meta property="twitter:image" content="{{isset($twitter_image)?$twitter_image:''}}"/>
    <meta property="twitter:title" content="{{isset($twitter_title)?$twitter_title:''}}"/>
    <!--SEO DETAIL ENDS-->
   
    <!-- favicons Icons -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('Frontend/assets/images/favicons/apple-touch-icon.png')}}" />
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('Frontend/assets/images/favicons/favicon-32x32.png')}}" />
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('Frontend/assets/images/favicons/favicon-16x16.png')}}" />
    <link rel="manifest" href="{{asset('Frontend/assets/images/favicons/site.webmanifest')}}" />

    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">

    <link
        href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&family=Fredoka+One&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/bootstrap/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/animate/animate.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/animate/custom-animate.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/fontawesome/css/all.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/jarallax/jarallax.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/jquery-magnific-popup/jquery.magnific-popup.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/nouislider/nouislider.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/nouislider/nouislider.pips.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/odometer/odometer.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/swiper/swiper.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/main-icons/style.css')}}">
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/tiny-slider/tiny-slider.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/reey-font/stylesheet.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/owl-carousel/owl.carousel.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/owl-carousel/owl.theme.default.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/bxslider/jquery.bxslider.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/bootstrap-select/css/bootstrap-select.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/vegas/vegas.min.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/jquery-ui/jquery-ui.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/timepicker/timePicker.css')}}" />
     <!-- CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

     <!-- jQuery -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- Share JS -->
     <script src="{{ asset('js/share.js') }}"></script>


    <link rel="stylesheet" href="{{asset('Frontend/assets/css/mediashare.css')}}" />

    <link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" />


    <!-- template styles -->
    <link rel="stylesheet" href="{{asset('Frontend/assets/css/main.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/css/main-responsive.css')}}" />
    <link rel="stylesheet" href="{{asset('Frontend/assets/additional/additional.css') }}" />
    @yield('additional-css')
<body>
    <div class="preloader">
        @if(isset($siteSetting->loader) && $siteSetting->loader)
        <img class="preloader__image" width="100" src="/{{$siteSetting->loader}}" alt="{{$siteSetting->title}} Loader" title="{{$siteSetting->title}} Loader">
        @else
        <img class="preloader__image" width="400" src="/uploads/defaults/loader.gif" alt="{{$siteSetting->title}} Loader" title="{{$siteSetting->title}} Loader">
        @endif  
    </div>
    <div class="page-wrapper">
        <header class="main-header clearfix">
            <div class="main-header__top">
                <div class="main-header__top-left">
                    <p class="main-header__top-text">{{$siteSetting->title}}</p>
                    <div class="main-header__top-social">
                        @php returnMedia($siteSetting) @endphp
                    </div>
                </div>
                @if($siteSetting->email || $siteSetting->pri_phone)
                <div class="main-header__top-right">
                    <ul class="list-unstyled main-header__top-address">
                        @if($siteSetting->pri_address)
                        <li>
                            <div class="icon">
                                <span class="icon-telephone"></span>
                            </div>
                            <div class="text">
                                <p><a href="{{'tel:'.$siteSetting->pri_phone}}">{{$siteSetting->pri_phone}}</a></p>
                            </div>
                        </li>
                        @endif
                        @if($siteSetting->pri_email)
                        <li>
                            <div class="icon">
                                <span class="icon-email"></span>
                            </div>
                            <div class="text">
                                <p><a href="{{'mailto:'.$siteSetting->email}}">{{$siteSetting->pri_email}}</a></p>
                            </div>
                        </li>
                        @endif
                    </ul>
                </div>
                @endif
            </div>
            <nav class="main-menu clearfix">
                <div class="main-menu-wrapper clearfix">
                    <div class="main-menu-wrapper__left">
                        <div class="main-menu-wrapper__logo">
                            @if($siteSetting->primary_logo)
                            <a href="/"><img src="/{{$siteSetting->primary_logo}}" alt="{{$siteSetting->title}}" title="{{$siteSetting->title}}"></a>
                            @else
                            <a href="/"><img src="/uploads/defaults/logo.png" alt="{{$siteSetting->title}}" title="{{$siteSetting->title}}"></a>
                            @endif                            
                        </div>
                    </div>
                    <div class="main-menu-wrapper__main-menu">
                        <a href="#" class="mobile-nav__toggler"><i class="fa fa-bars"></i></a>
                        {!!$main_menu!!}
                    </div>
                    <div class="main-menu-wrapper__right">
                        <div class="main-menu-wrapper__search-cat">
                            <a href="#" class="main-menu-wrapper__search search-toggler icon-magnifying-glass"></a>
                        </div>
                        <a href="/donate-now" class="donate-btn main-menu-wrapper__btn"> <i class="fa fa-heart"></i>
                            Donate Now</a>
                    </div>
                </div>
            </nav>
        </header>
        <div class="stricky-header stricked-menu main-menu">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->


       <div class="show-link">
        <span class="sh-cont">
            <i class="fa fa-share-alt share-icon"></i>
        </span>
        {!! $shareButtons1 !!}

       </div>
        @yield('body')
        

     <!--Site Footer Start-->
     <footer class="site-footer">
        <div class="site-footer-bg">
        </div>
        <div class="site-footer__top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="100ms">
                        <div class="footer-widget__column footer-widget__about">
                            <div class="footer-widget__about-text-box">
                                <p class="footer-widget__about-text">Your Donations can Change their Daily Life
                                    Style</p>
                            </div>
                            <a href="/donate-now" class="donate-btn footer-donate__btn"> <i
                                    class="fa fa-heart"></i>
                                Donate Now</a>
                        </div>
                    </div>

                    {!!$footer_menu!!}

                    <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                        <div class="footer-widget__column footer-widget__contact clearfix">
                            <h3 class="footer-widget__title">Contact</h3>
                            <ul class="list-unstyled footer-widget__contact-list">
                                @if ($siteSetting->pri_email)
                                <li>
                                    <div class="icon">
                                        <span class="icon-email"></span>
                                    </div>
                                    <div class="text">
                                        <a href="mailto:{{$siteSetting->pri_email}}">{{$siteSetting->pri_email}}</a>
                                    </div>
                                </li>
                                @endif
                               
                                @if($siteSetting->pri_phone)
                                <li>
                                    <div class="icon">
                                        <span class="icon-telephone"></span>
                                    </div>
                                    <div class="text">
                                        <a href="tel:{{$siteSetting->pri_phone}}">{{$siteSetting->pri_phone}}</a>
                                    </div>
                                </li>
                                @endif                                
                                @if($siteSetting->pri_address)
                                <li>
                                    <div class="icon">
                                        <span class="icon-pin"></span>
                                    </div>
                                    <div class="text">
                                        <p>{!!$siteSetting->pri_address!!}</p>
                                    </div>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-footer__bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="site-footer__bottom-inner">
                            <p class="site-footer__bottom-text">© Copyright 2022 by <a href="#">{{$siteSetting->title}}</a>
                            </p>
                            <div class="site-footer__social">
                                @php returnMedia($siteSetting) @endphp
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--Site Footer End-->

    </div>

    {{-- mobile nav --}}
    <div class="mobile-nav__wrapper">
        <div class="mobile-nav__overlay mobile-nav__toggler"></div>
        <!-- /.mobile-nav__overlay -->
        <div class="mobile-nav__content">
            <span class="mobile-nav__close mobile-nav__toggler"><i class="fa fa-times"></i></span>

            <div class="logo-box">
                @if($siteSetting->secondary_logo)
                <a href="/"><img src="/{{$siteSetting->secondary_logo}}" alt="{{$siteSetting->title}}" title="{{$siteSetting->title}}"></a>
                @else
                <a href="/"><img src="/uploads/defaults/mobile_logo.png" alt="{{$siteSetting->title}}" title="{{$siteSetting->title}}"></a>
                @endif 
            </div>
            <!-- /.logo-box -->
            <div class="mobile-nav__container"></div>
            <!-- /.mobile-nav__container -->

            <ul class="mobile-nav__contact list-unstyled">
                @if($siteSetting->pri_email)
                <li>
                    <i class="fa fa-envelope"></i>
                    <a href="mailto:{{$siteSetting->pri_email}}">{{$siteSetting->pri_email}}</a>
                </li>
                @endif
                @if($siteSetting->pri_phone)
                <li>
                    <i class="fa fa-phone-alt"></i>
                    <a href="tel:{{$siteSetting->pri_phone}}">{{$siteSetting->pri_phone}}</a>
                </li>
                @endif
            </ul><!-- /.mobile-nav__contact -->
            <div class="mobile-nav__top">
                <div class="mobile-nav__social">
                    @php returnMedia($siteSetting) @endphp
                </div><!-- /.mobile-nav__social -->
            </div><!-- /.mobile-nav__top -->



        </div>
        <!-- /.mobile-nav__content -->
    </div>
    <!-- /.mobile-nav__wrapper -->

    <div class="search-popup">
        <div class="search-popup__overlay search-toggler"></div>
        <!-- /.search-popup__overlay -->
        <div class="search-popup__content">
            <form action="/search" method="POST">
                <label for="search" class="sr-only">search here</label><!-- /.sr-only -->
                <input type="text" id="search" placeholder="Search Here..." />
                <button type="submit" aria-label="search submit" class="thm-btn">
                    <i class="icon-magnifying-glass"></i>
                </button>
            </form>
        </div>
        <!-- /.search-popup__content -->
    </div>
    <!-- /.search-popup -->
    @include('Frontend.page.popup')

    <a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>

    

    <script src="{{asset('Frontend/assets/vendors/jquery/jquery-3.6.0.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
    <script src="{{asset('Frontend/assets/vendors/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jarallax/jarallax.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-ajaxchimp/jquery.ajaxchimp.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-appear/jquery.appear.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-circle-progress/jquery.circle-progress.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-magnific-popup/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-validate/jquery.validate.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/nouislider/nouislider.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/odometer/odometer.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/swiper/swiper.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/tiny-slider/tiny-slider.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/wnumb/wNumb.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/wow/wow.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/isotope/isotope.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/countdown/countdown.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/owl-carousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/bxslider/jquery.bxslider.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/bootstrap-select/js/bootstrap-select.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/vegas/vegas.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-ui/jquery-ui.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/timepicker/timePicker.js')}}"></script>
    @yield('ajax-script')
    <script type="text/javascript">
        if($('.checkstaticBackdrop').length > 0){
            if (typeof Storage !== "undefined") {
                if (sessionStorage.getItem("isPopUp") == null) {
                    $('.checkstaticBackdrop').each(function(i,e){
                        var id = $(this).attr('id');
                        var myModal = new bootstrap.Modal(document.getElementById(id));
                        myModal.show();
                    });
                    sessionStorage.setItem("isPopUp", "1");
                } else {
                    $('.checkstaticBackdrop').each(function(i,e){
                        var id = $(this).attr('id');
                        var myModal = new bootstrap.Modal(document.getElementById(id));
                        myModal.hide();
                    });
                }
            } else {
                $('.checkstaticBackdrop').each(function(i,e){
                    var id = $(this).attr('id');
                    var myModal = new bootstrap.Modal(document.getElementById(id));
                    myModal.show();
                });
            }
        }
    </script>
    <!-- template js -->
    <script src="{{asset('Frontend/assets/js/main.js')}}"></script>
</body>

</html>



