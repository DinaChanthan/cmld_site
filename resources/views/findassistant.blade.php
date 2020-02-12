@extends('layouts.app')
	
@section('title', 'Findassistant')

@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $articles = $articles->translate($locale, 'fallbackLocale');
@endphp

<!-- Form -->
<form name="frm" action="{{ route('priceselect') }}">
    <div class="container no-margin-padding width-100" style="background-image: url({{ Voyager::image($articles[17]->attachment) }})">
        <div class="row no-margin-padding width-100">
            <div class="col-md-2 per-complete bk-complete" ></div>
            <div class="col-md-10 per-complete" >
                <h3>30%</h3>
            </div>   
        </div>
        <div class="row no-margin-padding width-100">
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="col-md-1 wow fadeInUp" >
        </div>
        <div class="col-md-11 wow fadeInUp" >
            <div class="blur-title">{{ strip_tags($wordings[77]->word) }}</div>
            <div class="show-title">{{ strip_tags($wordings[78]->word) }}</div>
        </div>
        <div class="space-text"></div>
        <div class="space-text"></div>
    </div>
    <div class="row no-margin-padding width-100 bk-blur" >
        <div class="col-md-1 wow fadeInUp" ></div>
        <div class="col-md-3 wow fadeInUp" >
            <div class="box-filter">
                <div class="image" style="">
                    <img src="{{ Voyager::image($articles[18]->attachment) }}">
                </div>
                <div class="title-image">{{ strip_tags($wordings[79]->word) }}</div>  
                <div class="radio-input">
                    <input type="radio" name="buy_property_for" value="1" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-3 wow fadeInUp" >
            <div class="box-filter">
                <div class="image" style="padding-top: 40px;"> <img src="{{ Voyager::image($articles[19]->attachment) }}"></div>
                <div class="title-image">{{ strip_tags($wordings[80]->word) }}</div>  
                <div class="radio-input">
                    <input type="radio" name="buy_property_for" value="2" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-3 wow fadeInUp" >
            <div class="box-filter">
                <div class="image" style="">
                    <img src="{{ Voyager::image($articles[20]->attachment) }}">
                </div>
                <div class="title-image">{{ strip_tags($wordings[81]->word) }}</div>  
                <div class="radio-input">
                    <input type="radio" name="buy_property_for" value="3" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-1 wow fadeInUp" ></div>
        <div class="row no-margin-padding width-100 " >
            <div class="col-md-10" ></div>
                <div class="col-md-2" >
                    <div class="space-text"></div>
                    <button type="submit" id="btn121" class="btn btn-primary" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">{{ strip_tags($wordings[82]->word) }}</button>
                </div>
                <div class="col-md-1" ></div>
            </div>
        </div>
        <div class="space-text"></div><div class="space-text"></div>
    </div>    
</form>
<!-- End Form -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection