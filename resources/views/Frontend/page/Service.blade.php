@extends('Frontend.layouts.app')
@section('body')
    {{-- Banner --}}
        @include('Frontend.page.includes.page')
    {{-- ------ --}}
    <!--We Believe Start-->
    <section class="we-believe">
        <div class="we-believe-map" style="background-image: url(/Frontend/assets/images/shapes/we-believe-map.png);"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    @if (count($page))
                    <ul class="list-unstyled we-believe__list">
                        @foreach ($page as $service)
                        <li class="we-believe__single wow fadeInUp" data-wow-delay="100ms" style="margin-bottom:60px">
                            <div class="we-believe__icon">
                                @if(strlen(trim($service->icon_class)) > 0){
                                    <span class="{{$service->icon_class}}"></span>
                                @else
                                    <span>
                                        @if(file_exists($service->thumb_image))
                                            <img src="{{url($service->thumb_image)}}" alt="{{$service->title}}" alt="{{$service->title}}">
                                        @endif
                                    </span>
                                @endif                            
                            </div>
                            <h3 class="we-believe__title"><a href="/service/{{$service->slug}}">{{$service->title;}}</a></h3>
                            @if($service->short_description)
                            <p class="we-believe__text">{{strip_tags($service->short_description) }}</p>
                            @endif
                        </li> 
                        @endforeach
                    </ul>
                    @if($page->links())
                    <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                        {{$page->links()}}
                    </div>
                    @endif
                    @else
                        <h2 align='center'>No services found.</h2>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!--We Believe End-->
@endsection