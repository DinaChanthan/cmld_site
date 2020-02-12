@extends('layouts.app')

@section('title', 'Aftersaleservices')

@section('content')

@php 
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $aftersales = $aftersales->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers top-contain">
    <div class="container">
        <div class="row">
            <div class="col-md-12 background-screen-res wow fadeInUp" style="background-image: url({{ Voyager::image($aftersales[11]->attachment) }})">
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
                <h4 class="find-property">{{ $aftersales[11]->title }}</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Section I -->

<!-- Section II -->
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <div class="phone-call-ass">
                <img src="{{ Voyager::image($aftersales[11]->logo) }}" />
            </div>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <div class="text-ass">
                <h1>{{ strip_tags($wordings[57]->word) }}</h1>
                <div class="text-ass-des">
                    <p>{{ strip_tags($wordings[59]->word) }}</p>
                    <p>{{ strip_tags($wordings[60]->word) }}</p>
                    <ul>
                        <li>{{ strip_tags($wordings[61]->word) }}</li>
                    </ul>
                    <ul>
                        <li>{{ strip_tags($wordings[62]->word) }}</li>
                    </ul>
                    <ul>
                        <li>{{ strip_tags($wordings[63]->word) }}</li>
                    </ul>
                    <ul>
                        <li>{{ strip_tags($wordings[64]->word) }}</li>
                    </ul>
                </div>
                <div class="app-download" style="text-align: center;">
                    <a href="https://apps.apple.com/kh/app/chipmong-land/id1474201455" target="_blank"><img src="{{ Voyager::image($aftersales[12]->attachment) }}" /></a>
                    <a href="https://play.google.com/store/apps/details?id=com.chipmong.land&hl=en" target="_blank"><img src="{{ Voyager::image($aftersales[12]->logo) }}" /></a>
                </div>
            </div>
            <div class="space-text"></div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
<!-- End Section II -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection
