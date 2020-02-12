@extends('layouts.app')

@section('title', 'Aboutus')

@section('content')

@php
    $locale = session()->get('locale');
    $projects = $projects->translate($locale, 'fallbackLocale');
    $locations = $locations->translate($locale, 'fallbackLocale');
    $articles = $articles->translate($locale, 'fallbackLocale');
    $latestArticles = $latestArticles->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers top-contain">
    <div class="container" >
        <div class="row">
            <div class="col-md-12 background-screen-res wow fadeInUp" style="background-image: url('{{ Voyager::image($articles[6]->attachment) }}')">
                <div class="row">
                    <div class="col-md-12 search-sp-1">
                        <div class="search-drop"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 search-sp-1">
                        <div class="search-drop"></div>
                    </div>
                </div>
                <div class="row">
                    <h4 class="find-property">{{ strip_tags($wordings[41]->word) }}</h4>
                </div>
            </div>
        </div>
    </div>    
</div>
<!-- End Section I -->

<!-- Section II -->
<div class="container session-1 no-margin-padding width-100">
    <div class="row no-margin-padding width-100">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="title-about-us">{{ strip_tags($wordings[42]->word) }}</div>
            <div class="space-text"></div>
            <div class="content-about-us">
                {!! html_entity_decode($articles[6]->detail) !!}		
            </div>
            <div class="space-text"></div>
            <div class="space-text"></div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>	
<!-- End Section II -->

<!-- Section III -->
<div class="container session-1 no-margin-padding width-100"></div>
<div class="row no-margin-padding width-100">
    <div class="col-sm-6 no-margin-padding wow fadeInUp show-up" style="padding: 0px;">
        <div class="image-show-left" style="margin-top: 0px">
            <img src="{{ Voyager::image($articles[7]->attachment) }}" /> 
        </div>	
    </div>
    <div class="col-sm-12 col-md-6 no-margin-padding wow fadeInUp " style="margin-top: 20px;" >
        <div class="contain-right-title">{{ strip_tags($articles[7]->title) }}</div> 
        <div class="con-about-us" >
                <div class="space-text"></div>
                <div class="contain-right-article">
                    {!! html_entity_decode($articles[7]->detail) !!}
                </div>    
                <div class="space-text"></div>
                <div class="space-text"></div>
        </div>
    </div>
</div>
<!-- End Section III -->

<!-- Section IV -->
<div class="clear"></div>
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100 background-screen-res-about background-screen-res" style="background-image: url('{{ Voyager::image($articles[8]->attachment) }}');">
    </div>
</div>
<!-- End Section IV -->

<!-- Section V -->
<div class="container no-margin-padding width-100" style="min-height: 510px; background: url('{{ Voyager::image($articles[10]->attachment) }}') left bottom rgb(240, 240, 255)">
    <div class="row no-margin-padding"></div>
    <div class="col-md-12">	
        <div class="space-text"></div>
        <div class="space-text"></div>
        <div class="space-text"></div>
        <div class="space-text"></div>
        <div class="space-text"></div>
        <div class="interest-visit"></div>
        <div class="space-text"></div>
        <div class="pro-content"></div>
        <div class="space-text"></div>
        <div class="fac-booking">
            <a class="btn dropdown-toggle aboutus" href="mailto:sales.cmld@chipmong.com?Subject=INVESTOR RELATIONSHIP / MEDIA ENQUIRY" target="_top">
                <span>{{ strip_tags($wordings[47]->word) }}</span>
            </a>
        </div>
        <div class="space-text"></div>
        <div class="fac-article-bk">
            <a class="btn dropdown-toggle btn-call" style="" href="tel:061997888">
                <i class="fas fa-phone-alt"style="padding-right: 10px"></i>{{ strip_tags($wordings[21]->word) }}                                       
            </a>
        </div>
    </div>
</div>	
<!-- End Section V -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection
