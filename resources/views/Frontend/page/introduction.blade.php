@extends('Frontend.layouts.app')
@section('body')
<style>
    .rowing {
        --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    /* display: flex; */
    /* flex-wrap: wrap; */
    margin-top: calc(var(--bs-gutter-y) * -1);
    margin-right: calc(var(--bs-gutter-x)/ -2);
    margin-left: calc(var(--bs-gutter-x)/ -2);
    display: inline-block;
    }
    .about-page__img > img {
        max-width:530px;
    } .about-page {
        padding-bottom: 20px;
    }
</style>
    {{-- Banner --}}
        @include('Frontend.page.includes.page')
    {{-- ------ --}}
    @if ($page)
        <section class="about-page">
            <div class="container">
                <div class="rowing">
                    <div  style="float: left;">
                        <div class="about-page__left wow slideInLeft" data-wow-delay="100ms" data-wow-duration="2500ms">
                            <div class="about-page__img">
                                <img src="/{{$page->thumb_image ? $page->thumb_image : 'uploads/default/thumb/program.png'}}" alt="{{$page->title}}" title="{{$page->title}}">
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="about-page__right">
                            <div class="section-title text-left">
                                <span class="section-title__tagline">{{$page->tagline}}</span>
                                <h2 class="section-title__title">{{$page->title}}</h2>
                            </div>
                            {!! $page->description !!}
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--About Page End-->
        @if (count($supporters))
            <!--Brand One Start-->
            <section class="brand-one">
                <div class="container">
                    <div class="thm-swiper__slider swiper-container" data-swiper-options='{"spaceBetween": 100, "slidesPerView": 5, "autoplay": { "delay": 5000 }, "breakpoints": {
                        "0": {
                            "spaceBetween": 30,
                            "slidesPerView": 2
                        },
                        "375": {
                            "spaceBetween": 30,
                            "slidesPerView": 2
                        },
                        "575": {
                            "spaceBetween": 30,
                            "slidesPerView": 3
                        },
                        "767": {
                            "spaceBetween": 50,
                            "slidesPerView": 4
                        },
                        "991": {
                            "spaceBetween": 50,
                            "slidesPerView": 5
                        },
                        "1199": {
                            "spaceBetween": 100,
                            "slidesPerView": 5
                        }
                    }}'>
                        <div class="swiper-wrapper">
                            @foreach ($supporters as $supporter)
                                <div class="swiper-slide">
                                    <img src="/{{$supporter->logo}}" alt="{{$supporter->title}}" title="{{$supporter->title}}">
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </section>
            <!--Brand One End-->
        @endif
        

        @if (count($tabs))
            @include('Frontend.home.tab',[$data=$tabs])    
        @endif

        @if ($page->second_banner_title)
            <!--Fundraising Start-->
            <section class="fundraishing">
                <div class="fundraishing-bg-box">
                    <div class="fundraishing-bg jarallax" data-jarallax data-speed="0.2" data-imgPosition="50% 0%"
                        style="background-image: url(/{{$page->second_banner_image}});"></div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="fundraishing__inner">
                                @if ($page->second_banner_tagline)
                                <p class="fundraishing__sub-title">{{$page->second_banner_tagline}}</p>                                    
                                @endif
                                <h2 class="fundraishing__title">{!! $page->second_banner_title !!}</h2>
                                @if ($page->second_banner_button_title)
                                    <div class="fundraishing__btn-box">
                                        <a href="{{$page->second_banner_button_link}}" class="thm-btn fundraishing__btn">{{$page->second_banner_button_title}}</a>
                                    </div>    
                                @endif
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Fundraising End-->
    
        @endif
        @if (count($testimonials))
            <!--Testimonial Three Start-->
            <section class="testimonial-two testimonial-three">
                <div class="testimonial-two-bg"
                    style="background-image: url(/Frontend/assets/images/backgrounds/testimonial-two-bg.png);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="testimonial-two__left">
                                <div class="section-title text-left">
                                    <span class="section-title__tagline">{{$page->testimonial_tagline ? $page->testimonial_tagline : 'our testimonials'}}</span>
                                    <h2 class="section-title__title">{{$page->testimonial_title ? $page->testimonial_title : 'What They’re Talking About Company?'}}</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
                            <div class="testimonial-two__right">
                                <div class="testimonial-two__carousel owl-carousel owl-theme">
                                    
                                    @foreach ($testimonials as $testimonial)
                                        <div class="testimonial-two__single">
                                            <div class="testimonial-two__content">
                                                <div class="testimonial-two__quote">
                                                    <span class="icon-quote"></span>
                                                </div>
                                                <p class="testimonial-two__text">{!! $testimonial->message !!}.</p>
                                            </div>
                                            <div class="testimonial-two__client-info">
                                                <div class="testimonial-two__client-img">
                                                    <img src="/{{$testimonial->image ? $testimonial->image : 'uploads/defaults/thumb/person.png'}}" alt="{{$testimonial->name}}" title="{{$testimonial->name}}">
                                                </div>
                                                <div class="testimonial-two__client-details">
                                                    <h5 class="testimonial-two__client-name">{{$testimonial->name}}</h5>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Testimonial Three End-->
        @endif
        
        @if (count($volunteers))
            <section class="volunteers-one">
                <div class="container">
                    <div class="section-title text-center">
                        <span class="section-title__tagline">{{$page->volunteer_tagline ? $page->volunteer_tagline : 'Ready to help you'}}</span>
                        <h2 class="section-title__title">{{$page->volunteer_title ? $page->volunteer_title : 'Happy Volunteers'}}</h2>
                    </div>
                    <div class="row">
                        @foreach ($volunteers as $volunteer)
                            <div class="col-xl-3 col-lg-3 wow fadeInUp" data-wow-delay="100ms">
                                <!--Volunteers One Single-->
                                <div class="volunteers-one__single">
                                    <div class="volunteers-one__img">
                                        <img src="/{{$volunteer->image ? $volunteer->image : 'uploads/defaults/thumb/person.jpg'}}" alt="{{$volunteer->fullName}}" title="{{$volunteer->fullName}}">
                                        <div class="volunteers-one__social d-none">
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                            <a href="#"><i class="fab fa-facebook"></i></a>
                                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    <div class="volunteers-one__content">
                                        <h4 class="volunteers-one__name">{{$volunteer->fullName}}</h4>
                                        <p class="volunteers-one__title">{{$volunteer->occupation ? $volunteer->occupation : '-'}}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        
                    </div>
                </div>
            </section>    
            
         
        @endif
 <!--CTA One Start-->
 <section class="cta-one">
    <div class="cta-one-shape" style="background-image: url(/Frontend/assets/images/shapes/cta-one-shape.png);"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="cta-one__inner">
                    <div class="cta-one__left">
                        <div class="cta-one__icon">
                            <span class="icon-support"></span>
                        </div>
                        <h2 class="cta-one__title">Let’s Make a Difference in <br> the Lives of Others</h2>
                    </div>
                    <div class="cta-one__right">
                        <a href="/become-a-volunteer" class="thm-btn cta-one__btn">become a volunteer</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>      
    @else
        <section class="about-page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <h2 align='center'>No Information To Display</h2>
                    </div>
                </div>
            </div>
        </section>
    @endif
    
@endsection

@section('additional-css')
<link rel="stylesheet" href="{{asset('Frontend/assets/vendors/odometer/odometer.min.css')}}" />
<link rel="stylesheet" href="{{asset('Frontend/assets/vendors/swiper/swiper.min.css')}}" />
<link rel="stylesheet" href="{{asset('Frontend/assets/vendors/owl-carousel/owl.carousel.min.css')}}" />
@endsection
@section('ajax-script')
<script src="{{asset('Frontend/assets/vendors/swiper/swiper.min.js')}}"></script>
<script src="{{asset('Frontend/assets/vendors/owl-carousel/owl.carousel.min.js')}}"></script>
<script src="{{asset('Frontend/assets/vendors/odometer/odometer.min.js')}}"></script>
<script src="{{asset('Frontend/assets/vendors/jarallax/jarallax.min.js')}}"></script>
@endsection