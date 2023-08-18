@extends('Frontend.layouts.app')
@section('body')
    {{-- banner --}}
    @include('Frontend.page.includes.page')
    {{-- ------ --}}

    <section class="volunteers-one">
        <div class="container">
            <div class="row">
                @if (count($page))
                @foreach ($page as $vol)
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <!--Volunteers One Single-->
                        <div class="volunteers-one__single">
                            <div class="volunteers-one__img">
                                <img src="{{$vol->image ? '/'.$vol->image : '/uploads/defaults/thumb/person-thumb.png'}}" alt="">
                                
                            </div>
                            <div class="volunteers-one__content">
                                <h4 class="volunteers-one__name">{{$vol->fullName}}</h4>
                                <p class="volunteers-one__title">{{$vol->occupation ? $vol->occupation : '-'}}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
                    
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
                @else 
                    <h2 align='center'>There are no volunteer right now</h2>
                @endif
                
            </div>
        </div>
    </section>

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
@endsection
@section('additional-css')
<link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" /> 
@endsection
@section('ajax-script')
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
@endsection