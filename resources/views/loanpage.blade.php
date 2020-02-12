@extends('layouts.app')

@section('title', 'Loanpage')

@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers top-contain" style="width: 100%">
    <div class="container no-margin-padding width-100" style="margin: 0px" >
        <div class="row no-margin-padding width-100" style="margin: 0px">
            <div class="col-md-12 no-margin-padding width-100 wow fadeInUp" style="background-image: url('{{ Voyager::image($articles[23]->attachment) }}');min-height: 896px; background-position: center;z-index: 6;margin: 0px">    
                <div class="space-text">
                    <a href="#" style="background-color: transparent;float: right;color: #fff;width: auto;margin-top: 0px;" class="btn dropdown-toggle link-size">
                        <i class="fa fa-close"></i>
                    </a>
                </div>
                <div class="space-text"></div>
                <div class="space-text"></div>
                <div class="container no-margin-padding width-100" style="margin: 0px">
                <div class="row no-margin-padding width-100" style="margin: 0px">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <div class="form-box loan-input">
                            <h2 class="loan-title">{{ strip_tags($wordings[88]->word) }}</h2>
                            <div class="space-text"></div>    						
                            <div class="slidecontainer">
                            <div class="input-range-title">{{ strip_tags($wordings[89]->word) }}</div>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                <input type="number" name="loan_amount" value="95800" placeholder="{{ strip_tags($wordings[89]->word) }}" class="form-control loan-amount">	
                            </div>		  
                            {{-- <div class="input-range-title" id="_amount_text" style="float:right;margin-top: -60px;color: #0033a1">$50,000</div>  
                            <div id="amount_" class="slider slider-blue" data-prefix="$" data-min="5000" data-step="5000" data-max="1500000" data-value="50000"></div> --}}
                            </div> 
                        <div class="space-text"></div>    						
                        <div class="slidecontainer">
                            <div class="input-range-title">{{ strip_tags($wordings[90]->word) }}</div>
                            <div class="input-group">
                                <span class="input-group-addon">Year</span>
                                <input type="number" name="loan_duration" value="5" placeholder="{{ strip_tags($wordings[90]->word) }}" class="form-control loan-duration">
                            </div>						  
                            {{-- <div class="input-range-title" id="_duration_text" style="float:right;margin-top: -60px;color: #0033a1">5</div>
                            <div class="slider slider-blue" id="duration_" data-prefix="" data-min="1" data-max="25" data-value="5"></div> --}}
                        </div>
                            <div class="space-text"></div>    						
                            <div class="slidecontainer">
                                <div class="apply-loan">
                                    <div class="input-group input-book">
                                        <span class="input-group-addon">%</span>    						  
                                        <input type="number" onchange="changerate()" placeholder="Enter Interest Rate" class="form-control">
                                    </div>
                                    <div class="cml-loan" >
                                        <a href="javascript:void();" onclick="getCMLBankRate(3.99)">{{ strip_tags($wordings[91]->word) }}</a>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 loan-result"></div>
                    <div class="col-md-4 loan-result">
                        <div class="ln-result">
                            <div class="space-text"></div>  
                            <div class="space-text"></div>  
                            <h2 class="result-title">{{ strip_tags($wordings[92]->word) }}</h2>
                            <div class="result-per-month" id="per_month">$931 / {{ strip_tags($wordings[93]->word) }}</div>
                            <div class="space-text"></div>  
                            <div class="loan-text">{{ strip_tags($wordings[94]->word) }}</div>
                            <div class="space-text"></div>
                            <div class="space-text"></div>  
                            <div class="loan-info">
                                <a href="https://www.chipmongbank.com/" target="_blank">
                                    <span >{{ strip_tags($wordings[95]->word) }}</span>
                                    <br/>
                                    <img style="width: 185px;height: 49px;margin-top: 15px" src="{{ Voyager::image($articles_all[25]->attachment) }}">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1 loan-result"></div>
                </div>
                </div>
            </div>
        </div>
    </div>    
</div>
<!-- End Section I -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->

@endsection

@section('extrajs')
<script>
    function getCMLBankRate(val) {
        $('#txtRate').val(val);
        changerate();
    }
    function changerate() {
        var url="https://chipmongland.com/demo/cml/loanpage/calc";
        var amount=$("#amount_").find("span.ui-label").text();
        var duration=$("#duration_").find("span.ui-label").text();
        var rate=$("#txtRate").val();
        $.post(
            url,
            { 'duration':duration,'amount':amount,'interest':rate },
            function(data) {						
                $('#per_month').text(data.rs);									
            },
            "json"				
        );	
    }
</script>

<script src="{{asset('js/calculate/TweenMax.min.js')}}"></script>
<script src="{{asset('js/calculate/jquery-ui-1.10.3.minimal.min.js')}}"></script>
{{-- <script src="{{asset('js/calculate/resizeable.js')}}"></script> --}}

<!-- JavaScripts initializations and stuff -->
{{-- <script src="{{asset('js/calculate/neon-custom.js')}}"></script> --}}
@endsection