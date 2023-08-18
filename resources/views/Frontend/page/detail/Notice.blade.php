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
                                <p>{{date('F d,Y',strtotime($detail->published_date)) }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                <div class="event-details__bottom">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="event-details__bottom-left">
                                <div class="event-details__bottom-content">
                                    <h3 class="event-details__title">{{$detail->title}}</h3>
                                    <p class="event-details__text-1">
                                        {!! $detail->description !!}
                                    </p>

                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            @else
               <h2 align='center'>No Such Notice is Available</h2> 
            @endif
           
        
    </div>
</section>
@endsection