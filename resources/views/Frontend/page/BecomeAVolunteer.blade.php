@extends('Frontend.layouts.app')
@section('body')

 <!--Page Header Start-->
 @include('Frontend.page.includes.page')
<!--Page Header End-->
<section class="become-volunteer">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6">
                <div class="become-volunteer__Left">
                    <div class="become-volunteer__images">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="become-volunteer__img-single">
                                    <img src="{{  $linkData ? $linkData->thumb_image : '/uploads/defaults/thumb/thumb.png'}}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="become-volunteer__content">
                        <h3 class="become-volunteer__title">{{$linkData ?  $linkData->tagline : '' }}</h3>
                        <p class="become-volunteer__text">{!! $linkData ?  $linkData->description : '' !!}</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="become-volunteer__rightevent">
                    <form action="/volunteer/submit" class="beceventrm" id='volunteer-form' method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="become-volunteer__input text-end">
                                    <input type="text" placeholder="Your Name" id="fullName" name="fullName">
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__input text-end">
                                    <input type="email" placeholder="Email Address" id="email" name="email">
                            
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__input text-end">
                                    <input type="text" placeholder="Phone Number" id="number" name="number">
                                
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__input text-end">
                                    <input type="text" placeholder="Address"  id="address" name="address">
                                
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__input text-end">
                                    <input type="text" placeholder="Occupation" id="occupation" name="occupation">
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__input become-volunteer__message-box text-end">
                                    <textarea name="message"  id="message" placeholder="Write a Comment"></textarea>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="become-volunteer__btn-box">
                                    <button type="submit" class="thm-btn become-volunteer__btn" id="volunteer-submit">Send us a
                                        message</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@section('additional-css')
<link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" /> 
@endsection

@section('ajax-script')
<script src="{{asset('Frontend/assets/vendors/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('Frontend/assets/vendors/jquery-validate/jquery.validate.min.js')}}"></script>
<script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
<script src="{{asset('Frontend/assets/vendors/bootstrap-select/js/bootstrap-select.min.js')}}"></script>
<script src="{{asset('Frontend/assets/additional/volunteer.js')}}"></script>
@endsection