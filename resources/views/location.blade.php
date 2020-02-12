@extends('layouts.app')

@section('content')

@php
    $locale = session()->get('locale');
	$wordings = $wordings->translate($locale, 'fallbackLocale');
	$projects = $projects->translate($locale, 'fallbackLocale');
@endphp

<form action="{{route('search.byassistant')}}" name="frm" method="get">
	<input type="hidden" name="buy_property_for" value="{{app('request')->input('buy_property_for')}}">
	<input type="hidden" name="price_radio" value="{{app('request')->input('price_radio')}}">

	<div class="container no-margin-padding width-100" style="background-image: url('https://chipmongland.com//script/root/backgroundpopup/background-loan.jpg')">
		<div class="row no-margin-padding width-100">
			<div class="col-md-5 per-complete bk-complete"></div>
		 	<div class="col-md-1 per-complete bk-complete">
				<h3 style="text-align: right;: ">80%</h3>
		 	</div>
		 	<div class="col-md-4 per-complete bk-complete"></div>
		 	<div class="col-md-2 per-complete"></div>
		</div>
		<div class="row no-margin-padding width-100">
		 	<div class="space-text"></div>
		 	<div class="space-text"></div>
            <div class="space-text"></div>
		 	<div class="col-md-1 wow fadeInUp"></div>
            <div class="col-md-11 wow fadeInUp">
        	    <div class="blur-title">{{ strip_tags($wordings[77]->word) }}</div>
		 	    <div class="show-title">{{ strip_tags($wordings[84]->word) }}</div>
            </div>		 	
		 	<div class="space-text"></div><div class="space-text"></div>
		</div>

		@foreach($projects as $project)
        <div class="col-md-6 wow fadeInUp" style="margin-top: 30px">
        	<div class="box-filter">
        		<div class="image"> <img src="https://chipmongland.com//script/root/Image/FilterProject/pin@2x.png"></div>
        		<div class="title-image">{{$project->name}}</div>  
        		<div class="radio-input">
        			<input type="radio" name="location_radio" value="{{$project->id}}" class="form-control"/>
        		</div>      	        	
        	</div>
        </div>  
		@endforeach  
		
    </div>
    <div class="row no-margin-padding width-100">
        <div class="col-md-7" >
    </div>
    <div class="col-md-2" >
        <div class="space-text"></div>
        <a class="btn btn-primary" href="{{ URL::previous() }}" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">{{ strip_tags($wordings[85]->word) }}</a>
    </div>   
    <div class="col-md-2 ">
        <div class="space-text"></div>
        <button type="submit" id="btn121" class="btn btn-primary" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">{{ strip_tags($wordings[86]->word) }}</button>
    </div>
</div>
   	<div class="space-text"></div><div class="space-text"></div>
</div>
<!-- End Session 1 -->
</form>

@endsection