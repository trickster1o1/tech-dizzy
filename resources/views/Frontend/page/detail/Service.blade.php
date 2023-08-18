@extends('Frontend.layouts.app')
@section('body')
    {{-- Banner --}}
        @include('Frontend.page.detail.banner.banner')
    {{-- ------ --}}

    <section class="blog-details">
        <div class="container">
            @if ($detail)
            <div class="row">
                <div class="col-xl-8 col-lg-7">
                    <div class="blog-details__left">
                        @if(strlen(trim($detail->featured_image)) && file_exists($detail->featured_image))
                        <div class="blog-details__img">
                            <img src="/{{$detail->thumb_image ? $detail->thumb_image : 'uploads/defaults/thumb/Program.jpg'}}" alt="">
                            
                        </div>
                        @endif
                        
                        <div class="blog-details__content text-justify">
                            @if ($detail->description && strlen(trim(strip_tags($detail->description))))
                                <p class="blog-details__text-1">{!! $detail->description !!}</p>
                            @else
                                <p class="blog-details__text-1">{!! $detail->short_description !!}</p>
                            @endif
                        </div>
                        
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="sidebar">
                        <div class="sidebar__single sidebar__post">
                            <h3 class="sidebar__title">Other Services</h3>
                            <ul class="sidebar__post-list list-unstyled" id="related-service">
                                <li>No related serices</li>                               
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>
            @else
                <h2 align='center'>The service you're looking for is not available</h2>
            @endif
            
        </div>
    </section>
@endsection

@section('ajax-script')
    @if($detail)
        <script>
                var id = <?php echo  json_encode($detail->id) ?>;

            $.ajax({
                url:"/service/related/"+id,
                type:'get',
                success:function(result) {
                    if(result.msg === 'success') {
                        $('#related-service').html("");
                        result.services.forEach(service => {
                            $('#related-service').append(
                                '<li>'+
                                    '<div class="sidebar__post-image">'+
                                        '<img src="/'+(service.featured_image ? service.featured_image : "uploads/defaults/thumb/Program.jpg")+'" alt="">'+
                                        '</div>'+
                                        '<div class="sidebar__post-content">'+
                                            '<h3>'+
                                                
                                                '<a href="/service/'+service.slug+'">'+service.title+'</a>'+
                                            '</h3>'+
                                    '</div>'+
                                '</li>'
                            );                            
                        });
                    }
                }
            });
        </script>
    @endif
@endsection