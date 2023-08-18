@extends('Frontend.layouts.app')
@section('body')

{{-- banner --}}
@include('Frontend.page.includes.page')
{{-- ------ --}}

<!--Events Page Start-->
<section class="events-page">
    <div class="container">
        <div class="row">
            @if (count($page))
                @foreach ($page as $event)
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!--Events Single-->
                        <div class="events__single">
                            <div class="events__img">
                                <img src={{$event->thumb_image ? '/'.$event->thumb_image : '/uploads/defaults/thumb/Program.jpg'}} alt="">
                                @if(strlen(trim($event->start_date)))
                                <div class="events__date">
                                    <p>
                                        {{date('F d, Y',strtotime($event->start_date))}}
                                        @if(strlen(trim($event->end_date)))
                                         - {{date('F d, Y',strtotime($event->end_date))}}
                                        @endif
                                    </p>
                                </div>
                                @endif
                            </div>
                            <div class="events__content">
                                <h3 class="events__title"><a href="{{'/event/'.$event->slug}}">{{$event->title}}</a></h3>
                                <ul class="list-unstyled events__meta">
                                    @if(strlen(trim($event->start_date)) && strlen(trim($event->start_time)))
                                    <li><i class="far fa-clock"></i>{{$event->start_time}}</li>
                                    @endif
                                    @if(strlen(trim($event->location)))
                                    <li><i class="fas fa-map-marker-alt"></i>{{$event->location}}</li>
                                    @endif

                                </ul>
                            </div>
                        </div>
                    </div>
                @endforeach
                        
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div>
            @else 
                <h2 align='center'>No Events To Display</h2>
            @endif
            
        </div>
    </div>
</section>
<!--Events Page End-->
@endsection