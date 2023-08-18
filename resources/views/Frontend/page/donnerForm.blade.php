@extends('Frontend.layouts.app')
@section('body')
    @include('Frontend.page.includes.page')
    <section class="donate-now">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="donate-now__left">
                        <div class="donate-now__personal-info-box">
                            <h3 class="donate-now__title">Please enter details below</h3>
                            <form action="/donate-now/submit" class="donate-now__personal-info-form" id='donate-now-submit-form' method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="First Name *" name="fullName" id='fullName'>
                                        </div>
                                    </div>                                    
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="email" placeholder="Email Address *" name="email" id="email">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="Phone Number *" name="number" id="number">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="Address" name="address" id="address">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="Designation/Position" name="position" id="position">
                                        </div>
                                    </div>
                                    
                                    @if ($programs)
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <select class="selectpicker" aria-label="Default select example" name="donationProgram" id="donationProgram">
                                               <option value="">- Select A Program -</option>
                                                @foreach ($programs as $prog)
                                                     <option {{($prog->slug == $selected_slug?'selected':'')}} value="{{$prog->id}}" data-slug="{{$prog->slug}}">{{$prog->title}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    @endif
                                    @if (count($payments))
                                        <div class="col-xl-6">
                                            <div class="donate-now__personal-info-input">
                                                <select class="selectpicker" aria-label="Default select" name="paymentMethod" id="paymentMethod">
                                                   <option value="">- Select Payment Method * -</option>
                                                    @foreach ($payments as $payment)
                                                         <option value="{{$payment->code}}" >{{$payment->method}}</option>                                                      
                                                   @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    @endif
                                    <div class="col-xl-6">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="Remarks" name="remarks" id="remarks">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="donate-now__personal-info-input">
                                            <input type="text" placeholder="Donation Amount *" name="amount" id="amount">
                                        </div>
                                    </div>
                                    @if ($banks)
                                    <div class="col-xl-12 row d-none paymentDetail" id="BANK-main">
                                        <p>Bank Account Detail</p>
                                        @foreach ($banks as $bank)
                                            <div class="col-xl-5 payment-card bank-payment thm-btn" id="bank-{{$bank->id}}">
                                                {!! $bank->bank_detail !!}
                                            </div>
                                        @endforeach
                                    </div>
                                    @endif
                                    @if ($paymentSetting && $paymentSetting->esewa_id)
                                    <div class="col-xl-12 row d-none paymentDetail" id="ESW-main"> 
                                        <div class="col-xl-6 payment-card text-center thm-btn">
                                            <p>ESEWA</p>
                                        </div>                                                 
                                    </div>
                                    @endif  
                                </div>
                                @if($paymentSetting && $paymentSetting->paypal_form)
                                    <!-- <div class="col-xl-12 row d-none paymentDetail" id="PPL-main"> 
                                        <div class="col-xl-6  payment-card thm-btn text-center">
                                            <p>PayPal</p>
                                        </div>
                                    </div> -->
                                @endif

                                <div class="donate-now__payment-info-btn-box" style="padding-top: 1em;">
                                    <button type="submit" class="thm-btn donate-now__payment-info-btn" id="donate-now-btn-submit">Donate Now</button>
                                </div> 

                                  
                                

                            </form>
                            @if($paymentSetting && $paymentSetting->paypal_form)
                            <div class='d-none' id="paypal-form" >
                                {!! $paymentSetting->paypal_form !!}
                            </div>
                            @endif
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

 @section('additional-css')
    <style>
        .payment-card {
            background-color: #eee;
            margin-left: .5em;
            margin-bottom: .5em;
            border: 1px solid rgba(255,255,255,.2);
            background-color: #ffa415;
            color: white;
            border-radius: 10px;
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="{{asset('Frontend/assets/vendors/bootstrap-select/css/bootstrap-select.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.min.css') }}" /> 
    @endsection

@section('ajax-script')
    <script src="{{asset('Frontend/assets/vendors/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/jquery-validate/jquery.validate.min.js')}}"></script>
    <script src="{{asset('Frontend/assets/vendors/bootstrap-select/js/bootstrap-select.min.js')}}"></script>
    <script src="{{ asset('assets/vendors/sweetalert2/dist/sweetalert2.all.min.js') }}"></script>
    <script type="text/javascript" src="/Frontend/assets/additional/donate-now.js"></script>
@endsection
