@extends('Frontend.layouts.app')
@section('body')
    @if ($banners)
        @include('Frontend.home.components.hero')
    @endif
    @if (count($projects))
        @include('Frontend.home.components.projects')
    @endif
    @if (count($services))
        @include('Frontend.home.components.service')
    @endif
    @if (count($testimonials))
    @include('Frontend.home.components.testi')
        
    @endif
    {{-- <section class="thinking-section">
            <img src="{{$siteSetting ? $siteSetting->primary_logo : '/'}}" alt="-">
            <h1 class="main-headers">{{$siteSetting ? $siteSetting->title : 'Tech Dizzy'}}</h1>
    </section> --}}
@endsection
