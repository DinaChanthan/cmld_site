@extends('layouts.app')

@section('title', 'Contactus')

@php
    $locale = session()->get('locale');
    $wordings = $wordings->translate($locale, 'fallbackLocale');
@endphp

@section('content')
 <!-- Section I -->
 <div class="container no-margin-padding width-100" >
    <div class="row no-margin-padding width-100">
        <div class="col-md-12"  style="padding: 0px" >
            <div id="map-canvas" style="width:100%;height:100px;" ></div>
        </div>
    </div>

    <div class="row bk-contact">
        <div  class="contact-left" >
            <div class="contact-title">{{ strip_tags($wordings[34]->word) }}</div>
            @php 
                $div = explode('|', strip_tags($wordings[9]->word));
            @endphp
            <div class="contact">{{ $div[0] }}</div>
        </div>
        <div class="contact-right" >
            <div class="contact">                   
                <div class="social-icon" style="text-align: center;">
                    <a class="link-social" href="https://www.facebook.com/chipmongland" target="_BLANK"><img src="https://chipmongland.com//script/root/social/fb.png"/></a>            						
                    <a class="link-social" href="https://www.instagram.com/chipmongland" target="_BLANK"><img src="https://chipmongland.com//script/root/social/linkin.png"/></a>            						
                    <a class="link-social" href="https://www.youtube.com/chipmongland" target="_BLANK"><img src="https://chipmongland.com//script/root/social/youtube.png"/></a>            						
                </div>
                <p><a class="btn dropdown-toggle btn-call" href="mailto:sales.cmld@chipmong.com"><em class="fa fa-email">&nbsp;</em>sales.cmld@chipmong.com</a></p>
                <p><a class="btn dropdown-toggle btn-call" href="tel:061997888"><em class="fas fa-phone-alt" style="padding-right: 10px">&nbsp;</em>(855) (0)61 997 888</a></p>   
            </div>
        </div>
    </div>
</div>
<!-- End Section I -->
@endsection

@section('extrajs')
<script>
    $("#map-canvas").height($("#contain-search").height()+600);

    var map;
    var geocoder;
    var marker;
    var people = new Array();
    var latlng;
    var infowindow;

    function ViewCustInGoogleMap() {

        var mapOptions = {
            center: new google.maps.LatLng(11.5442784,104.9168633),   // Coimbatore = (11.0168445, 76.9558321)
            zoom: 17,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            
        };
        map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

        // Get data from database. It should be like below format or you can alter it.

        var data = '[{ "DisplayText": "<b style=\'color:#0033a1;font-size:12pt;line-height:2.1\'/> Chip Mong Land Office</b><br/><span style=\'font-size:12pt;\'>137B, Mao Tse Tung Blvd, Phnom Penh</span>", "ADDRESS": "137B, Mao Tse Tung Blvd, Phnom Penh", "LatitudeLongitude": "11.5442784,104.9168633", "MarkerId": "Customer" }]';

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
                draggable: true,               // cant drag it
                html: people["DisplayText"],
                icon: "https://chipmongland.com/script/root/Image/icon/icon-map.png"
                
                // Content display on marker click
                //icon: "images/marker.png"       // Give ur own image
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
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALs_IVe8MbehimtbG7mX49d42uuIQSVNU&callback=ViewCustInGoogleMap"></script>
@endsection