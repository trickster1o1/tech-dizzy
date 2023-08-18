@extends('Frontend.layouts.app')
@section('body')
    <section class="thinking-section">
            <img src="{{$siteSetting ? $siteSetting->primary_logo : '/'}}" alt="-">
            <h1 class="main-headers">{{$siteSetting ? $siteSetting->title : 'Tech Dizzy'}}</h1>
    </section>
@endsection
