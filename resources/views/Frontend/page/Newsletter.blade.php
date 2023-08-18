@extends('Frontend.layouts.app')
@section('body')
@include('Frontend.page.includes.page')
<section class="gallery-page">
    <div class="container">
        <div class="row">
            @if (count($page))
                @foreach ($page as $newsletter)
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="two-section__gallery-single">
                            <div class="two-section__gallery-img-inner">
                                <img src="/{{$newsletter->thumb ? $newsletter->thumb_image : 'uploads/defaults/thumb/banner.jpg'}}" alt="{{$newsletter->title}}" title="{{$newsletter->title}}">
                                <p class="text-center bg-success text-white rounded"><strong>{{$newsletter->title}}</strong></p>
                            </div>
                            <div class="two-section__gallery-img-overly">
                                <div class="two-section__gallery-icon-bg">
                                    <p class="text-center text-white rounded text-bold"><strong>{{$newsletter->title}}</strong></p>
                                </div>
                                @if ($newsletter->attachment && strpos($newsletter->attachment, 'http') !== false)
                                    <a href="{{$newsletter->description ? '/newsletter/'.$newsletter->slug : $newsletter->attachment}}"
                                        target = {{$newsletter->description ? '_self' : '_blank'}}
                                        >
                                    </a>
                                @else 
                                    <a href="{{$newsletter->description ? '/newsletter/'.$newsletter->slug : '/'.$newsletter->attachment}}"
                                        target = {{$newsletter->description ? '_self' : '_blank'}}
                                        >
                                    </a>
                                @endif
                                
                            </div>
                        </div>
                    </div>    
                @endforeach                        
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
            @else
                <h2 align='center'>There are No Newsletters Yet.</h2>                
            @endif
        </div>
    </div>
</section>
<!--Gallery Page End-->
@endsection