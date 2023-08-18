@extends('Frontend.layouts.app')
@section('body')
{{-- Banner --}}
        @include('Frontend.page.detail.banner.banner')
    {{-- ------ --}}
<section class="blog-details">
    <div class="container">
        <div class="row">
            @if (!$detail)
                <h2 align='center'>This Blog Isn't Available</h2>
            @else
            <div class="col-xl-8 col-lg-7">
                <div class="blog-details__left">
                    @if(strlen(trim($detail->featured_image)) && file_exists($detail->featured_image))
                    <div class="blog-details__img">
                        <img src={{ $detail->featured_image ? '/'.$detail->featured_image : ''}} alt="{{$detail->title}}" title="{{$detail->title}}">
                        @if ($detail->publish_date)
                        <div class="blog-one__date">
                            <p>{{date('F d,Y',strtotime($detail->publish_date)) }}</p>
                        </div>    
                        @endif
                    </div>
                    @endif
                    <div class="blog-details__content text-justify img-compact">
                        <ul class="list-unstyled blog-details__meta">
                            @if ($detail->author)
                             <li><a href="javascript:void(0);"><i class="far fa-user-circle"></i> {{$detail->author}}</a></li>    
                            @endif 
                            <li><a href="javascript:void(0);"><i class="far fa-comments"></i> {{count($detail->comments()->where('status','active')->get())}} Comments</a>
                            </li>
                        </ul>
                        <h3 class="blog-details__title">{{$detail->title}}
                        </h3>
                        <p class="blog-details__text-1">{!! $detail->description !!}</p>                       
                    </div>
                   
                    @if(strtolower($detail->setting) == 'yes')
                    <br/>
                    <hr/>
                    <br/>
                    @if ($comments && count($comments))
                    <div class="comment-one">
                        <h3 class="comment-one__title">{{$comments ? count($comments) : '0'}} Comments</h3>
                        
                            @foreach ($comments as $comment)
                                <div class="comment-one__single">
                                    {{-- <div class="comment-one__image">
                                        <img src="{{asset('Frontend/assets/images/blog/comment-1-1.jpg')}}" alt="">
                                    </div> --}}
                                    <div class="comment-one__content">
                                        <h3>{{$comment->name}}</h3>
                                        <p>{{$comment->comment}}</p>
                                    </div>
                                </div>    
                            @endforeach
                            </div>
                       
                        @endif

                    <div class="comment-form" id="comment-form">
                        <h3 class="comment-form__title">Leave a Review</h3>
                        <form action="javascript:void(1)" class="comment-one__form contact-form-validated"
                            novalidate="novalidate" onsubmit="postComment(event)" id="submit-form" >
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box">
                                        <input type="text" placeholder="Your Name" name="name" id="name">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form__input-box">
                                        <input type="email" placeholder="Email Address" name="email" id="email">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="comment-form__input-box text-message-box">
                                        <textarea name="message" placeholder="Write a Comment"  id="comment"></textarea>
                                    </div>
                                    <div class="comment-form__btn-box">
                                        <button type="submit" class="thm-btn comment-form__btn" id='btn-submit'>submit
                                            comment</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    @endif
                </div>
            </div>
            <div class="col-xl-4 col-lg-5">
                <div class="sidebar">
                    
                    <div class="sidebar__single sidebar__post">
                        <h3 class="sidebar__title">Related Posts</h3>
                        <ul class="sidebar__post-list list-unstyled" id='related-blogs'>
                            <li>
                                Nothing to show
                            </li>
                            
                        </ul>
                    </div>
                    <div class="sidebar__single sidebar__post">
                        <h3 class="sidebar__title">Latest Posts</h3>
                        <ul class="sidebar__post-list list-unstyled" id='latest-blogs'>
                            <li>
                                Nothing to show
                            </li>
                            
                        </ul>
                    </div>
                    <div class="sidebar__single sidebar__category">
                        <h3 class="sidebar__title">Categories</h3>
                        <ul class="sidebar__category-list list-unstyled" id="blog-cat">
                            <li>Nothing to show</li>
                        </ul>
                    </div>
                    @php
                        $tags = [];
                        if ($detail->tags) {
                            $tags = explode(',',$detail->tags);
                        }
                    @endphp
                    @if (count($tags))
                        <div class="sidebar__single sidebar__tags">
                            <h3 class="sidebar__title">Tags</h3>
                            <div class="sidebar__tags-list">
                                @foreach ($tags as $tag)
                                    <a href="#">{{$tag}}</a>
                                @endforeach
                            </div>
                        </div>
                    @endif
                    
                </div>
            </div>
            @endif
            
        </div>
    </div>
</section>

@endsection

@section('ajax-script')
<script>
   @if ($detail)
            $.ajax({
                url:"/blogs/latest",
                type:'get',
                success:function(result) {
                    if(result.msg === 'success') {
                        $('#latest-blogs').html("");
                        
                        result.blogs.forEach(blog => {
                            $('#latest-blogs').append(
                                '<li>'+
                                '<div class="sidebar__post-image">'+
                                    '<img src="/'+(blog.thumb_image ? blog.thumb_image : "uploads/defaults/thumb/blog.jpg")+'" alt="" title="">'+
                                    '</div>'+
                                    '<div class="sidebar__post-content">'+
                                        '<h3>'+
                                            '<span class="sidebar__post-content-meta">'+
                                            '<a href="/Blog/'+blog.slug+'">'+blog.title+'</a>'+
                                        '</h3>'+
                                '</div>'+
                                '</li>'
                            );                            
                        });
                    }
                }
            });

            $.ajax({
                url:"/blogs/category",
                type:'get',
                success:function(result) {
                    if(result.msg === 'success') {
                        $('#blog-cat').html("");
                        
                        result.cats.forEach(cat => {
                            $('#blog-cat').append(
                                '<li><a href="javascript:void(1)'+cat.slug+'">'+cat.title+'<span class="icon-right-arrow"></span></a></li>'
                            );                            
                        });
                    }
                }
            });

            var tags = <?php echo json_encode($detail->tags) ?>;
            var id = <?php echo json_encode($detail->id) ?>;

            $.ajax({
                url:"/blogs/related/"+tags+"/"+id,
                type:'get',
                success:function(result) {
                    if(result.msg === 'success') {
                        $('#related-blogs').html("");
                        result.blogs.forEach(blog => {
                            $('#related-blogs').append(
                                '<li>'+
                                '<div class="sidebar__post-image">'+
                                    '<img src="/'+(blog.thumb_image ? blog.thumb_image : "uploads/defaults/thumb/blog.jpg")+'" alt="404">'+
                                    '</div>'+
                                    '<div class="sidebar__post-content">'+
                                        '<h3>'+
                                            '<span class="sidebar__post-content-meta">'+
                                            '<a href="/Blog/'+blog.slug+'">'+blog.title+'</a>'+
                                        '</h3>'+
                                '</div>'+
                                '</li>'
                            );                            
                        });
                       
                    }
                }
            });


            function postComment(event) {
                $('#btn-submit').attr('disabled',true)
                $('#btn-submit').html('<img src="/Frontend/assets/images/loader/ripple.svg" alt="" style="width:3em; height:3em;">');

                var model = 'Blog,';
                model += <?php echo  json_encode($detail->id) ?>;

                event.preventDefault();
                $.ajax({
                    url:"/comment/submit/"+model,
                    data:{' _token': '{{csrf_token()}}',
                            'name':$('#name').val(),'email':$('#email').val(),
                            'comment':$('#comment').val()
                    },
                    type:'post',
                    success:function(result) {

                        if(result.msg === 'success') {
                        $('#submit-form')[0].reset();    
                        }

                        Swal.fire(
                                result.msg+'!!',
                                result.message,
                                result.msg
                        );
                        $('#btn-submit').attr('disabled',false)
                        $('#btn-submit').html('submit comment');
                    },
                    error:function(error) {
                        
                        $('#btn-submit').attr('disabled',false)
                        $('#btn-submit').html('submit comment');
                    }
                });
            

            }
   @endif
</script>
@endsection