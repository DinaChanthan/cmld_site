@extends('layouts.app')  

@section('title', 'CMLD | Priceselect')
	
@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $articles = $articles->translate($locale, 'fallbackLocale');
@endphp

<!-- Form -->
<form action="{{route('locationselect')}}" name="frm" method="get">
    <input type="hidden" name="buy_property_for" value="{{app('request')->input('buy_property_for')}}">
    <div class="container no-margin-padding width-100" style="background-image: url({{ Voyager::image($articles[17]->attachment) }})">
        <div class="row no-margin-padding width-100">
            <div class="col-md-6 per-complete bk-complete">
                <h3 style="text-align: right;">50%</h3>
            </div>
            <div class="col-md-6 per-complete"></div>
        </div>
        <div class="row no-margin-padding width-100 ">
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="col-md-1 wow fadeInUp">
        </div>
        <div class="col-md-11 wow fadeInUp">
            <div class="blur-title">{{ strip_tags($wordings[77]->word) }}</div>
            <div class="show-title">{{ strip_tags($wordings[83]->word) }}</div>
        </div>
        <div class="space-text"></div>
        <div class="space-text"></div>
        <div class="space-text"></div>
    </div>
    <div class="row no-margin-padding width-100 bk-blur" >
        <div class="col-md-1 wow fadeInUp" ></div>
            <div class="col-md-2 wow fadeInUp" >
            <div class="box-filter">
                <div class="image">
                    <img src="{{ Voyager::image($articles[21]->attachment) }}">
                </div>
                <div class="title-image">$40,000 - $100,000</div>  
                <div class="radio-input">
                    <input type="radio" name="price_radio" value="40000-100000" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-2 wow fadeInUp" >
            <div class="box-filter">
                <div class="image">
                    <img src="{{ Voyager::image($articles[21]->attachment) }}">
                </div>
                <div class="title-image">$101,000 - $250,000</div>  
                <div class="radio-input">
                    <input type="radio" name="price_radio" value="101000-250000" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-2 wow fadeInUp" >
            <div class="box-filter">
                <div class="image">
                    <img src="{{ Voyager::image($articles[21]->attachment) }}">
                </div>
                <div class="title-image">$251,000 - $400,000</div>  
                <div class="radio-input">
                    <input type="radio" name="price_radio" value="251000-400000" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-2 wow fadeInUp" >
            <div class="box-filter">
                <div class="image">
                    <img src="{{ Voyager::image($articles[21]->attachment) }}">
                </div>
                <div class="title-image">$400,000 - $700,000</div>  
                <div class="radio-input">
                    <input type="radio" name="price_radio" value="400000-700000" class="form-control"/>
                </div>      	        	
            </div>
        </div>
        <div class="col-md-2 wow fadeInUp" >
            <div class="box-filter">
                <div class="image">
                    <img src="{{ Voyager::image($articles[21]->attachment) }}">
                </div>
                <div class="title-image">$700,000+</div>  
                <div class="radio-input">
                    <input type="radio" name="price_radio" value="700001" class="form-control"/>
                </div>      	        	
            </div>
        </div> 
        <div class="col-md-1 wow fadeInUp" >
        </div>
        <div class="row no-margin-padding width-100 " >
            <div class="col-md-8"></div>
                <div class="col-md-2">
                    <div class="space-text"></div>
                    <a class="btn btn-primary" href="{{ URL::previous() }}" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">{{ strip_tags($wordings[85]->word) }}</a>
                </div>
                <div class="col-md-2 " >
                    <div class="space-text"></div>
                    <button type="submit" id="btn121" class="btn btn-primary" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">{{ strip_tags($wordings[86]->word) }}</button>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <div class="space-text"></div>
        <div class="space-text"></div>
    </div>    
</form>
<!-- End Form -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection