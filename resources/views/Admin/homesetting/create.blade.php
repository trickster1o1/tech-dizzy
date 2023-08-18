@extends('layouts.app')
@section('title')
    Home Setting
@endsection
@section('content')
    <div class="page-header">
        <h3 class="page-title"> Update Home Setting </h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ url('') }}">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add Homesetting</li>
            </ol>
        </nav>
    </div>
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Service
                                </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="donnation-tab" data-bs-toggle="tab" data-bs-target="#donnation"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Program
                                </button>
                        </li>
                        
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="additional-tab" data-bs-toggle="tab" data-bs-target="#additional"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Additional Program
                                </button>
                        </li>
                        
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="content-tab" data-bs-toggle="tab" data-bs-target="#content"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Content
                                </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="testimonial-tab" data-bs-toggle="tab" data-bs-target="#testimonial"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Testimonial
                                </button>
                        </li>

                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="fundraishing-tab" data-bs-toggle="tab" data-bs-target="#fundraishing"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Fundraising
                            </button>
                        </li>
                        
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="album-tab" data-bs-toggle="tab" data-bs-target="#album"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Album
                                </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="tab-tab" data-bs-toggle="tab" data-bs-target="#tab"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Tab
                                </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="blog-tab" data-bs-toggle="tab" data-bs-target="#blog"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Blog
                                </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="final-tab" data-bs-toggle="tab" data-bs-target="#final"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Featured Section
                                </button>
                        </li>
                    </ul>
                    <form class="forms-sample" action="{{ route('homesetting.store') }}" method="POST">
                        @csrf
                        <div class="tab-content col-md-12" id="myTabContent">
                            <div class="tab-pane fade show active container" id="home" role="tabpanel"
                                aria-labelledby="home-tab">
                                {{-- Feature Details --}}
                                <div class="row">
                                    <input type="hidden" value="homesettings" name="table">
                                    
                                    @include('inputs.text',[$data=['service_title','Title','Enter Title','text']])
                                    @include('inputs.text',[$data=['service_sub_title','Sub Title','Enter Title','text']])
                                    @include('inputs.textarea', [
                                        ($data = [
                                            'service_short_description',
                                            'Short Description',
                                            'Enter Description',
                                            '',
                                            'md-6',
                                            '4',
                                        ]),
                                    ]) 
                                    {{-- <div class="form-group col-md-6">
                                        <label for="service_content">Content </label>
                                        <select class="form-control select2 @error('service_content') is-invalid @enderror"
                                           style="width: 100%"  id="service_content" name="service_content[]" multiple>
                                            @foreach ($services as $c)
                                                <option value='{{$c->id}}'>
                                                    {{ $c->title }}</option>
                                            @endforeach
                                        </select>
                                        @error('service_content')
                                            <span class="invalid-feedback"> {{ $message }} </span>
                                        @enderror

                                    </div> --}}
                                    {{-- @include('inputs.file_input',array('enable_featured_image'=>true,'enable_thumb_image'=>true)) --}}
                                </div>

                            </div>

                                <div class="tab-pane fade show container" id="donnation" role="tabpanel"
                                    aria-labelledby="home-tab">
                                    {{-- Feature Details --}}
                                    <div class="row">
                                        <input type="hidden" value="homesettings" name="table">
                                        
                                        @include('inputs.text',[$data=['donner_title','Title','Enter Title','text']])
                                        @include('inputs.text',[$data=['donner_sub_title','Sub Title','Enter Title','text']])
                                        @include('inputs.textarea', [
                                            ($data = [
                                                'donner_short_description',
                                                'Short Description',
                                                'Enter Description',
                                                '',
                                                'md-6',
                                                '4',
                                            ]),
                                        ]) 
                                        {{-- <div class="form-group col-md-6">
                                            <label for="donner_content">Content </label>
                                            <select class="form-control select2 @error('donner_content') is-invalid @enderror"
                                            style="width: 100%" id="donner_content" name="donner_content[]" multiple>
                                                @foreach ($program as $c)
                                                    <option value="{{$c->id}}">
                                                        {{ $c->title }}</option>
                                                @endforeach
                                            </select>
                                            @error('donner_content')
                                                <span class="invalid-feedback"> {{ $message }} </span>
                                            @enderror
    
                                        </div> --}}
                                        {{-- @include('inputs.file_input',array('enable_featured_image'=>true,'enable_thumb_image'=>true)) --}}
                                    </div>
    
                                </div>

                                
                            <div class="tab-pane fade show container" id="testimonial" role="tabpanel"
                            aria-labelledby="home-tab">
                                <div class="row">
                                    @include('inputs.text',[$data=['testimonial_title','Title','Enter Title','text']])
                                    @include('inputs.text',[$data=['testimonial_sub_title','Sub Title','Enter Sub Title','text']])                                
                                </div>
                                
                            </div>
                            <div class="tab-pane fade show container" id="fundraishing" role="tabpanel" 
                            aria-labelledby="home-tab">
                                <div class="row">
                                     @include('inputs.text',[$data=['album_title','Title','Enter Title','text']])
                                    @include('inputs.text',[$data=['album_sub_title','Sub Title','Enter Sub Title','text']])
                                    @include('inputs.textarea', [
                                        ($data = [
                                            'album_short_description',
                                            'Short Description',
                                            'Enter Description',
                                            '',
                                            'md-6',
                                            '4',
                                        ]),
                                    ])
                                    @include('inputs.text',[$data=['album_button_title','Button Title','Enter Button Title','text']])
                                    @include('inputs.text',[$data=['album_button_url','Button URL','Enter Button URL','text']])
                                    @include('inputs.mediainput',[$data=['final_banner','Banner','Enter Banner']])
                                </div>
                            </div>

                            <div class="tab-pane fade show container" id="album" role="tabpanel"
                            aria-labelledby="home-tab">
                            <div class="row">
                               
                                <div class="form-group col-md-12">
                                    <label for="album_content">Content (Recommended 4 Albums) </label>
                                    <select class="form-control select2 @error('album_content') is-invalid @enderror"
                                    style="width: 100%" id="album_content" name="album_content[]" multiple>
                                        @foreach ($album as $c)
                                            <option value='{{$c->id}}'>
                                                {{ $c->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('album_content')
                                        <span class="invalid-feedback"> {{ $message }} </span>
                                    @enderror

                                </div>
                            </div>
                                
                            </div>
                            <div class="tab-pane fade show dcontainer" id="blog" role="tabpanel"
                                aria-labelledby="home-tab">
                                <div class="row">

                                    @include('inputs.text',[$data=['blog_title','Title','Enter Title','text']])
                                    @include('inputs.text',[$data=['blog_sub_title','Sub Title','Enter Sub Title','text']])
                                    
                                </div>
                            </div>

                            <div class="tab-pane fade show dcontainer" id="content" role="tabpanel"
                                aria-labelledby="home-tab">
                                <div class="row">
                                    @include('inputs.selectss',[$data=['tabA_content','Content A'], $option=$page, $default=''])                                   
                                    
                                </div>
                            </div>
                            <div class="tab-pane fade show dcontainer" id="final" role="tabpanel"
                                aria-labelledby="home-tab">
                                <div class="row">
                                    @include('inputs.text',[$data=['final_title','Title','Enter Title','text']])
                                    @include('inputs.text',[$data=['final_icon','Icon Class','Enter Icon Class','text']])
                                    
                                    @include('inputs.text',[$data=['final_url_title','Url Title','Enter URL Title','text']])
                                    @include('inputs.text',[$data=['final_url_link','Url Link','Enter URL Link','text']])
                                    @include('inputs.textarea', [
                                        ($data = [
                                            'final_short_description',
                                            'Short Description',
                                            'Enter Description',
                                            '',
                                            'md-12',
                                            '4',
                                        ]),
                                    ])
                                
                                </div>
                                    
                                
                            </div>

                            <div class="tab-pane fade show dcontainer" id="additional" role="tabpanel"
                            aria-labelledby="home-tab">
                            <div class="row">

                                <div class="form-group col-md-6">
                                    <label for="additional_programs">Programms </label>
                                    <select class="form-control select2 @error('additional_programs') is-invalid @enderror"
                                    style="width:100%" id="additional_programs" name="additional_programs[]" multiple>
                                        @foreach ($programs as $c)
                                            <option value="{{$c->id}}">
                                                {{ $c->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('additional_programs')
                                        <span class="invalid-feedback"> {{ $message }} </span>
                                    @enderror

                                </div>
                            </div>
                        </div>


                            <div class="tab-pane fade show dcontainer" id="tab" role="tabpanel"
                                aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <div class="row">
                                            <div class="form-group col-md-12">
                                                <h3>Tab 1</h3>                                            
                                            </div>
                                            @include('inputs.selectss',[$data=['tabA_content','Content A'], $option=$page, $default=''])
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <div class="row">
                                            <div class="form-group col-md-12">
                                                <h3>Tab 2</h3>                                            
                                            </div>
                                            @include('inputs.selectss',[$data=['tabB_content','Content B'], $option=$page, $default=''])
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <div class="row">
                                            <div class="form-group col-md-12">
                                                <h3>Tab 3</h3>                                            
                                            </div>
                                            @include('inputs.selectss',[$data=['tabC_content','Content C'], $option=$page, $default=''])
                                        </div>
                                    </div>
                                </div>
                                    
                                
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                <a href="{{ route('homesetting.index') }}" class="btn btn-light">Cancel</a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
<script>
    window.onload = function() {
        load_ckeditor('description', false);
        load_ckeditor('short_description', true);
    }
</script>
@endsection
