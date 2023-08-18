  <!--Page Header Start-->
 <section class="page-header">
    <div class="page-header-bg" style="background-image: url({{ ($linkData && isset($linkData->banner_image)) ? '/'.$linkData->banner_image : $defaults.'/banner.jpg'}})">
    </div>
    <div class="container">
        <div class="page-header__inner">
            <h2>{{$linkData ? $linkData->title : ''}}</h2>
            <ul class="thm-breadcrumb list-unstyled">
                <li>{{$linkData ? $linkData->tagline : ''}}</li>
            </ul>
        </div>
    </div>
</section>
<!--Page Header End-->