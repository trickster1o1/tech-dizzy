@extends('Frontend.layouts.app')
@section('body')
    @include('Frontend.home.components.projects')
    {{-- <section class="thinking-section">
            <img src="{{$siteSetting ? $siteSetting->primary_logo : '/'}}" alt="-">
            <h1 class="main-headers">{{$siteSetting ? $siteSetting->title : 'Tech Dizzy'}}</h1>
    </section> --}}
@endsection
