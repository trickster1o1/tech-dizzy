@extends('Frontend.layouts.app')
@section('body')

{{-- heading --}}
@include('Frontend.page.includes.page')
{{-- ------- --}}

<section class="donations-page">
    <div class="container">
        <div class="row">
            @if (count($page))
                @foreach ($page as $program)
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="causes-one__single">
                            <div class="causes-one__img">
                                <img src="{{$program->thumb_image ? $program->thumb_image : '/uploads/defaults/thumb/program.png'}}" alt="">
                                
                            </div>
                            <div class="causes-one__content-box">
                                <div class="causes-one__content">
                                    <h3 class="causes-one__title">
                                        <a href="{{'/program/'.$program->slug}}">{{$program->title}}</a>
                                    </h3>
                                    <p class="causes-one__text">{!! $program->short_description !!}</p>
                                </div>
                                <div class="causes-one__progress causes-one__progress-2">
                                    <div class="bar">
                                        <div class="bar-inner count-bar" data-percent="{{$program->donation_amount && $program->target_amount ? ceil((intval($program->donation_amount)/intval($program->target_amount)) * 100)."%" : "0%"}}">
                                            <div class="count-text">{{$program->donation_amount && $program->target_amount ? ceil((intval($program->donation_amount)/intval($program->target_amount)) * 100)."%" : "0%"}}</div>
                                        </div>
                                    </div>
                                    <div class="causes-one__goals">
                                        <p><span>{{$program->donation_amount ? 'Rs.'.$program->donation_amount : 'Rs.0'}}</span> Raised</p>
                                        <p><span>{{$program->target_amount ? 'Rs.'.$program->target_amount : 'Rs.0'}}</span> Goal</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                        
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
            @else 
                <h2 align='center'>No program to show right now</h2>
            @endif
        </div>
    </div>
</section>
@endsection