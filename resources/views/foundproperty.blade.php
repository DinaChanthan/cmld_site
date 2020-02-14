@extends('layouts.app')
		
@section('title', 'Foundproperty')

@section('content')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
    $locations = $locations->translate($locale, 'fallbackLocale');
    $projects = $projects->translate($locale, 'fallbackLocale');
    $propertyname_en = $projects->propertytype[0]->translate('en', 'fallbackLocale');
    $propertyname = $projects->propertytype[0]->translate($locale, 'fallbackLocale');
    $projectsizes = $projects->projectsize->translate($locale, 'fallbackLocale');
    $properties = $properties->translate($locale, 'fallbackLocale');
    $facility = $projects->facility->translate($locale, 'fallbackLocale');
@endphp



<!-- Section I -->
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">	
        <div class="col-md-1"></div>
        <div class="col-md-4 wow fadeInUp">
        <div class="space-text"></div>
            <div class="list-cat-found">
                <a href="{{ route('index') }}"><span>{{ strip_tags($wordings[48]->word) }} /</span> </a>    						
                <a href="{{ route('findproperty', $propertyname_en->name) }}"><span> {{ strip_tags($wordings[49]->word) }} /</span></a>
                <span>{{ $propertyname->name }}</span>
            </div>  
            <div class="space-text"></div>
           
            <div class="project-logo" style="">
                <img src="{{ Voyager::image($projects->logo) }}"/>
            </div>
            
            <div class="space-text"></div>
            <div class="project-text">
                <p>{{ strip_tags($projects->title) }}</p>
            </div>
            <div class="space-text"></div>
            <div class="project-status">
        </div>
        </div>
       
        <div class="col-md-7 wow fadeInUp no-margin-padding" style="padding-left: 0px;">
            <div class="project-background">
                <img src="{{ Voyager::image($projects->background)  }}"/>
            </div>			
        </div>
       
    </div>
</div>
<!-- End Section I -->

<!-- Section Project Detail & Size -->
<div class="container no-margin-padding width-100">
    <div class="row width-100 text-top"  >	
        <div class="col-md-1"></div>
        <div class="col-md-4 wow fadeInUp no-margin-padding fire-fox" >
            <div class="project-status-read agent_commission_model">{{ strip_tags($wordings[38]['word']) }} {{ $projects->start_price }} USD</div>
            <div class="space-text"></div>
            <div class="loan-calculator">
                <a class="btn dropdown-toggle" href="{{ route('loanpage') }}" style="font-size: 20px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #0c1a38" type="button">
                    <i class="fa fa-calculator"></i>
                    <span >{{ strip_tags($wordings[50]->word) }}</span>
                </a>
            </div>
            <div class="space-text"></div>
            <div class="project-detail">
                <h3 style="font-size: 25px;">{{ strip_tags($wordings[40]->word) }}</h3>
                <div class="space-text"></div>
                <div class="project-content">
                    <p>{{ strip_tags($projects->detail) }}</p>
                    <div class="space-text"></div>
                    
				</div>
                <div class="space-text"></div>
            </div>
        </div>
        <div class="col-md-7 wow fadeInUp no-margin-padding fei-z1 no-margin-180" style="padding-left: 0px;">
        @foreach($projectsizes as $projectsize)
            <div class="project-size">
                <div class="space-text"></div>
                <div class="project-size-number">{{ $projectsize->total }}<div class="space-text"></div>
            </div>
            <div class="space-text"></div>
            <div class="project-size-of">{{ $projectsize->title }}</div>
            <div class="space-text"></div>
        </div>
        @endforeach
        </div>
    </div>
</div>
<!-- End Section Project Detail & Size -->

<!-- Tab Bar Section -->
<ul class="nav nav-pills mb-3 width-100 nav-justified" id="pills-tab" role="tablist">
    @foreach($properties as $property)
        <li class="nav-item {{ $loop->first ? 'active' : '' }} in">
            <a class="nav-link" data-toggle="pill" href="#{{ $property->id }}" role="tab" aria-controls="pills-home" aria-selected="true">{{ $property->name }}</a>
        </li>	        
    @endforeach
</ul>

<div class="tab-content width-100" id="pills-tabContent">
    @foreach($properties as $property)
    <div class="tab-pane fade {{ $loop->first ? 'active' : '' }} in" id="{{ $property->id }}" role="tabpanel">
        <div class="pro-full">    
            <div class="container no-margin-padding width-100">
                <div class="row no-margin-padding width-100">
                    <div class="col-md-6">
                            <div class="pro-layout">
                                <div id="myCarousel_{{ $property->id }}" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators {{count(json_decode($property->layout)) == 1 ? 'hide-carousel-control' : ''}}">
                                        @foreach(json_decode($property->layout) as $layout)
                                            <li data-target="#myCarousel_{{ $property->id }}" data-slide-to="1" class="{{$loop->first ? 'active': ''}}"></li>
                                        @endforeach
                                    </ol>
                                    <div class="carousel-inner">
                                    @foreach(json_decode($property->layout) as $layout)
                                            <div class=" item {{ $loop->first ? 'active' : 'item' }} ">
                                                <img class="image-slide" src="{{ Voyager::image($layout) }}">
                                            </div>
                                    @endforeach
                                </div>
                                <a class="left carousel-control {{count(json_decode($property->layout)) == 1 ? 'hide-carousel-control' : ''}}" href="#myCarousel_{{ $property->id }}" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control {{count(json_decode($property->layout)) == 1 ? 'hide-carousel-control' : ''}}" href="#myCarousel_{{ $property->id }}" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <div class="space-text"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="pro-description">
                            <div class="pro-title">{{ $property->name }}</div>
                            <div class="space-text"></div>  
                            <div class="pro-content">
                                <p>{{ strip_tags($property->detail) }}</p>                  
                            </div>
                            <div class="pro-room">
                                <ul>
                                    @foreach($property->roomfeature->translate($locale,'fallBackLocale') as $roomfeature)
                                        @if($property->id == $roomfeature->property_id)
                                            <li>
                                                @foreach($amenities->translate($locale,'fallBackLocale') as $amenity)
                                                    @if($amenity->id == $roomfeature->amenity_id)
                                                        <img src="{{ Voyager::image($amenity->image) }}">
                                                        <span class="room-description">{{ $roomfeature->total }}</span>
                                                        <span class="room-description">{{ $amenity->name }}</span>
                                                    @endif
                                                @endforeach  
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</div>
<!-- End Tab Bar Section -->

<div style="clear: both;"></div>

<!-- Facility Section -->
<div class="container no-margin-padding width-100" style="min-height:380px;background-position: center;background-image: url('{{ Voyager::image($articles[3]->attachment) }}') ">
    <div class="row no-margin-padding width-100">
        <div class="col-md-1"></div>	
        <div class="col-md-4">
            <div class="space-text"></div> 
            <div class="fac-title">{{ strip_tags($wordings[39]->word) }}</div>
            <div class="space-text"></div> 
            <div class="fac-article fac-description">	
                <p> {{ strip_tags($facility->description) }} </p> 
            </div>
            <div class="space-text"></div> 
            <div class="fac-booking">
                <div class="fac-article">
                    <a class="btn dropdown-toggle btn-call" href="tel:061997888">
                        <i class="fas fa-phone-alt" style="padding-right: 10px" ></i>{{ strip_tags($facility->contact) }}
                    </a>
                    <div class="space-text"></div> 
                    <button class="btn dropdown-toggle btn-visit" type="button" data-toggle="modal" data-target="#exampleModal">
                        <span>{{ strip_tags($facility->title) }}</span>
                    </button>
                </div>
            </div>
            <div style="clear: both;"></div>
        </div>
        <div class="col-md-6">
            <div class="space-text"></div> 
            @foreach($projects->projectimage->translate($locale,'fallBackLocale') as $projectimage)
            <div class="fac-img">
                <img src="{{ Voyager::image($projectimage->image) }}"/>
                <div class="fac-img-title">{{ $projectimage->title }}</div>
            </div>    		    	   
            @endforeach           
            <div class="maring-space"></div>
            <div class="space-text"></div> 
        </div>
        <div class="col-md-1"></div>
    </div>    	    
</div>

         
<div class=" owl-theme">
    <li class="owl-carousel">
        <iframe data-merge="2" width="560" height="315" src="https://www.youtube.com/embed/ebCoqkrxLF0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe data-merge="2" width="560" height="315" src="https://www.youtube.com/embed/BHmOiy3WQMk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe data-merge="2" width="560" height="315" src="https://www.youtube.com/embed/ZsDpEqLnxbg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe data-merge="2" width="560" height="315" src="https://www.youtube.com/embed/ZsDpEqLnxbg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </li>
</div>   

<!-- End Facility Section -->
    
<div class="container no-margin-padding width-100">
    <div class="row no-margin-padding width-100">
        <div class="col-md-10 no-margin-padding">
            <div id="map-finder" style="height:450px;"></div>
        </div>
        <div class="col-md-2 ">
            <a  href="#" onclick="getDirection();" class="btn dropdown-toggle btn-map" style="" >{{strip_tags($wordings[51]->word)}}</a>
            <a id="_map_btn" onclick="initialize();" class="btn dropdown-toggle btn-map" style="" >{{strip_tags($wordings[52]->word)}}</a>
            <a class="btn dropdown-toggle btn-map" style="" >{{strip_tags($wordings[53]->word)}}</a>
        </div>
    </div>
</div>
<!--End Map Section -->

<!-- Section Visit -->
<div class="container no-margin-padding width-100" style="min-height: 510px; background: url('{{ Voyager::image($backgroundfacility->attachment) }}') left bottom rgb(240, 240, 255)">
    <div class="row no-margin-padding width-100">
        <div class="col-md-3 col-sm-3"></div>
        <div class="col-md-6 col-sm-6">	
            <div class="space-text"></div>
            <div class="space-text"></div>
            <div class="interest-visit">{{ strip_tags($facility->interest) }}</div>
            <div class="space-text"></div>
            <div class="pro-content">
            <p>&nbsp;</p>
            <p>{{ strip_tags($facility->article) }}</p> 
            </div>
        <div class="space-text"></div>
        <div class="fac-booking">
            <div class="fac-article-bk">
                <a class="btn dropdown-toggle btn-call" style="" href="tel:061997888">
                    <i class="fas fa-phone-alt" style="padding-right: 10px" ></i>{{ strip_tags($facility->contact) }}
                </a>
            </div>
            <div class="space-text"></div> 
            <button class="btn dropdown-toggle btn-visit" style="" id="mybtnbooking" type="button" data-toggle="modal" data-target="#exampleModal">
                <span>{{ strip_tags($facility->title) }}</span>
            </button>
        </div>
        </div>
        <div class="col-md-3 col-sm-3"></div>
    </div>
</div>	
<!-- End Section Visit -->

<!-- Modal Section I -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="padding: 35px">
            <div class="modal-header" style="border: none;">
                <h5 class="modal-title" id="exampleModalLabel">   
                    <i class="fa fa-calendar-alt" style="padding: 15px; border-radius: 25px 25px;color: #0033a1;
                    background:left top rgb(240, 240, 255);"></i> 
                    <span style="padding-left: 25px">{{ strip_tags($facility->title) }}</span>
                </h5>
            </div>
            <form role="form" id="form1" method="post" action="{{route('book.visit')}}" class="validate">
                @csrf
                <div class="modal-body">
                    <div class="input-book" >             
                        <span class="glyphicon glyphicon-user" style="float: left;top: 41px;right: 10px"></span> 
                        <input type="text" value="{{old('name')}}" name="name" data-validate="required" class="form-control" placeholder="{{strip_tags($wordings[66]->word)}}" aria-describedby="basic-addon1" required>
                    </div>
                        
                    <div class="input-book" >             
                        <span class="glyphicon glyphicon-phone" style="float: left;top: 41px;right: 10px" ></span> 
                        <input type="text" name="phone" value="{{old('phone')}}" data-validate="required" class="form-control" data-mask="phone"  placeholder="{{strip_tags($wordings[67]->word)}}"  aria-describedby="basic-addon1" required>
                    </div>
                    
                    <div class="input-book" >             
                        <span class="glyphicon glyphicon-envelope" style="float: left;top: 41px;right: 10px"></span> 
                        <input type="text" data-validate="email" value="{{old('email')}}" name="email" class="form-control" data-mask="email" placeholder="{{strip_tags($wordings[68]->word)}}"  aria-describedby="basic-addon1">
                    </div>
                    
                    <div class="input-book" >             
                        <span class="glyphicon glyphicon-home" style="float: left;top: 41px;right: 10px"></span>
                        <input type="hidden" name="project" value="{{ Crypt::encrypt($projects->id)}}" />
                        <input type="text" name="project_display" class="form-control" value="{{ strip_tags($projects->name) }}"  placeholder="{{ strip_tags($projects->name) }}"  aria-describedby="basic-addon1">
                    </div>
                        
                    <div class="input-book" >        
                        <div class="v-date" style="width: 230px;float: left ;margin-right: 25px">     
                            <span class="glyphicon glyphicon-calendar" style="float: left;top: 41px;right: 10px"></span> 
                            <input autocomplete="off" type="text" value="{{old('visit_date')}}" name="visit_date" class="form-control datepicker" data-provide="datepicker" data-format="dd-MM-yyyy" placeholder="{{strip_tags($wordings[69]->word)}}" required/>
                        </div>
                        <div class="v-time" style="width: 230px;float: left;">
                            <span class="glyphicon glyphicon-time" style="float: left;top: 41px;right: 10px"></span> 
                            <input type="text" name="visit_time" data-validate="required"   class="form-control timepicker" placeholder="{{strip_tags($wordings[70]->word)}}" data-template="dropdown" data-show-seconds="false" data-default-time="9:00 AM" data-show-meridian="true" data-minute-step="5" data-second-step="5" />
                        </div>
                    </div>
                    <div class="input-book" style="padding: 15px;clear: both;padding-left: 0px;padding-bottom: 0px;padding-top: 25px;margin-left:-10px">
                        {{-- {!! app('captcha')->display() !!} --}}
                        <div class="g-recaptcha" data-callback="recaptchaCallback" data-sitekey="{{env('NOCAPTCHA_SITEKEY')}}"></div>
                        @if ($errors->has('g-recaptcha-response'))
                            <div class="alert alert-danger">
                                <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                            </span>
                        @endif
                    </div> 
                </div>
                <div class="modal-footer" style="text-align: center;border: none;">        
                    <button type="submit" id="btn121" class="btn btn-primary" style="font-size: 22px;
                    font-weight: bold;font-style: normal;font-stretch: normal;line-height: normal;letter-spacing: normal;text-align: center;
                        color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;" disabled>{{strip_tags($wordings[65]->word)}}</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- End Modal Section I -->

<!-- Modal Section II -->
<div class="modal fade" id="exampleModalComplete" style="z-index: 2147483647" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="padding: 35px">
            <div class="modal-header" style="border: none;"> 
            </div>
            <div class="modal-body">
                <div class="space-text" style="clear: both;"></div>
                <div class="space-text" style="clear: both;"></div>
                <div class="input-book">        
                    <span class="glyphicon glyphicon-calendar" style="padding: 20px; background: #f2f2f2; border-radius: 30px;"></span> 
                    <div class="space-text" style="clear: both;"></div>
                    <div class="space-text" style="clear: both;"></div>
                </div>
                <div class="modal-footer" style="text-align: center;border: none;">        
                    <button type="button" id="close_model" class="btn btn-primary" style="font-size: 22px; font-weight: bold; font-style: normal; font-stretch: normal; line-height: normal; letter-spacing: normal; text-align: center; color: #fff;background-color: #0033a1;border-radius:0px;height:56px ;width:100% ;">BACK TO WEBSITE</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Modal Section II -->

@endsection

@section('extrajs')
<script src="{{asset('./js/bootstrap-timepicker.js')}}"></script>
<script>
// Timepicker
$('.timepicker').timepicker();

// Semiconlon Separate Number
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

<!-- Lightslider Script -->
<script>
$(document).ready(function() {			
    $('#image-gallery').lightSlider({
        gallery:true,
        item:1,
        thumbItem:9,
        slideMargin: 0,
        speed:500,
        auto:false,
        loop:false,
        onSliderLoad: function() {
            $('#image-gallery').removeClass('cS-hidden');
        }
    });
});
</script>
<!-- End Lightslider Script -->

@php
    $latlong = substr($projects->location, 6);
    $latlong = explode(",",str_replace(" ", ",", substr($latlong, 0, strlen($latlong) - 1)));
@endphp

<!-- Section Map -->
<script lang="en">
    var map;
    var geocoder;
    var marker;
    var people = new Array();
    var latlng;
    var infowindow;
    var select="SV";
    
    function initialize() {
        var fenway = {lat: 11.5910446, lng: 104.8918582};
        if(select=="SV") {
            var map = new google.maps.Map(document.getElementById('map-finder'), {
            center: fenway,
            zoom: 14
        });
            var panorama = new google.maps.StreetViewPanorama(
            document.getElementById('map-finder'), {
                position: fenway,
                pov: {
                heading: 34,
                pitch: 10
                }
            });
            map.setStreetView(panorama);
            $("#_map_btn").text("{{strip_tags($wordings[58]->word)}}"); 
            select="MAP";	  
        }else{
            select="SV";
            $("#_map_btn").text("{{strip_tags($wordings[52]->word)}}"); 
            ViewCustInGoogleMap();
        }
    }

    function ViewCustInGoogleMap() {
        var mapOptions = {
            center: new google.maps.LatLng({{$latlong[1]}},{{$latlong[0]}}),   // Coimbatore = (11.0168445, 76.9558321)
            zoom: 14,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
        };
        map = new google.maps.Map(document.getElementById("map-finder"), mapOptions);
        // Get data from database. It should be like below format or you can alter it.
        var data = '[{ "DisplayText": "<b style=\'color:#0033a1;font-size:12pt;line-height:2.1\'/>{{$projects->name}}</b><br/><span style=\'font-size:12pt;\'>{{$projects->address}}</span>", "ADDRESS": "{{$projects->address}}", "LatitudeLongitude": "{{$latlong[1]}},{{$latlong[0]}}", "MarkerId": "Customer" }]';
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
                        icon: "https://chipmongland.com/script/root/Image/icon/icon-map.png",
                        label: {
                            color: 'white',
                            fontWeight: 'bold',
                            text: 'Hello world',
                        }
                    });
                    infowindow = new google.maps.InfoWindow;
                    infowindow.setContent(marker.html);
                    infowindow.open(map, marker);
                    
                    //marker.setPosition(latlng);
                    //map.setCenter(latlng);
                    google.maps.event.addListener(marker, 'click', function(event) {
                        infowindow.setContent(this.html);
                        infowindow.setPosition(event.latLng);
                        infowindow.open(map, this);
                    });
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
                draggable: true, // cant drag it
                html: people["DisplayText"],
                // Content display on marker click
                //icon: "images/marker.png"       
                // Give ur own image
            });
            
            var infowindow = new google.maps.InfoWindow;
            infowindow.setContent(marker.html);
            infowindow.open(map, marker);
            
            //marker.setPosition(latlng);
            //map.setCenter(latlng);
            google.maps.event.addListener(marker, 'click', function(event) {
                infowindow.setContent(this.html);
                infowindow.setPosition(event.latLng);
                infowindow.open(map, this);
            });
        }
    }

    function getDirection() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };	

            var address="https://www.google.com/maps?saddr="+position.coords.latitude+","+position.coords.longitude+"&daddr=11.5910446,104.8918582";						
            //window.open(address,"_BLANK");
            window.location=address;
            
            }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.' : 'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
    }
    function recaptchaCallback() {
        $('#btn121').removeAttr('disabled');
    };
</script>

<script>
    $('.owl-carousel').owlCarousel({
        items:1,
        merge:false,
        loop:true,
        margin:10,
        video:true,
        lazyLoad:true,
        center:false,
        responsive:{
            480:{
                items:2
            },
            600:{
                items:4
            }
        }
    })
</script>
<!-- <script src="//maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script> --> 
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALs_IVe8MbehimtbG7mX49d42uuIQSVNU&callback=ViewCustInGoogleMap"></script>

<!-- Recaptcha Script -->
{!! NoCaptcha::renderJs() !!}
<!-- End Recaptcha Script -->
@endsection