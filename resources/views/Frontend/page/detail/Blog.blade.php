@extends('Frontend.layouts.app')
@section('body')
{{-- Banner --}}
    @include('Frontend.page.includes.page', [$title = $blog->title, $sub = 'Blogs', $sublink = '/blogs'])
    {{-- ------ --}}
<section>
    <div class="blog-detail custom-cont">
        {!! $blog->description !!}
    </div>
</section>

@endsection