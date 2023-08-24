@extends('Frontend.layouts.app')
@section('body')
    <!--Page Header Start-->
    @include('Frontend.page.includes.page', [($title = 'Blogs')])
    <!--Page Header End-->
    <!--Blog Page Start-->
    <section class="blog-page">
        <div class="container">
            <div class="row">
                {{-- @if (count($blogs)) --}}

                <div class="blog-cont custom-cont">
                    <div class="blog-filter">
                        <span class="active-filter">All Blogs</span>
                        <span>Digital Board</span>
                        <span>Drones</span>
                        <span>Marketing</span>
                    </div>

                    <div class="blog-body">
                        <div>
                            <div class="blog-img"><img
                                    src="https://assets.website-files.com/60d4b22d82365168e8d2fc46/60d4b46061545264cdfe2f55_1624552538685-image16-p-500.jpeg"
                                    alt="error404"></div>
                            <div class="blog-cat">design</div>
                            <div class="blog-desc">
                                <h4>Joseph Schwartz's Foolproof Design Tips</h4>
                                <p><span class="blog-auth">Nischal Tuladhar</span> <span class="blog-time">12min</span></p>

                            </div>
                        </div>
                        <div>
                            <div class="blog-img"><img
                                    src="https://assets.website-files.com/60d4b22d82365168e8d2fc46/60d4b46061545264cdfe2f55_1624552538685-image16-p-500.jpeg"
                                    alt="error404"></div>
                            <div class="blog-cat">design</div>
                            <div class="blog-desc">
                                <h4>Joseph Schwartz's Foolproof Design Tips</h4>
                                <p><span class="blog-auth">Nischal Tuladhar</span> <span class="blog-time">12min</span></p>
                            </div>
                        </div>
                        <div>
                            <div class="blog-img"><img
                                    src="https://assets.website-files.com/60d4b22d82365168e8d2fc46/60d4b46061545264cdfe2f55_1624552538685-image16-p-500.jpeg"
                                    alt="error404"></div>
                            <div class="blog-cat">design</div>
                            <div class="blog-desc">
                                <h4>Joseph Schwartz's Foolproof Design Tips</h4>
                                <p><span class="blog-auth">Nischal Tuladhar</span> <span class="blog-time">12min</span></p>

                            </div>
                        </div>
                    </div>
                </div>

                {{-- <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}

            </div> --}}
                {{-- @else 
                <div class="col-12 text-center" style="height:20vh;padding:15em 0;">
                    <h2>No Blogs Available</h2>
                </div>
            @endif --}}
            </div>
        </div>
    </section>
    <!--Blog Page End-->
@endsection
