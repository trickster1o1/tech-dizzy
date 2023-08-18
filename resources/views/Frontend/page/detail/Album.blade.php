@extends('Frontend.layouts.app')
@section('body')

@include('Frontend.page.detail.banner.banner')
<section class="gallery-page">
    <div class="container">
        <div class="row">
            @if ($detail && count($galleries) > 0)
                @foreach ($galleries as $gallary)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="two-section__gallery-single">
                            <div class="two-section__gallery-img-inner">
                                <img src="{{'/'.$gallary->image_url}}" alt="{{$gallary->title}}" title="{{$gallary->title}}">
                                <p class="text-center text-success"><strong>{{$gallary->title}}</strong></p>
                            </div>
                            <div class="two-section__gallery-img-overly">
                                <div class="two-section__gallery-icon-bg" style="margin-bottom: 10px">
                                    <p class="text-white text-justify">{{$gallary->description}}</p>
                                </div>
                                @if($gallary->video_url && strlen(trim($gallary->video_url)))
                                <a href="{{$gallary->video_url}}" class="video-popup">
                                    <div class="tab-content__video-icon">
                                        <span class="fa fa-play"></span>
                                        <i class="ripple"></i>
                                    </div>
                                </a>
                                @else
                                <a class="img-popup" href="{{'/'.$gallary->image_url}}">
                                    <span class="icon-right-arrow"></span>
                                </a>
                                @endif
                            </div>
                        </div>
                    </div>    
                @endforeach                
            @else
                <h2 align='center'>There Are No Photos To Show Here.</h2>                
            @endif
        </div>
    </div>
</section>
<!--Gallery Page End-->


@endsection