@extends('layouts.app')

@section('title', 'Article')

@section('content')

<style>
    .content-news a{
        color:#0033a1;
    }
</style>

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $articles = $articles->translate($locale, 'fallbackLocale');
    $articlestypes = $articlestypes->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers no-margin-padding width-100">
    <div class="container no-margin-padding width-100" >
        <div class="row no-margin-padding width-100">
            <div class="col-md-12 width-100 bk-news wow fadeInUp" style="background-image: url({{ Voyager::image($articles->attachment) }});">
                <div class="container no-margin-padding width-100" >
                    <div class="row no-margin-padding width-100">
                        <div class="title-margin"></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-8">
                            <div class="space-text"></div>
                            <div class="list-cat">
                                <a href="{{ route('index') }}"><span>{{ strip_tags($wordings[48]->word) }} /</span></a>
                                <a href="{{ route('listnews') }}"><span>{{ strip_tags($wordings[31]->word) }} /</span></a>
                                <span class="selected"> {{ strip_tags($wordings[56]->word) }}</span>
                            </div>  
                        </div>      
                    </div>
                    <div class="space-text"></div>
                    <div class="row no-margin-padding width-100" style="height: 1px;border-bottom: 1px solid #fff; opacity: 0.3"></div>
                </div>
                <div class="row no-margin-padding width-100" style="background-image: linear-gradient(to bottom, #0c1a38, #000000); opacity: 0.7;">
                    <div class="col-md-1"></div>
                    <div class="col-md-8">
                        <div class="space-text"></div>
                        @foreach($articlestypes as $articlestype)
                            @if($articlestype->id == $articles->article_type_id)
                            <div class="news-type" style="text-align: left; margin-left: 35px">{{ $articlestype->name }}</div>
                            @endif
                        @endforeach
                        <div class="news-content" style="text-align: left; margin-left: 35px; margin-top: 10px">
                            {{ $articles->title }} 
                        </div>
                       
                    </div>
                    <div class="col-md-3">
                        <div class="social-icon" style="padding: 30px;">
                            <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) return;
                                js = d.createElement(s); js.id = id;
                                js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
                                fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));
                            </script>

                            <!-- Your share button code -->
                            <div class="fb-share-button" data-href="#" data-layout="button_count"></div>        						
                        </div>
                    </div>	
                </div>                       
            </div>
        </div>
    </div>    
</div>
<!-- End Section I -->

<!-- Section II -->
<div class="slider-2-containers no-margin-padding width-100">
    <div class="container no-margin-padding width-100" >
        <div class="row no-margin-padding width-100">
            <div class="col-md-1"></div>
            <div class="col-md-10 wow fadeInUp">
                <div class="content-news">
                    <p>{!! html_entity_decode($articles->detail) !!}</p>        
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</div>
<!-- End Section II -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection