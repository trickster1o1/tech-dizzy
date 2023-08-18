@extends('Frontend.layouts.app')
@section('body')
	<section class="events-page">
	    <div class="container">
	        <div class="row">
	        	<h2 align='center'>{{$message}}</h2>
	        </div>
	    </div>
	</section>
	<section class="cta-one">
	    <div class="cta-one-shape" style="background-image: url(/Frontend/assets/images/shapes/cta-one-shape.png);"></div>
	    <div class="container">
	        <div class="row">
	            <div class="col-xl-12">
	                <div class="cta-one__inner">
	                    <div class="cta-one__left">
	                        <div class="cta-one__icon">
	                            <span class="icon-support"></span>
	                        </div>
	                        <h2 class="cta-one__title">Your Donations can <br>Change their Daily Life Style</h2>
	                    </div>
	                    <div class="cta-one__right">
	                        <a href="/donate-now" class="thm-btn cta-one__btn">Donate Now</a>
	                    </div>

	         
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
@endsection