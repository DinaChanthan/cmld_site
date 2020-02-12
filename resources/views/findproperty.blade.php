@extends('layouts.app')

@section('title', 'Findproperty')

@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
@endphp

<!-- Section I -->
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">	
        <div class="col-md-12 no-margin-padding">
    <div>
    <div class="container" style="padding: 0px; width: 100%; z-index: 10; position: relative;">
        <div class="row no-margin-padding ">
            <div class="col-md-12 no-margin-padding width-100" style="height: 300px; background-position: center; background-position-x: 0px; background-position-y: 0px; background-color: #1a1e34;">                
                <form id="form_search" class="form-width" style="margin: 0 auto;" action="{{route('search.property')}}" method="get" name="form_search" enctype="application/x-www-form-urlencoded">
                    <div class="caption">
                        <div class="container search-property no-margin-padding width-100 margin-z">
                            <h4 class="find-property" style="text-align: left;">{{ strip_tags($wordings[36]->word) }}</h4>
                            @php
                                $wordings37 = $wordings[37]->translate($locale,'fallBackLocale');
                                $div = explode('|', strip_tags($wordings37->word));
                            @endphp
                            @if($locale == 'kh')
                             <h4 class="found-property" >{{ $div[0] }} {{ $getpropertytypes->count() }} {{ $div[1] }} </h4>
                            @else
                                <h4 class="found-property" >{{ $getpropertytypes->count() }} {{ $div[1] }}</h4>
                            @endif
                            <div class="row no-margin-padding width-100 ">
                                <div class="col-md-1 width-25"></div>

                                <!-- Choose Project Name -->
                                <div class="col-md-3 search-sp width-25" style="border-radius: 3px 0px 0px 3px;border: none; ">
                                    <div class="search-con">                                			
                                        <div class="search-title" >
                                            <input name="project" type="hidden" id="txt_project" value="{{Request::get('project')}}"/>{{ strip_tags($wordings[16]['word']) }}
                                        </div>
                                        <div class="search-drop" >                                			
                                            <div class="dropdown">
                                                <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                    <span id="btn_project">
                                                    @foreach ($projects as $project)
                                                        @php
                                                            $project_en = $project->translate('en','fallBackLocale');
                                                            $project = $project->translate(session()->get('locale'),'fallBackLocale');
                                                            $project_en->name == Request::get('project') ? $selectedproject = $project->name : "";
                                                        @endphp
                                                    @endforeach
                                                    
                                                    {{ Request::get('project') ? $selectedproject : strip_tags($wordings[20]->word) }}
                                                    
                                                    </span>
                                                    <span class="glyphicon glyphicon-menu-down"></span>
                                                </button>
                                                <ul class="dropdown-menu">                                                      													
                                                    <li>                                                            
                                                        <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                    </li>   
                                                    
                                                    @foreach ($projects as $project)
                                                    @php
                                                        $project_en = $project->translate('en','fallBackLocale');
                                                        $project = $project->translate(session()->get('locale'),'fallBackLocale');
                                                    @endphp
                                                        <li>                                                            
                                                            <a class="" href="javascript:void(0)" onclick="insertDataDropdownProject( '{{$project_en->name}}','{{ strip_tags($project->name) }}')">{{ strip_tags($project->name) }}</a>
                                                        </li>    
                                                    @endforeach                                                          																				
                                                </ul>
                                            </div> 
                                        </div>     
                                    </div>                           			
                                </div>
                                <!-- End Choose Project Name -->

                                <!-- Choose Location -->
                                <div class="col-md-2 search-sp width-20" style="border: none;">
                                    <div class="search-con">                                			
                                        <div class="search-title">
                                            <input name="location" type="hidden" id="txt_location" value="{{Request::get('location')}}"/>{{ strip_tags($wordings[17]->word) }}</div>
                                            <div class="search-drop" >                                			
                                                <div class="dropdown">
                                                <button class="btn dropdown-toggle" style="font-size: 20px;padding: 0px;" type="button" data-toggle="dropdown">
                                                    <span id="btn_location" style="font-family: Bison, koulen;">
                                                        @foreach ($locations as $location)
                                                        @php
                                                            $location_en = $location->translate('en', 'fallbackLocale');
                                                            $location = $location->translate($locale, 'fallbackLocale');
                                                            Request::get('location') == $location_en->name ? $selectedlocation = $location->name : "";
                                                        @endphp
                                                        @endforeach 

                                                        {{ Request::get('location') ? $selectedlocation : strip_tags($wordings[20]->word) }}
                                                    </span>
                                                    <span class="glyphicon glyphicon-menu-down"></span>
                                                </button>
                                                <ul class="dropdown-menu">													
                                                    <li>                                                            
                                                        <a class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                    </li>
                                                    @foreach ($locations as $location)
                                                        @php
                                                            $location_en = $location->translate('en', 'fallbackLocale');
                                                            $location = $location->translate($locale, 'fallbackLocale');
                                                        @endphp
                                                        <li>
                                                            <a class="" href="javascript:void(0)" onclick="insertDataDropdownLocation('{{$location_en->name}}','{{strip_tags($location->name)}}')">{{strip_tags($location->name)}}</a>
                                                        </li>
                                                    @endforeach                                                         																			
                                                </ul>
                                            </div> 
                                        </div>     
                                    </div>        
                                </div>
                                <!-- End Choose Location -->

                                <!-- Choose Type -->
                                <div class="col-md-2 search-sp width-20" style="border: none;">
                                    <div class="search-con">                                			
                                        <div class="search-title" >{{ strip_tags($wordings[18]->word) }}</div>
                                        <input name="propertytype" type="hidden"  id="txt_type" value="{{Request::get('propertytype')}}"/>
                                        <div class="search-drop" >                                			
                                            <div class="dropdown">
                                                <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                    <span id="btn_type">
                                                        @foreach ($propertytypes  as $propertytype)
                                                        @php
                                                            $propertytype_en = $propertytype->translate('en','fallBackLocale');
                                                            $propertytype = $propertytype->translate($locale,'fallBackLocale');
                                                            $propertytype_en->name == Request::get('propertytype') ? $selectedproptype = $propertytype->name : "";
                                                        @endphp
                                                        @endforeach
                                                        {{ Request::get('propertytype') ? $selectedproptype : strip_tags($wordings[20]->word) }}
                                                    </span>                                                      
                                                    <span class="glyphicon glyphicon-menu-down"></span>
                                                </button>
                                                <ul class="dropdown-menu">                                           
                                                    <li>                                                            
                                                        <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('0','{{ strip_tags($wordings[20]->word) }}')">{{ strip_tags($wordings[20]->word) }}</a>                                                            	
                                                    </li>
                                                    @foreach ($propertytypes  as $propertytype)
                                                    @php
                                                        $propertytype_en = $propertytype->translate('en','fallBackLocale');
                                                        $propertytype = $propertytype->translate($locale,'fallBackLocale');
                                                    @endphp
                                                    <li>                                                           	 
                                                        <a class="" href="javascript:void(0)" onclick="insertDataDropdownType('{{$propertytype_en->name}}','{{ $propertytype->name }}')">{{strip_tags($propertytype->name)}}</a>
                                                    </li>  
                                                    @endforeach                                                           
                                                </ul>
                                            </div> 
                                        </div>     
                                    </div>     
                                </div>
                                <!-- End Choose Type -->

                                <!-- Choose Price -->
                                <div class="col-md-2 search-sp width-20" style="border: none;">
                                    <div class="search-con">                                			
                                        <div class="search-title" >{{ strip_tags($wordings[19]->word) }}</div>
                                        <input name="price" type="hidden"  id="txt_price" value="{{Request::get('price')}}"/>
                                        <div class="search-drop" >                                			
                                            <div class="dropdown">
                                            <button class="btn dropdown-toggle" style="font-size: 20px; padding: 0px;" type="button" data-toggle="dropdown">
                                                <span id="btn_price">
                                                    
                                                    {{ Request::get('price') ? (Request::get('price')==$wordings[20]->id ? strip_tags($wordings[20]->word) : 
                                                        (Request::get('price') == $wordings[24]->id ? strip_tags($wordings[24]->word) : 
                                                        (Request::get('price') == $wordings[25]->id ? strip_tags($wordings[25]->word) : 
                                                        (Request::get('price') == $wordings[26]->id ? strip_tags($wordings[26]->word) :
                                                        (Request::get('price') == $wordings[27]->id ? strip_tags($wordings[27]->word) :
                                                        (Request::get('price') == $wordings[28]->id ? strip_tags($wordings[28]->word) :
                                                        "")))))) : strip_tags($wordings[20]->word) }}
                                                
                                                </span>
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
                                <!-- End Choose Price -->    
                            </div>
                                
                            <div class="col-md-1 width-15 search-btn-background" >
                                <div class="search-con" >
                                    <div style="text-align: center;padding-top: 5px;">
                                        <button class="btn dropdown-toggle btn-search" id="btn_submit" onclick="form_search.submit();"  name="btn-sm" type="submit" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-search"  ></span></button>
                                    </div>                                			
                                </div>     
                            </div>
                            <div class="col-md-1"></div>		
                        </div>
                    </div>		
                </form>
            </div>
        </div>
    </div>
</div>
<!-- End Section I -->

<!-- Section II -->
<div class="container no-margin-padding width-100" style="padding: 0px; width: 100%; z-index: 0; position: relative;" id="contain-search">
    <div class="row no-margin-padding width-100 padding-z" style="padding-top: 80px;"></div>
    <div class="col-md-1"></div>
    <div class="col-md-10" style="padding:0px !important">
        <div class="container-responsive">
            @php
                $getprojects = $getpropertytypes->translate($locale, 'fallbackLocale');
                $datamap = "";
                $propertytype = (Request()->propertytype ? Request()->propertytype : 'alltype');
                $i = 1;
            @endphp
            @foreach($getprojects as $project)
            <div class="col-sm-6 wow fadeInUp box">
                    <a href="{{ route('foundproperty', [Crypt::encrypt($project->id), $propertytype]) }}">
                        <div class="found-image" >
                            <img src="{{ Voyager::image($project->background) }}"/>
                        </div>
                        <div class="found-con">
                            <div class="found-title">{{ $project->name }}</div>				
                            <div class="found-add">{{ $project->address }}</div>							
                        </div>
                        <div class="found-last">
                            <div class="price-rank agent_commission_model">{{ strip_tags($wordings[38]->word) }} {{ $project->start_price }} USD</div>
                            <div class="quater-finish"></div>
                        </div>
                    </a>
                </div>
    
                @php
                    $latlong = substr($project->location, 6);
                    $latlong = explode(",",str_replace(" ", ",", substr($latlong, 0, strlen($latlong) - 1)));
                    $datamap .= ($i > 1 ? ',':'').'{"DisplayText":"<b>'.$project->name.'</b>", "ADDRESS":"'.$project->address.'", "LatitudeLongitude":"'.$latlong[1].','.$latlong[0].'", "MarkerId":"'.$project->id.'"}';
                    $i++;
                @endphp
            @endforeach
        </div>
    </div>
    <div class="col-md-1"></div>
    
</div>	
<!-- End Section II -->

<!-- Map Display  -->
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">
        <div class="col-md-12 no-margin-padding width-100 wow fadeInUp">
            <div id="map-canvas" style="height: 510px">
            </div>
        </div> 
    </div>
</div>
<!-- End Map Display -->
@endsection


@section('extrajs')

<!-- End Google API Key -->
<!-- Google Map View API-->
<script lang="en">
    var map;
    var geocoder;
    var marker;
    var people = new Array();
    var latlng;
    var infowindow;

    function initialize() {
      
      var z=10;
        var mapOptions = {
              center: new google.maps.LatLng(11.629649, 104.8869744),
            zoom: z,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

      // Get data from database. It should be like below format or you can alter it.

      //var data = '[{ "DisplayText": "adcv", "ADDRESS": "Jamiya Nagar Kovaipudur Coimbatore-641042", "LatitudeLongitude": "10.9435131,76.9383790", "MarkerId": "Customer" },{ "DisplayText": "abcd", "ADDRESS": "Coimbatore-641042", "LatitudeLongitude": "11.0168445,76.9558321", "MarkerId": "Customer"}]';
      var data = '[{!! $datamap !!}]';

      people = JSON.parse(data); 
      
      for (var i = 0; i < people.length; i++) {
        setMarker(people[i]);
      }
    }

    function setMarker(people) {
        geocoder = new google.maps.Geocoder();
        infowindow = new google.maps.InfoWindow();
        if ((people["LatitudeLongitude"] == null) || (people["LatitudeLongitude"] == 'null') || (people["LatitudeLongitude"] == '')) {
        geocoder.geocode({ 'address': people["Address"] }, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
            latlng = new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng());
            marker = new google.maps.Marker({
                position: latlng,
                map: map,
                draggable: false,
                html: people["DisplayText"],
                icon: "images/marker/" + people["MarkerId"] + ".png"
            });
            //marker.setPosition(latlng);
            //map.setCenter(latlng);
            google.maps.event.addListener(marker, 'click', function(event) {
                infowindow.setContent(this.html);
                infowindow.setPosition(event.latLng);
                infowindow.open(map, this);
            });
            alert('test');
            }
            else {
            alert(people["DisplayText"] + " -- " + people["Address"] + ". This address couldn't be found");
            }
        });
    }
    else {
      var latlngStr = people["LatitudeLongitude"].split(",");
      var lat = parseFloat(latlngStr[0]);
      var lng = parseFloat(latlngStr[1]);
      latlng = new google.maps.LatLng(lat, lng);
      marker = new google.maps.Marker({
        position: latlng,
        map: map,
        draggable: false,               // cant drag it
        html: people["DisplayText"]    // Content display on marker click
        //icon: "images/marker.png"       // Give ur own image
      });
      //marker.setPosition(latlng);
      //map.setCenter(latlng);
      google.maps.event.addListener(marker, 'click', function(event) {
        infowindow.setContent(this.html);
        infowindow.setPosition(event.latLng);
        infowindow.open(map, this);
      });
    }
  }
</script>
<!-- End Google Map View API-->

<!-- Semiconlon Separate Number -->
<script>
    function numberWithCommas(number) {
        var parts = number.toString().split(".");
        parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        return parts.join(".");
    }
    $(document).ready(function() {
        $(".agent_commission_model").each(function() {
            var num = $(this).text();
            var commaNum = numberWithCommas(num);
            $(this).text(commaNum);
        });
    });
</script>
<!-- End Semiconlon Separate Number -->

<!-- Google API Key --> 
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALs_IVe8MbehimtbG7mX49d42uuIQSVNU&callback=initialize" type="text/javascript"></script>

@endsection

