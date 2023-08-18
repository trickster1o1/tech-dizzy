@extends('Frontend.layouts.app')
@section('body')
@include('Frontend.page.includes.page')
<section class="gallery-page">
    <div class="container">
        <div class="row">
            @if (count($page))
                @foreach ($page as $album)
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="two-section__gallery-single">
                            <div class="two-section__gallery-img-inner">
                                <img src="{{$album->thumb_image}}" alt="{{$album->title}}" title="{{$album->title}}">
                                <p class="text-center bg-success text-white rounded"><strong>{{$album->title}}</strong></p>
                            </div>
                            <div class="two-section__gallery-img-overly">
                                <div class="two-section__gallery-icon-bg">
                                    <p class="text-center text-white rounded text-bold"><strong>{{$album->title}}</strong></p>
                                </div>
                                <a href="{{'/album/'.$album->slug}}">
                                </a>
                            </div>
                        </div>
                    </div>    
                @endforeach                        
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
            @else
                <h2>There are No Albums Yet.</h2>                
            @endif
        </div>
    </div>
</section>
<!--Gallery Page End-->
@endsection