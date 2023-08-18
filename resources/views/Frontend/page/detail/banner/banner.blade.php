<section class="page-header">
    <div class="page-header-bg" style="background-image: url({{ ($detail && isset($detail->banner_image)) ? '/'.$detail->banner_image : $defaults.'/banner.jpg'}})">
    </div>
    <div class="container">
        <div class="page-header__inner">
            <h2>{{$detail ? $detail->title : '404'}}</h2>
            <ul class="thm-breadcrumb list-unstyled">
                <li>{{$detail?$detail->tagline:'Page Not Found!!!'}}
            </ul>
        </div>
    </div>
</section>