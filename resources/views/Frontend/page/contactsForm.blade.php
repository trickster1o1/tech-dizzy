@extends('Frontend.layouts.app')
@section('body')
    @include('Frontend.page.includes.page')
    <section class="contact-page">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-5">
                    <div class="contact-page__left">
                        <div class="section-title text-left">
                            <span class="section-title__tagline">{{$linkData ? $linkData->tagline : ''}}</span>
                            <h2 class="section-title__title">{{$linkData ? $linkData->title : 'Contact Us'}}</h2>
                        </div>
                        <p class="contact-page__text">{!!$linkData?$linkData->description:''!!}</p>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-7">
                    <div class="contact-page__right">
                        <form method="POST" action="contact-us/submit" class="comment-one__form"
                             id="contact-us-form" autocomplete="off">
                             @csrf
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box text-end">
                                        <input type="text" placeholder="Your Name" name="fullName" id="fullName">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box text-end">
                                        <input type="email" placeholder="Email Address" name="email" id="email">

                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box text-end">
                                        <input type="text" placeholder="Phone Number" name="number" id="number">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box text-end">
                                        <input type="text" placeholder="Subject" name="subject" id="subject">    
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="comment-form__input-box text-message-box text-end">
                                        <textarea name="message" placeholder="Write a Comment" id="message"></textarea>
                                    </div>
                                    <div class="comment-form__btn-box">
                                        <button type="submit" class="thm-btn comment-form__btn" id="contact-us-submit">Send us a message</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--Contact Info Start-->
    <section class="contact-info">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4">
                    <!--Contact Info Single-->
                    <div class="contact-info__single">
                        <h4 class="contact-info__title">Office Address</h4>
                        <p class="contact-info__text">{!!strip_tags($siteSetting->pri_address)!!}</p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <!--Contact Info Single-->
                    <div class="contact-info__single contact-info__single-2">
                        <h4 class="contact-info__title">Email Address</h4>
                        <p class="contact-info__email-phone">
                            <a href="mailto:{{$siteSetting->pri_email}}"
                                class="contact-info__email">{{$siteSetting->pri_email}}</a>
                            @if($siteSetting->sec_email && strlen(trim($siteSetting->sec_email)))
                                @php
                                    $emails = explode(',',$siteSetting->sec_email);
                                @endphp
                                @if(count($emails) > 0)
                                    @foreach($emails as $email)
                                        <a href="mailto:{{$email}}" 
                                        class="contact-info__email">{{$email}}</a>
                                    @endforeach   
                                @endif
                            @endif
                        </p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <!--Contact Info Single-->
                    <div class="contact-info__single contact-info__single-3">
                        <h4 class="contact-info__title">Contact Number</h4>
                        <p class="contact-info__email-phone">
                            <a href="tel:{{$siteSetting->pri_phone}}" class="contact-info__phone">{{$siteSetting->pri_phone}}</a>
                             @if($siteSetting->sec_phone && strlen(trim($siteSetting->sec_phone)))
                                @php
                                    $phones = explode(',',$siteSetting->sec_phone);
                                @endphp
                                @if(count($phones) > 0)
                                    @foreach($phones as $phone)
                                        <a href="tel:{{$phone}}" 
                                        class="contact-info__phone">{{$phone}}</a>
                                    @endforeach   
                                @endif
                            @endif
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Contact Info End-->

    <!--Contact page Google Map Start-->

    @if($siteSetting)
    <section class="contact-page-google-map">
        {!! $siteSetting->google_map_html !!}
    </section>
    @endif
    <!--Google Map End-->
@endsection


@section('additional-css')
<link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" /> 
@endsection

@section('ajax-script')
<script src="{{asset('Frontend/assets/vendors/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('Frontend/assets/vendors/jquery-validate/jquery.validate.min.js')}}"></script>
<script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
<script src="{{asset('Frontend/assets/vendors/bootstrap-select/js/bootstrap-select.min.js')}}"></script>
<script src="{{asset('Frontend/assets/additional/contactus.js')}}"></script>
@endsection