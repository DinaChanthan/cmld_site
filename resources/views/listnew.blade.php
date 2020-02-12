@extends('layouts.app')

@section('title', 'Listnews')

@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers no-margin-padding width-100">
    <div class="container">
        <div class="row">
            <div class="col-md-12 wow fadeInUp " style="background-image: url('{{ Voyager::image($articles_all[22]->attachment) }}'); min-height: 596px;
            background-position: center; background-position-x: 0px;
            background-position-y: 0px; z-index: 6">
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="container ">
                    <div class="row">
                        <div class="title-margin">{{ strip_tags($wordings[31]->word) }}</div>
                        <div class="col-md-1"></div>
                        <div class="col-md-8">
                            <div class="space-text"></div>
                            <div class="space-text"></div>
                            <div class="space-text"></div>
                            <div class="space-text"></div>
                            <div class="list-cat">
                                <a href="{{ route('listnews') }}"><span class="{{ Request()->name == null ? 'selected' : ''}}">{{ strip_tags($wordings[20]->word) }}</span></a>
                                @foreach($articlestypes as $type)
                                @php
                                    $type_en = $type->translate('en', 'fallbackLocale');
                                    $type = $type->translate($locale, 'fallbackLocale');
                                @endphp
                                <a style="text-transform: uppercase;" href="{{ route('listnew', $type_en->name) }}"><span class="{{ Request()->name == $type_en->name ? 'selected' : '' }}">{{ $type->name }}</span></a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Section I -->

<!-- Section II -->
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">
        <div class="innumber list-news" style="">
            <div class="container no-margin-padding width-100">
                <div class="row no-margin-padding width-100">
                <div class="col-md-12 {{count($getArtcles) > 0 ? 'hide-carousel-control' : ''}}">
                    <div class="alert alert-info margin-top-15" role="alert">
                        No articles found!
                    </div>
                </div>
                @foreach($getArtcles as $article)
                    @php
                        $articletype_en = $article->article_type->translate('en', 'fallbackLocale');
                        $articletype = $article->article_type->translate($locale, 'fallbackLocale');
                        $article_en = $article->translate('en', 'fallbackLocale');
                        $article = $article->translate($locale, 'fallbackLocale');
                    @endphp
                    <div class="col-md-4 wow fadeInUp">
                        <a href="{{ route('article', [$articletype_en->name, $article_en->slug]) }}">
                            <div class="bk-news-list" style="background-image: url('{{ Voyager::image($article->attachment) }}'); border-radius: 3px;">
                                <div class="news-box"
                                    style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), #000000);">
                                    <div class="news-type">{{ $articletype->name }}</div>
                                    <div class="news-content">{{ $article->title }}</div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Section II -->

<!-- Space Text -->
<div class="space-text"></div>
<div class="space-text"></div>
<!-- End Space Text -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection