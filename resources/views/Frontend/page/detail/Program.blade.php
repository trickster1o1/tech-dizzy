@extends('Frontend.layouts.app')
@section('body')

{{-- header --}}
@include('Frontend.page.detail.banner.banner')
{{-- ------ --}}

<section class="donations-details">
<div class="container">
    <div class="row">
        @if ($detail)
            <div class="col-xl-8 col-lg-7">
                <div class="donation-details__left">
                    <div class="donation-details__top">
                        @if(strlen(trim($detail->featured_image)) && file_exists($detail->featured_image))
                        <div class="donation-details__top-img">
                            <img src="{{$detail->featured_image ? '/'.$detail->featured_image : ''}}" alt="">
                        </div>
                        @endif
                        <div class="donation-details__top-progress-box clearfix">
                            <div class="donation-details__progress">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="{{$detail->donation_amount && $detail->target_amount ? ceil((intval($detail->donation_amount)/intval($detail->target_amount)) * 100)."%" : "0%"}}">
                                        <div class="count-text">{{$detail->donation_amount && $detail->target_amount ? ceil((intval($detail->donation_amount)/intval($detail->target_amount)) * 100)."%" : "0%"}}</div>
                                    </div>
                                </div>
                                <div class="donation-details__goals">
                                    <p><span>{{$detail->donation_amount ? 'Rs.'.$detail->donation_amount : 'Rs.0'}}</span> Raised</p>
                                    <p><span>{{$detail->target_amount ? 'Rs.'.$detail->target_amount : 'Rs.0'}}</span> Goal</p>
                                </div>
                            </div>
                            <div class="donation-details__top-donate-btn-box">
                                <a href="/donate-now/{{$detail->slug}}" class="donate-btn footer-donate__btn"> <i
                                        class="fa fa-heart"></i> Donate Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="donation-details__content text-justify img-compact">
                        <h3 class="donation-details__title">{{$detail->title}}</h3>
                        @if ($detail->description && strlen(trim(strip_tags($detail->description))))
                            <p class="donation-details__text-1">{!! $detail->description !!} </p>
                        @else
                            <p class="donation-details__text-1">{!! $detail->short_description !!} </p>
                        @endif
                            
                        
                        @if ($detail->album() && $detail->album()->gallary)
                            <h3 class="donation-details__title">Gallery</h3>
                        
                            <div class="donation-details__content-img-boxes">
                                <div class="row">
                                    @foreach ($detail->album()->gallary as $gallary)
                                        <div class="col-xl-6">
                                            <div class="donation-details__content-img-single">
                                                <img src="{{'/'.$gallary->image_url}}"
                                                    alt="">
                                            </div>
                                        </div>
                                    @endforeach
                                    @if ($detail->album()->album_short_description)
                                        <p class="donation-details__text-3">{!! $detail->album()->album_short_description !!}</p>    
                                    @endif
                                    
                                </div>
                            </div>    
                        @endif
                       @if ($detail->attached_file_url)
                            <div class="donation-details__presentation">
                                <div class="donation-details__presentation-icon-box">
                                    <span class="icon-pdf"></span>
                                    <h4>Attachment</h4>
                                </div>
                                <div class="donation-details__presentation-btn-box">
                                    <a target="_blank" href="/{{$detail->attached_file_url}}"
                                        class="thm-btn donation-details__presentation-btn" download>Download</a>
                                </div>
                            </div>
                       @endif
                        
                    </div>
                    @if ($comments && count($comments))
                    <div class="comment-one d-none">
                        <h3 class="comment-one__title">{{$comments ? count($comments) : '0'}} Comments</h3>
                        
                            @foreach ($comments as $comment)
                                <div class="comment-one__single">
                                    <div class="comment-one__content">
                                        <h3>{{$comment->name}}</h3>
                                        <p>{{$comment->comment}}</p>
                                    </div>
                                </div>    
                            @endforeach
                            </div>
                       
                        @endif
                        <div class="comment-form d-none" id="comment-form">
                            <h3 class="comment-form__title">Leave a Comment</h3>
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
                                            <button type="button" class="thm-btn comment-form__btn" id='btn-submit'>submit
                                                comment</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-5">
                <div class="donation-details__sidebar">
                    <div class="donation-details__sidebar-single donation-details__organizer">
                        <div class="donation-details__organizer-content">
                            @if(strlen(trim($detail->start_date)))
                            <p class="donation-details__organizer-date">
                                {{ date('F d, Y',strtotime($detail->start_date)) }}
                                @if(strlen(trim($detail->end_date)))
                                     - {{ date('F d, Y',strtotime($detail->end_date)) }}
                                @endif
                            </p>
                            @endif
                            @if(strlen(trim($detail->organizer)))
                            <p class="donation-details__organizer-title">Organizer:</p>
                            <p class="donation-details__organizer-name">{{$detail->organizer}}</p>
                            @else
                            <p class="donation-details__organizer-title">Organizer:</p>
                            <p class="donation-details__organizer-name">{{$siteSetting->title}}</p>
                            @endif
                            <ul class="list-unstyled donation-details__organizer-list">
                                @if(isset($category_title) && strlen(trim($category_title)))
                                <li>
                                    <div class="icon">
                                        <span class="fas fa-tag"></span>
                                    </div>
                                    <div class="text">
                                        <p>{{$category_title}}</p>
                                    </div>
                                </li>
                                @endif
                                @if(strlen(trim($detail->location)))
                                <li>
                                    <div class="icon">
                                        <span class="fas fa-map-marker-alt"></span>
                                    </div>
                                    <div class="text">
                                        <p>{{$detail->location}}</p>
                                    </div>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>


                    <div class="donation-details__sidebar-single donation-details__recent-donation">
                        <h3 class="donation-details__recent-donation-title">Other Programs</h3>
                        <ul class="list-unstyled donation-details__recent-donation-list" id='recent-prog'>
                            <li>No Recent Programms available</li>
                        </ul>
                    </div>
                </div>
            </div>
        @else
            <h2 align='center'>No Such Program Here</h2>
        @endif
    </div>
</div>
</section>
@endsection

@section('ajax-script')
@if ($detail)
<script>

$.ajax({
    url:"/program/getrecent",
    type:'get',
    success:function(result) {
        if(result.msg === 'success') {
            $('#recent-prog').html("");
            
            result.prog.forEach(p => {
                $('#recent-prog').append(
                    '<li>'+
                                    '<div class="donation-details__recent-donation-img">'+
                                        '<a href="/Program/'+p.slug+'">'+
                                        '<img src="/'+(p.thumb_image ? p.thumb_image : 'uploads/defaults/thumb/Program.jpg')+'" style="width:60px;height:60px;" alt="">'+
                                    '</div> <div class="donation-details__recent-donation-content">'+
                                        '<h4 class="donation-details__recent-donation-amount">'+(p.target_amount ? 'Rs.'+p.target_amount : '')+'</h4>'+
                                        '<p class="donation-details__recent-donation-name">'+p.title+ 
                                        '</a></div>'+
                                    
                                '</li>'
                );                            
            });
            
        }
    }
});


</script>
@endif

@endsection