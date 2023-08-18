@extends('Frontend.layouts.app')
@section('body')
    {{-- Banner --}}
        @include('Frontend.page.detail.banner.banner')
    {{-- ------ --}}

    <section class="blog-details">
        <div class="container">
            <div class="row">
                @if ($detail)
                    <div class="col-xl-12 col-lg-12">
                        <div class="blog-details__left">
                            
                            <div class="blog-details__content">
                                
                                <h3 class="blog-details__title">{{$detail->title}}
                                </h3>
                                <p class="blog-details__text-1">{!! $detail->description !!}</p>
                            </div>
                            
                        </div>
                    </div>
                @else 
                    <h2>No Such Page Available</h2>
                @endif
                
                
            </div>
        </div>
    </section>
@endsection