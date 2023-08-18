@extends('Frontend.layouts.app')
@section('body')

    {{-- create internal link with search slug to see banner details --}}
    <section class="page-header">
        <div class="page-header-bg" style="background-image: url({{$defaults.'/banner.jpg'}})">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Search Results</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li>SEARCH</li>
                </ul>
            </div>
        </div>
    </section>


    <!--Contact Info Start-->
    <section class="contact-info">
        <div class="container">
            <div class="row" style="padding: 1em 0;">
                @if (count($result))
                <div class="col-xl-12 col-lg-12">
                    <div class="row">
                    @foreach ($result as $key => $res)
                        @if (count($res))
                            
                                @foreach ($res as $r)
                                <div class={{ $key == 'faqs' ? "col-xl-12 col-lg-12 wow fadeInUp" :  "col-xl-4 col-lg-4 wow fadeInUp"}} data-wow-delay="300ms" style="padding-top: 1em">
                                    <div class="blog-three__single" style="height: 100%;">
                                        <div class="blog-three__date">
                                            <p>{{Str::singular($key)}}</p>
                                        </div>
                                        <h3 class="blog-three__title"><a  href="/{{ $key == 'faqs' ? 'faq' : Str::singular($key).'/'}}{{$key == 'faqs' ? '' : $r->slug}}" target="_blank">{{$r->title}}</a></h3>
                                        @if ($key == 'faqs')
                                            <p class="blog-three__text">
                                                {{ strip_tags($r->answer) }}
                                            </p>
                                        @endif
                                    </div>
                                </div>    
                                @endforeach 
                        @endif
                    @endforeach
                </div>

                </div>   
                @else 
                    <h3 align='center' style="padding: 3.5em 0;">No Result Found</h3>
                @endif
            </div>
        </div>
    </section>
@endsection


@section('additional-css')
<link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" /> 
@endsection

@section('ajax-script')
<script src="{{asset('Frontend/assets/vendors/jquery-validate/jquery.validate.min.js')}}"></script>
<script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
<script src="{{asset('Frontend/assets/vendors/bootstrap-select/js/bootstrap-select.min.js')}}"></script>
<script src="{{asset('Frontend/assets/additional/contactus.js')}}"></script>
@endsection