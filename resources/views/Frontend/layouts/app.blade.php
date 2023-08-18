<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--SEO DETAIL BEGINS-->
    <title>{{isset($meta_title)?$meta_title:'SEC Nepal'}}</title>
    <meta name="description" content="{{isset($meta_description)?$meta_description:''}}">
    <meta property="og:site_name" content="{{$siteSetting->title}}"/>
    <meta property="og:image" content="{{isset($fb_image)?$fb_image:''}}"/>
    <meta property="og:image:secure_url" content="{{isset($fb_image)?$fb_image:''}}"/>
    <meta property="og:title" content="{{isset($fb_title)?$fb_title:''}}"/>
    <meta property="og:description" content="{{isset($fb_description)?$fb_description:''}}"/>
    <meta name="twitter:card" content="summary_large_image"/>
    <meta name="twitter:site" content="{{url('')}}"/>
    <meta name="twitter:description" content="{{isset($twitter_description)?$twitter_description:''}}"/>
    <meta property="twitter:image" content="{{isset($twitter_image)?$twitter_image:''}}"/>
    <meta property="twitter:title" content="{{isset($twitter_title)?$twitter_title:''}}"/>
    <!--SEO DETAIL ENDS-->
   
    <!-- favicons Icons -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('Frontend/assets/images/favicons/apple-touch-icon.png')}}" />
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('Frontend/assets/images/favicons/favicon-32x32.png')}}" />
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('Frontend/assets/images/favicons/favicon-16x16.png')}}" />
    <link rel="manifest" href="{{asset('Frontend/assets/images/favicons/site.webmanifest')}}" />

    {{-- Css --}}
    <link rel="stylesheet" href="{{asset('Frontend/assets/custom.css')}}">
<body>
    
        @yield('body')
        


    <!--js-->
    <script src="{{asset('Frontend/assets/vendors/jquery/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/additional/jquery.lazy.min.js')}}" defer></script>    
   <!--unknown purpose-->
    <script src="{{asset('Frontend/assets/vendors/jquery-appear/jquery.appear.min.js')}}" defer></script> 
   
    @yield('ajax-script')
   
    
</body>

</html>