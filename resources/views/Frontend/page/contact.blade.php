@extends('Frontend.layouts.app')
@section('body')
    <div class="contact-cont custom-cont">
        <div>
            <div>
                <h1>Questions? Feedback? A Just-Because Chat?We'd Love To Talk!</h1>
                <p>You can get in touch directly or fill in the form on the right and we'll get back to you ASAP (within 24 hours).</p>
                <div class="cont-detail">
                    <span>logo</span>
                    <span>
                        <small>E-mail</small>
                        <b>info@bisava.tech</b>
                    </span>
                </div>
                <div class="cont-detail">
                    <span>logo</span>
                    <span>
                        <small>Phone</small>
                        <b>9810116104</b>
                    </span>
                </div>
            </div>
            <div>
                <form action="javascript:void(0)">
                    <div class="cont-form row">
                        <h4 class="col-md-12">Leave Your Message</h4>
                        <div class="col-md-6">
                            <input type="text" placeholder="Name">
                        </div>
                        <div class="col-md-6">
                            <input type="text" placeholder="E-mail">
                        </div>
                        <div class="col-md-6">
                            <input type="text" placeholder="Phone">
                        </div>
                        <div class="col-md-6">
                            <input type="text" placeholder="Company">
                        </div>
                        <div class="col-md-12">
                            <input type="text" placeholder="Subject">
                        </div>
                        
                        <div class="col-md-12">
                            <textarea placeholder="Type of message here"></textarea>
                        </div>
                        <div class="col-md-12">
                            <button class="custom-btn">Send Your Message <i class="fas fa-arrow-right"></i></button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection