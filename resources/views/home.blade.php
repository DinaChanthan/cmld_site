@extends('layouts.app')

@section('title', 'Home')

@section('content')

<!-- Background Style -->
<style>
    .mark-up-style { background: #f0f0ff left top; }
</style>
<!-- End Background Style -->

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $articles = $articles->translate($locale, 'fallbackLocale');
    $latestArticles = $latestArticles->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="slider-2-containers top-contain">
    <div class="container no-margin-padding width-100">
        <div class="row no-margin-padding width-100">
            <div class="col-md-12  no-margin-padding width-100 wow fadeInUp background-screen-res" style="background-image: url({{ Voyager::image($articles[0]->attachment) }})">
            
            <form id="form_search" action="{{route('search.property')}}" method="get" enctype="application/x-www-form-urlencoded">
                <div class="caption">
                    <div class="container search-property">
                        <!-- Space For Search Bar -->
                        <div class="row">
                            <div class="col-md-12 search-sp-responsive">
                                <div class="search-drop"></div>
                            </div>
                        </div>
                        <!-- End Space For Search Bar -->

                        <!-- Search Bar -->
                        <div class="row row-space-responsive">
                            <!-- Header -->
                            
                            <h4 class="find-property">{{strip_tags($articles[0]->title)}}</h4>

                            <!-- Choose Project Name -->
                            <div class="col-md-1 width-25"></div>
                            <div class="col-md-3 search-sp width-25" style="border-radius: 3px 0px 0px 3px;">
                                <div class="search-con">                                			
                                    <div class="search-title">
                                        <input class="" name="project" type="hidden"  id="txt_project">{{ strip_tags($wordings[16]['word']) }}
                                    </div>
                                    <div class="search-drop" >                                			
                                        <div class="dropdown">
                                            <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                <span class="" id="btn_project">{{ strip_tags($wordings[20]->word) }}</span>
                                                <span class="glyphicon glyphicon-menu-down"></span>
                                            </button>
                                            <ul class="dropdown-menu">                                                      													
                                                <li>                                                            
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                </li>   
                                                <li>                                                            
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject( '{{strip_tags($wordings[96]->word)}}','{{ strip_tags($wordings[96]->word) }}')">{{ strip_tags(($wordings[96]->word)) }}</a>
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject( '{{strip_tags($wordings[97]->word)}}','{{ strip_tags($wordings[97]->word) }}')">{{ strip_tags(($wordings[97]->word)) }}</a>
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject( '{{strip_tags($wordings[98]->word)}}','{{ strip_tags($wordings[98]->word) }}')">{{ strip_tags(($wordings[98]->word)) }}</a>
                                                </li>   
                                            </ul>
                                        </div> 
                                    </div>     
                                </div>                           			
                            </div>
                            <!-- End Choose Project Name -->

                            <!-- Choose Location -->
                            <div class="col-md-2 search-sp width-20">
                                <div class="search-con">                                			
                                    <div class="search-title">
                                        <input name="location" type="hidden" id="txt_location">{{ strip_tags($wordings[17]['word']) }}
                                    </div>
                                    <div class="search-drop" >                                			
                                        <div class="dropdown">
                                            <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                <span class="" id="btn_location">{{ strip_tags($wordings[20]->word) }}</span>
                                                <span class="glyphicon glyphicon-menu-down"></span>
                                            </button>
                                            <ul class="dropdown-menu">													
                                                <li>                                                            
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                </li>
                                            
                                                <li>                                                            
                                                    <a id="location_{{ strip_tags($wordings[99]->id) }}" class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('{{ strip_tags($wordings[99]->word) }}','{{ strip_tags($wordings[99]->word) }}')">{{ strip_tags($wordings[99]->word) }}</a>   
                                                    <a id="location_{{ strip_tags($wordings[100]->id) }}" class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('{{ strip_tags($wordings[100]->word) }}','{{ strip_tags($wordings[100]->word) }}')">{{ strip_tags($wordings[100]->word) }}</a> 
                                                    <a id="location_{{ strip_tags($wordings[101]->id) }}" class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('{{ strip_tags($wordings[101]->word) }}','{{ strip_tags($wordings[101]->word) }}')">{{ strip_tags($wordings[101]->word) }}</a> 
                                                    <a id="location_{{ strip_tags($wordings[102]->id) }}" class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('{{ strip_tags($wordings[102]->word) }}','{{ strip_tags($wordings[102]->word) }}')">{{ strip_tags($wordings[102]->word) }}</a>                                                	
                                                </li>
                                            </ul>
                                        </div>                                           
                                    </div>     
                                </div>        
                            </div>
                            <!-- End Choose Location -->

                            <!-- Choose Type -->
                            <div class="col-md-2 search-sp width-20">
                                <div class="search-con">                                			
                                    <div class="search-title">{{ strip_tags($wordings[18]->word) }}</div>
                                    <input name="propertytype" type="hidden" id="txt_type">
                                    <div class="search-drop" >                                			
                                        <div class="dropdown">
                                            <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                <span class="" id="btn_type">{{ strip_tags($wordings[20]->word) }}</span>                                                      
                                                <span class="glyphicon glyphicon-menu-down"></span>
                                            </button>
                                            <ul class="dropdown-menu">												
                                                <li>                                                            
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                </li>
                                            
                                                <li>                                                           	 
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('{{strip_tags($wordings[103]->word)}}','{{ strip_tags($wordings[102]->word) }}')">{{strip_tags($wordings[103]->word)}}</a>
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('{{strip_tags($wordings[104]->word)}}','{{ strip_tags($wordings[102]->word) }}')">{{strip_tags($wordings[104]->word)}}</a>
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('{{strip_tags($wordings[105]->word)}}','{{ strip_tags($wordings[102]->word) }}')">{{strip_tags($wordings[105]->word)}}</a>
                                                </li>  
                                                                          																		
                                            </ul>
                                        </div> 
                                    </div>     
                                </div>     
                            </div>
                            <!-- End Choose Type -->
                            
                            <!-- Choose Price -->
                            <div class="col-md-2 search-sp width-20">
                                <div class="search-con">                                			
                                    <div class="search-title">{{ strip_tags($wordings[19]->word) }}</div>
                                    <input name="price" type="hidden" id="txt_price">
                                    <div class="search-drop" >                                			
                                        <div class="dropdown">
                                            <button class="btn dropdown-toggle" style="font-size: 20px;padding: 0px;" type="button" data-toggle="dropdown">
                                                <span class="" id="btn_price">{{ strip_tags($wordings[20]->word) }}</span>
                                                <span class="glyphicon glyphicon-menu-down"></span>
                                            </button>
                                            <ul class="dropdown-menu">										
                                                <li>                                                            
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[20]->id }},'{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                </li> 
                                                <li>                                                               
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[24]->id }},'{{ strip_tags($wordings[24]->word) }}')">{{ strip_tags($wordings[24]->word) }}</a>	
                                                </li>                                                            
                                                <li>                                                               
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[25]->id }},'{{ strip_tags($wordings[25]->word) }}')">{{ strip_tags($wordings[25]->word) }}</a>
                                                </li>                                                            
                                                <li>                                                               
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[26]->id }},'{{ strip_tags($wordings[26]->word) }}')">{{ strip_tags($wordings[26]->word) }}</a>	
                                                </li>                                                            
                                                <li>                                                               
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[27]->id }},'{{ strip_tags($wordings[27]->word) }}')">{{ strip_tags($wordings[27]->word) }}</a>
                                                </li>                                                            
                                                <li>                                                               
                                                    <a class="" href="javascript:void(0)" onclick="insertDataDropdownPrice({{ $wordings[28]->id }},'{{ strip_tags($wordings[28]->word) }}')">{{ strip_tags($wordings[28]->word) }}</a>
                                                </li>                                                            																	
                                            </ul>
                                        </div> 
                                    </div>     
                                </div>     
                            </div>
                            <!-- End Choose Price -->

                            <!-- Button Search -->
                            <div class="col-md-1 width-15 search-btn-background">
                                <div class="search-con">
                                    <div style="text-align: center;padding-top: 5px;">
                                        <button class="btn dropdown-toggle btn-search" id="btn_submit" onclick="form_search.submit();" name="btn-sm"  type="submit" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-search"></span></button>
                                    </div>                                			
                                </div>     
                            </div>
                            <!-- Button Search -->
                            <div class="col-md-1"></div>
                        </div>
                        <!-- Search Bar -->
                    </div>						
                </div>
            </form>
        </div>
        </div>
    </div>    
</div>
<!-- End Section I -->

<!-- Section II -->
<div class="container session-1 no-margin-padding width-100 contain-fit" >
    <div class="row no-margin-padding width-100 margin-up-top ">
        <div class="col-sm-6 wow fadeInUp show-up" style="padding: 0px;">
            <div class="image-show-left">
                <img style="width: 100%" src="{{ Voyager::image($articles[1]->attachment) }}"/> 
            </div>
            <div class="width-res mark-up-style" ></div>	
        </div>
        <div class="col-sm-6 wow fadeInUp up-margin width-res" style="background: #f0f0ff left top; padding-left: 0px; padding-right: 0px ">
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="combine-right">
                <div class="contain-right-title">{{strip_tags($articles[1]->title)}}</div>
                <div class="space-text"></div>
                <div class="contain-right-article">
                    {{strip_tags($articles[1]->detail)}}
                </div>    
            </div>
            <div class="start-article">
                <a href="{{ route('findassistant') }}" class="btn dropdown-toggle link-size">{{strip_tags($wordings[5]->word)}}
                    <span class="glyphicon glyphicon-arrow-right" style="padding-left: 30px;"></span>
                </a>
                
            </div>
        </div>
    </div>
</div>
<!-- End Section II -->	

<!-- Section III -->
<div class="container no-margin-padding width-100 " >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-12" style="padding: 0px">
            <div class="innumber" style="background-image: url('{{ Voyager::image($articles[3]->attachment) }}')">
                <div class="space-text"></div>
                <div class="combine-right" style="text-align: center; color: #fff; margin: 0 auto;">
                    <div class="contain-right-title" style="color: #fff; max-width: none;">{{ strip_tags($wordings[0]->word) }}</div>
                    <div class="contain-right-article"  style="color: #fff; max-width: 507px; margin: 0 auto;">
                        <p>
                            <span id="docs-internal-guid-5754ab0a-7fff-e88e-22b5-afd396b13e48">
                                <span>{{strip_tags($wordings[1]->word)}}</span>
                            </span>
                        </p>
                    <div>&nbsp;
                </div>    				
            </div>    
        </div>
        <div class="space-text"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInUp">
                    <div class="combine-number">
                        @php
                            $opt = explode('|', strip_tags($wordings[2]->word));
                            $dev = explode('|', strip_tags($wordings[3]->word));
                            $term = explode('|', strip_tags($wordings[4]->word));
                        @endphp
                        <div class="number-of" >{{ $opt[0] }}</div>
                            <div class="num-sp"></div>
                            <div class="num-of-operation">{{ $opt[1] }}</div>
                        </div>
                    </div>        			
                    <div class="col-md-4 wow fadeInUp">
                        <div class="combine-number">
                            <div class="number-of" >{{ $dev[0] }}</div>
                            <div class="num-sp"></div>
                            <div class="num-of-operation">{{ $dev[1] }}</div>
                        </div>
                    </div>        			
                    <div class="col-md-4 wow fadeInUp">
                        <div class="combine-number">
                            <div class="number-of" >{{ $term[0] }}</div>
                                <div class="num-sp"></div>
                                <div class="num-of-operation">{{ $term[1] }}</div>
                            </div>
                        </div>        			
                    </div>
                </div> 
                <div class="combine-right" style="text-align: center;color: #fff; margin: 0 auto; padding-top: 00px;">
                    <div class="contain-right-title" style="color: #fff"></div>
                    <div class="contain-right-article"  style="color: #fff"></div>    
                </div>
            </div>		
        </div>
    </div>
</div>	
<!-- End Section III -->

<!-- Section IV -->
<div class="container no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-sm-12" style="padding: 0px">
            <div class="innumber" style="background-position: center;height:510px;background-image: url('{{ Voyager::image($articles[2]->attachment) }}')">
                <div class="container width-100" style="padding-top: 245px;">
                    <div class="row width-100">        		
                        <div class="col-md-2 wow fadeInUp"></div>
                        <div class="col-md-4 wow fadeInUp" >
                            <div class="act-title-right"> {{strip_tags($wordings[22]->word)}} </div>
                        </div>            				
                        <div class="col-md-4 wow fadeInUp" >
                            <div class="act-title-left">
                                <a class="" href="{{ route('listnews') }}"> {{strip_tags($wordings[23]->word)}}</a>
                            </div>            					
                        </div>       			
                        <div class="col-md-2 wow fadeInUp" ></div>
                    </div>
                </div>  		 
            </div>
            @if($latestArticles)	
            <div class="innumber home-news">
                <div class="container no-margin-padding width-100">
                    <div class="row no-margin-padding width-100">
                        @foreach ($latestArticles as $latestArticle)
                        <div class="col-md-4 wow fadeInUp">
                            <a href="{{ route('article', [$latestArticle->article_type->name,$latestArticle->slug]) }}">
                                <div style="background-image: url('{{ Voyager::image($latestArticle->logo) }}');border-radius: 3px;margin-left: 15px;margin-right: 15px;background-size: cover;">
                                    <div class="news-box" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), #000000);">
                                        <div class="news-type">{{ strip_tags($wordings[29]->word) }}</div>
                                        <div class="news-content">
                                            {{ mb_strlen(strip_tags($latestArticle->title)) > 40 ? mb_substr(strip_tags($latestArticle->title),0,40) : strip_tags($latestArticle->title) }}             
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        @endforeach
                    </div> 
                </div>	
            </div>
            @endif
        </div>
    </div>
</div>
<!-- End Section IV -->

<!-- Space Text -->
<div class="space-text"></div>
<div class="space-text"></div>
<!-- End Space Text -->

<!-- Clear -->
<div class="clear"></div>
<!-- End Clear -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    function insertDataDropdownLocation(){
        
    }
</script>
@endsection