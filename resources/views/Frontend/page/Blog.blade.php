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
                @foreach ($page as $blog)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <!--Blog One single-->
                        <div class="blog-one__single">
                            <div class="blog-one__img">
                                <img src="{{$blog->thumb_image ? $blog->thumb_image : $defaults.'thumb/blog.jpg'}}" alt="">
                                @if ($blog->publish_date)
                                    <div class="blog-one__date">
                                        <p>{{date('F d,Y',strtotime($blog->publish_date)) }}</p>
                                    </div>    
                                @endif
                                <a href={{"/blog/".$blog->slug}}>
                                    <span class="news-one__plus"></span>
                                </a>
                            </div>
                            <div class="blog-one__content">
                                <ul class="list-unstyled blog-one__meta">
                                   @if($blog->author) <li><a href="javascript:void(1)"><i class="far fa-user-circle"></i> {{$blog->author}}</a></li> @endif
                                    <li><a href="javascript:void(1)"><i class="far fa-comments"></i> {{count($blog->comments()->where('status','active')->get())}} Comments</a>
                                    </li>
                                </ul>
                                <h3 class="blog-one__title">
                                    <a href={{"/blog/".$blog->slug}}>{{$blog->title}}</a>
                                </h3>
                                <p class="blog-one__text" style="overflow: hidden;">
                                     @if(strlen(trim(strip_tags($blog->short_description))) > 100)                            
                                    {!!substr(strip_tags($blog->short_description),0,97).'...'!!}                            
                                    @else
                                    {!!strip_tags($blog->short_description)!!}
                                    @endif
                                </p>

                                <div class="blog-one__bottom">
                                    <a href="{{"/blog/".$blog->slug}}" class="blog-one__btn">Read More</a>
                                    <a href="{{"/blog/".$blog->slug}}" class="blog-one__arrow"><span
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
                    <h2>No Blogs Available</h2>
                </div>
            @endif
        </div>
    </div>
</section>
<!--Blog Page End-->
@endsection