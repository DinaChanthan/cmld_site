@extends('layouts.app')
	
@section('title', 'Cambodiapage')

@section('content')

@php
    $locale = session()->get('locale');
    $projects = $projects->translate($locale, 'fallbackLocale');
    $latestArticles = $latestArticles->translate($locale, 'fallbackLocale');
    $articlestypes = $articlestypes->translate($locale, 'fallbackLocale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers top-contain">
    <div class="container" >
        <div class="row">
            <div class="col-md-12 wow background-screen-res fadeInUp" style="background-image: url('{{ Voyager::image($latestArticles[13]->attachment) }}')">
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
                    <h4 class="find-property">{{ strip_tags($wordings[71]->word) }}</h4>
                </div>
            </div>
        </div>
    </div>    
</div>
<!-- End Section I -->	

<!-- End Section II -->
<div class="container no-margin-padding width-100 " >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-12" style="padding: 0px;">		
            <div class="innumber" style="background-image: linear-gradient(111deg, #a98c84, #443161); position: relative; z-index: 99;margin-top: -155px;"></div>
        </div>		
    </div>
</div>
<div class="row width-100 cambodia-info cambodia-info-res">
    <div class="col-md-6">
        <div class="combine-right" style="text-align: center;color: #fff;margin: 0 auto;">
            <div class="contain-right-title" style="color: #fff; max-width: none;">{{ strip_tags($latestArticles[13]->title) }}</div>
            <div class="contain-right-article"  style="color: #fff; max-width: 507px; margin: 0 auto;">
                <p>{{ strip_tags($latestArticles[13]->detail) }}</p>    			
            </div>    
        </div>
    </div>
    <div class="col-md-6" style="margin: 0px;padding: 0px">
        <div class="wow fadeInUp" style="width: 50%;float: left;">
            <div class="combine-number cam-number">
            @php 
                $dev = explode('|', strip_tags($wordings[73]->word));
            @endphp
                <div class="number-of" style="font-size: 45px">{{ $dev[0] }}</div>
                <div class="num-sp" style="width: 50%;margin: 0 auto;"></div>
                <div class="num-of-operation" style="font-size: 16px">{{ $dev[1] }}</div>
            </div>
        </div>        			
        <div class="wow fadeInUp" style="width: 50%;float: left;">
            <div class="combine-number cam-number">
            @php 
                $str = explode('|', strip_tags($wordings[74]->word));
            @endphp
                <div class="number-of" style="font-size: 45px">{{ $str[0] }}</div>
                <div class="num-sp" style="width: 50%;margin: 0 auto;"></div>
                <div class="num-of-operation" style="font-size: 16px">{{ $str[1] }}</div>
            </div>
        </div>        			
        <div class="wow fadeInUp" style="width: 50%;float: left;">
            <div class="combine-number cam-number">
            @php 
                $data = explode('|', strip_tags($wordings[75]->word));
            @endphp
                <div class="number-of" style="font-size: 45px">{{ $data[0] }}</div>
                <div class="num-sp" style="width: 50%;margin: 0 auto;"></div>
                <div class="num-of-operation" style="font-size: 16px">{{ $data[1] }}</div>
            </div>
        </div> 
        <div class="wow fadeInUp" style="width: 50%;float: left;">
            <div class="combine-number cam-number">
            @php 
                $end = explode('|', strip_tags($wordings[76]->word));
            @endphp
                <div class="number-of" style="font-size: 45px">{{ $end[0] }}</div>
                <div class="num-sp" style="width: 50%;margin: 0 auto;"></div>
                <div class="num-of-operation" style="font-size: 16px">{{ $end[1] }}</div>
            </div>
        </div>        			
    </div>
</div>	
<!-- End Section II -->

<!-- Section III -->
<div class="container session-1 no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-6 wow fadeInUp" style="padding: 0px"></div>			
        <div class="col-sm-6 wow fadeInUp" style="padding: 0px"></div>
    </div>
    <div class="row no-margin-padding width-100">
        <div class="col-sm-3 width-50 no-margin-padding">
            <div class="image-show-left-cam" >
                <img src="{{ Voyager::image($latestArticles[14]->attachment) }}"/> 					
            </div>
        </div>
        <div class="col-sm-3 text-cam no-margin-padding hide-w-res"></div>
        <div class="col-sm-6 text-cam wow fadeInUp" >
            <div class="combine-right-cam">
                <div class="contain-right-title-cam">{{ strip_tags($latestArticles[14]->title) }}</div>  
                <div class="space-text"></div>
                <div class="contain-right-article">
                    <p>{{ strip_tags($latestArticles[14]->detail) }}</p>   
                </div>    
            </div>
        </div>
    </div>
</div>	
<!-- End Section III -->

<!-- Section IV -->
<div class="container session-1 no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-md-2"></div>
        <div class="col-md-8">		
            <div class="space-text"></div>
            <div class="content-about-us">
                {{ strip_tags($latestArticles[15]->detail) }}
            </div>
            <div class="space-text"></div>
            <div class="space-text"></div>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row no-margin-padding width-100 background-screen-res" style="background-image: url('{{ Voyager::image($latestArticles[15]->attachment) }}')">
    </div>
</div>
<!-- End Section IV -->

<!-- Section V -->
<div class="container session-1 no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-6 wow fadeInUp" style="padding: 0px"></div>			
        <div class="col-sm-6 wow fadeInUp" style="padding: 0px"></div>
    </div>
    <div class="row no-margin-padding width-100">
        <div class="col-sm-3 width-50 no-margin-padding">
            <div class="image-show-left-cam" >
                <img src="{{ Voyager::image($latestArticles[16]->attachment) }}"/> 					
        </div>
    </div>
    <div class="col-sm-3 text-cam no-margin-padding hide-w-res"></div>
        <div class="col-sm-6 text-cam wow fadeInUp" >
            <div class="combine-right-cam">
                <div class="contain-right-title-cam">{{ strip_tags($latestArticles[16]->title) }}</div>  
                <div class="space-text"></div>
                <div class="contain-right-article">
                    <p>{{ strip_tags($latestArticles[16]->detail) }}</p>
                </div>    
            </div>
        </div>
    </div>
</div>	
<!-- End Section V-->

<!-- Section VI -->
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="row no-margin-padding width-100">
    <div class="col-sm-1" style="padding: 0px;margin-left: 65px"></div>
    <div class="col-sm-10" style="padding: 0px">
        <div class="related-article">{{ strip_tags($wordings[72]->word) }}</div>
    </div>
</div>

<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>
<div class="space-text"></div>

<div class="container no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-12" style="padding: 0px">	
            <div class="innumber home-news">
                <div class="container">
                    <div class="row">
                    @foreach($articlestypes as $articlestypes)
                        @foreach($articlestypes->articles->translate($locale, 'fallbackLocale') as $article)
                            <div class="col-md-4 wow fadeInUp">
                                <a href="{{ route('article', [$article->name, $article->slug]) }}">
                                    <div class="bk-news-list" style="background-image: url({{ Voyager::image($article->attachment) }}); border-radius: 3px;margin-left: 15px;margin-right: 15px;background-size: cover;">
                                        <div class="news-box" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), #000000);">
                                            <div class="news-type">{{ $articlestypes->name }}</div>
                                            <div class="news-content">
                                                {{ $article->title }}  
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    @endforeach
                    </div> 
                </div>	
            </div>	
        </div>
    </div>
</div>

<div class="space-text"></div>
<div class="space-text"></div>	
<!-- End Section VI -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection
