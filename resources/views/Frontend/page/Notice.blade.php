@extends('Frontend.layouts.app')
@section('body')
    

 <!--Page Header Start-->
 @include('Frontend.page.includes.page')
<!--Page Header End-->
<!--Blog Page Start-->
<section class="blog-page">
    <div class="container">
        <div class="row">
            @if (count($page))
                @foreach ($page as $notice)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <!--Blog One single-->
                        <div class="blog-one__single">
                            <div class="blog-one__img">
                                <img src="{{$notice->thumb_image ? $notice->thumb_image : $defaults.'thumb/blog.jpg'}}" alt="">
                                @if ($notice->published_date)
                                    <div class="blog-one__date">
                                        <p>{{date('F d,Y',strtotime($notice->published_date)) }}</p>
                                    </div>    
                                @endif
                                <a href={{"/notice/".$notice->slug}}>
                                    <span class="news-one__plus"></span>
                                </a>
                            </div>
                            <div class="blog-one__content">
                                
                                <h3 class="blog-one__title">
                                    <a href={{"/notice/".$notice->slug}}>{{$notice->title}}</a>
                                </h3>
                                
                                {{-- description lekhe ma css garbar bhayooooo --}}
                                {{-- <p class="blog-one__text" style="overflow: hidden;">{!! $notice->short_description !!}</p> --}}
                                <p class="blog-one__text">Aellentesque porttitor lacus quis enim varius sed efficitur...

                                <div class="blog-one__bottom">
                                    <a href="{{"/notice/".$notice->slug}}" class="blog-one__btn">Read More</a>
                                    <a href="{{"/notice/".$notice->slug}}" class="blog-one__arrow"><span
                                            class="icon-right-arrow"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                        
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
            @else 
                <div class="col-12 text-center">
                    <h2>No Notice Available</h2>
                </div>
            @endif
        </div>
    </div>
</section>
<!--Blog Page End-->
@endsection