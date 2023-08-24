<section>
    <div class="banner-cont" style="background-image: url('/uploads/banner.jpg')">
        <div>
            <div class="hero-cont">
                <h1>{{$banners->title}}</h1>
                <p>
                    {{$banners->tag_line}}
                </p>
                @if ($banners->primary_button_title)
                <a class="custom-btn">{{$banners->primary_button_title}} <i class="fas fa-arrow-right"></i></a>                    
                @endif
            </div>
        </div>
        <div>
            @if ($banners->image)
                <img src="/{{$banners->image}}" alt="-">            
            @endif
        </div>
    </div>
</section>
