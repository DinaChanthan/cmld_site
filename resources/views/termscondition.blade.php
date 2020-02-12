@extends('layouts.app')

@section('title', 'Termscondition')

@section('content')

@php
    $locale = session()->get('locale');
    $articles_all = $articles_all->translate($locale, 'fallbackLocale');
@endphp

<style>
    .content-news a{
        color:#0033a1;
    }
</style>

<!-- Section I -->
<div class="slider-2-containers no-margin-padding width-100">
    <div class="container no-margin-padding width-100">
        <div class="row no-margin-padding width-100">
            <div class="col-md-1"></div>
            <div class="col-md-10 wow fadeInUp">
                <div class="content-news">
                    <h1>{!! $articles_all[26]->title !!}</h1>
                    {!! $articles_all[26]->detail !!}                    
                </div>          
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</div>
<!-- End Section I -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection