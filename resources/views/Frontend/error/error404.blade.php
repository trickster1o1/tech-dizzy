@extends('Frontend.layouts.app')
@section('body')


<!--Error Page Start-->
<section class="error-page">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="error-page__inner">
                    <h2 class="error-page__title">404</h2>
                    <h3 class="error-page__tagline">Sorry we can't find that page!
                    </h3>
                    <p class="error-page__text">The page you are looking for was does not exist.</p>
                    <br>
                    <a href="/" class="thm-btn error-page__btn">back to home</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Error Page End-->


@endsection