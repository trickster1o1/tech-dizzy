@extends('Frontend.layouts.app')
@section('body')
{{-- banner --}}
@include('Frontend.page.detail.banner.banner')
{{-- ------ --}}

<section class="event-details">
    <div class="container">
            @if ($detail)
                @if(strlen(trim($detail->featured_image)) && file_exists($detail->featured_image))
                <div class="row">
                    <div class="col-xl-12">
                        <div class="event-details__img">
                            <img src={{$detail->featured_image ? '/'.$detail->featured_image : ''}} alt="{{$detail->title}}" title="{{$detail->title}}">
                            <div class="events__date">
                                <p>{{$detail->start_date}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                <div class="event-details__bottom">
                    <div class="row">
                        <div class="col-xl-8 col-lg-7">
                            <div class="event-details__bottom-left">
                                <div class="event-details__bottom-content  img-compact">
                                    <h3 class="event-details__title">{{$detail->title}}</h3>
                                    {!! $detail->description !!}
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-5">
                            <div class="event-details__sidebar">
                                <ul class="event-details__sidebar-details list-unstyled">
                                    @if ($detail->start_date && strlen(trim($detail->start_date)))
                                        <li>
                                            <p>Starting Date & Time:</p>
                                            <span>
                                                {{date('F d, Y',strtotime($detail->start_date))}}
                                                 @if ($detail->start_time && strlen(trim($detail->start_time)))
                                                 {{$detail->start_time}}
                                                 @endif
                                            </span>
                                        </li>
                                    @endif
                                    @if ($detail->end_date && strlen(trim($detail->end_date)))
                                        <li>
                                            <p>Ending Date & Time:</p>
                                            <span>
                                                {{date('F d, Y',strtotime($detail->end_date))}}
                                                 @if ($detail->end_time && strlen(trim($detail->end_time)))
                                                 {{$detail->end_time}}
                                                 @endif
                                            </span>
                                        </li>
                                    @endif
                                    
                                    @if($detail->location && strlen(trim($detail->location)))
                                    <li>
                                        <p>Location:</p>
                                        <span>{{$detail->location}}</span>
                                    </li>    
                                    @endif
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
            @else
               <h2 align='center'>No Such Event Available</h2> 
            @endif
           
        
    </div>
</section>
@endsection