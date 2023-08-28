@extends('Frontend.layouts.app')
@section('body')
@include('Frontend.page.includes.page', [$title = 'About Us'])
    <div class="about-cont custom-cont">
        {!! $about->description !!}
    </div>
@endsection