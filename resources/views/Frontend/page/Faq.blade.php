@extends('Frontend.layouts.app')
@section('body')
{{-- Banner --}}
    @include('Frontend.page.includes.page')
{{-- ------ --}}
    <section class="paq-page">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="faq-page__single">
                            @if (count($page))
                            <div class="accrodion-grp faq-one-accrodion" data-grp-name="faq-one-accrodion-1">

                                @php $i=1; @endphp
                                @foreach ($page as $faq)
                                        <div @if($i == 1) class = 'accrodion active' @else  class="accrodion" @endif>
                                            <div class="accrodion-title">
                                                <h4>{{ strip_tags($faq->question)}}</h4>
                                            </div>
                                            <div class="accrodion-content">
                                                <div class="inner">
                                                    <p>
                                                        {!! $faq->answer !!}
                                                    </p>
                                                </div><!-- /.inner -->
                                            </div>
                                        </div>    
                                    
                                        @php if($i==1){ $i+=1; } @endphp

                                @endforeach
                            </div>

                                <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                                    {{$page->links()}}
                    
                                </div>
                            @else
                                <h2 align='center'>No FAQs Available</h2>
                            @endif
                            {{-- <div class="accrodion">
                                <div class="accrodion-title">
                                    <h4>Why is it important to support them</h4>
                                </div>
                                <div class="accrodion-content">
                                    <div class="inner">
                                        <p>There are many variations of passages the majority have suffered
                                            alteration in some fo injected humour, or randomised words believable.
                                        </p>
                                    </div><!-- /.inner -->
                                </div>
                            </div>
                            <div class="accrodion active">
                                <div class="accrodion-title">
                                    <h4>Start a fundraiser for yourself</h4>
                                </div>
                                <div class="accrodion-content">
                                    <div class="inner">
                                        <p>There are many variations of passages the majority have suffered
                                            alteration in some fo injected humour, or randomised words believable.
                                        </p>
                                    </div><!-- /.inner -->
                                </div>
                            </div>
                            <div class="accrodion last-chiled">
                                <div class="accrodion-title">
                                    <h4>Promoting the rights of the children</h4>
                                </div>
                                <div class="accrodion-content">
                                    <div class="inner">
                                        <p>There are many variations of passages the majority have suffered
                                            alteration in some fo injected humour, or randomised words believable.
                                        </p>
                                    </div><!-- /.inner -->
                                </div>
                            </div> --}}
                    </div>
                </div>
                
            </div>
        </div>
    </section>
@endsection