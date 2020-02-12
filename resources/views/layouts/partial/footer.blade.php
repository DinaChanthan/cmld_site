<!-- Footer Section -->
<footer>
    <div class="container no-margin-padding width-100">
        <!-- List Item -->
        <div class="col-sm-12 footer-box no-margin-padding width-100"></div>
        <div class="col-sm-12 footer-box no-margin-padding width-100"></div>
        <div class="col-sm-12 footer-box no-margin-padding width-100"></div>
        <div class="row no-margin-padding width-100">
            <div class="col-sm-1 footer-box "></div>
            <div class="col-sm-2 footer-box ">
                @php
                    $locale = session()->get('locale');
                    $wordings = $wordings->translate($locale, 'fallBackLocale');
                @endphp
                <h4 class="cml-color">{{ strip_tags($wordings[7]['word']) }}</h4>
                <div class="space-text"></div>
                <ul class="list-display">
                @foreach($propertytypes as $propertytype)
                @php
                    $locale = session()->get('locale');
                    $propertytype_en = $propertytype->translate('en', 'fallbackLocale');
                    $propertytype = $propertytype->translate($locale, 'fallbackLocale');
                @endphp
                    <li>
                        <a  href="{{ route('findproperty', $propertytype_en->name) }}"> {{ $propertytype->name }}</a>
                    </li>   
                @endforeach                         
                </ul>
            </div>            
            <div class="col-sm-2 footer-box">
                <h4>{{strip_tags($wordings[6]['word'])}}</h4>
                <div class="space-text"></div>
                <ul class="list-display">
                    <li>
                        <a  href="{{ route('aboutus') }}">{{ strip_tags($wordings[30]['word']) }}</a>
                    </li>                            
                    <li>
                        <a  href="{{ route('listnews') }}">{{ strip_tags($wordings[31]['word']) }}</a>
                    </li>                            
                    <li>
                        <a  target="_BLANK" href="https://career10.successfactors.com/career?company=chipmonggr">{{ strip_tags($wordings[32]['word']) }}</a>
                    </li>                            
                    <li>
                        <a  href="{{ route('aftersaleservices') }}">{{ strip_tags($wordings[33]['word']) }}</a>
                    </li>                            
                </ul>
            </div>               
                        
            <div class="col-sm-3 footer-box "></div>
            <div class="col-sm-3 footer-box ">
                <h4 class="color">{{ strip_tags($wordings[34]['word']) }}</h4>
                <div class="space-text"></div>
                <div class="address">
                @php 
                    $opt = explode('|', strip_tags($wordings[9]->word));
                @endphp
                @if ($locale == 'kh')
                    <p>{{ $opt[0] }}</p>
                    <p>{{ $opt[1] }}</p>
                    <p><a href="mailto:sales.cmld@chipmong.com">{{ $opt[2] }}</a></p>
                @else
                    <p>{{ $opt[0] }}</p>
                    <p><a href="mailto:sales.cmld@chipmong.com">{{ $opt[2] }}</a></p>
                    <p>{{ $opt[1] }}</p>
                    <p><a href="{{ route('index') }}">{{ $opt[3] }}</a></p>
                @endif                         
                </div>                 
                <div class="social-icon">
                    <a href="https://www.facebook.com/chipmongland" target="_BLANK"><i class="fab fa-facebook-f"></i></a>            						
                    <a href="https://www.instagram.com/chipmongland" target="_BLANK"><i class="fab fa-instagram"></i></a>            						
                    <a href="https://www.youtube.com/chipmongland" target="_BLANK"><i class="fab fa-youtube"></i></a>            						
                </div>  
            </div> 		
        </div>    
        <div class="col-sm-12 footer-box no-margin-padding width-100"></div>   
        <!-- End List Items -->    
        <div class="row no-margin-padding">
            <div class="col-sm-12 no-margin-padding">
                <div class="footer-border"></div>
            </div>
        </div>
        <div class="row no-margin-padding width-100">
            <div class="col-sm-1 footer-box "></div>
            <div class="col-sm-5 no-margin-padding footer-social footer-term" >			
                <a href="{{ route('termscondition') }}">{{ strip_tags($wordings[11]['word']) }}</a>            	            					
                <a href="{{ route('termscondition') }}">{{ strip_tags($wordings[12]['word']) }}</a>        			
            </div>
            <div class="col-sm-5 no-margin-padding footer-copyright " >
                <p>{{ strip_tags($wordings[10]['word']) }}</p>
            </div>
        <div class="col-sm-1 footer-box "></div>
        </div>
    </div>
</footer>        
<!-- End Footer Section -->