@extends('Frontend.layouts.app')
@section('body')
{{-- banner --}}
@include('Frontend.page.detail.banner.banner')
{{-- ------ --}}

<section class="event-details">
    <div class="container">
            @if ($detail)
                <div class="row">
                    <div class="col-xl-12">
                        <div class="event-details__img">
                            <img src={{$detail->thumb ? '/'.$detail->thumb : '/uploads/defaults/thumb/Program.jpg'}} alt="">
                            
                        </div>
                    </div>
                </div>

                <div class="event-details__bottom">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="event-details__bottom-left">
                                <div class="event-details__bottom-content">
                                    <h3 class="event-details__title">{{$detail->title}}</h3>
                                    {{-- Garrrbbaarr bhayoooo --}}
                                    {!! $detail->description !!}

                                    
                                </div>
                                <a href="/{{$detail->attachment}}" class="thm-btn event-details__btn" target="_blank">View Attachment</a>

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