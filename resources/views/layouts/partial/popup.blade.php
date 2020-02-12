<!-- Modal Popup -->
<div class="modal fade bd-example-modal-lg" id="mymodal" tabindex="-1" style="z-index: 9999999" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="padding: 0px; width: 100%; height: 100%; margin: 0px; border-radius: 0px;">
        <div class="modal-content" style="background-position:center;background-image: url('{{ Voyager::image($articles_all[24]->attachment) }}')">
            <div class="close-icon" style="float: right; position: relative; z-index: 999999999999999;">
                <button  class="btn dropdown-toggle" id="close-dialog" style="background-color: transparent;color: #fff;font-size: 25px" type="button" >
                    <i class="fas fa-times"></i>
                </button>	
            </div>
            <div class="container no-margin-padding width-100">
                <div class="row no-margin-padding width-100" >
                    <div class="col-md-2 "></div>
                    <div class="col-md-4 ">
                        <div class="space-text"></div>
                        <div class="pop-text">
                            @foreach($propertytypes as $propertytype)
                            @php
                                $locale = session()->get('locale');
                                $propertytype_en = $propertytype->translate('en', 'fallbackLocale');
                                $propertytype = $propertytype->translate($locale, 'fallbackLocale');
                            @endphp
                            <h2 class="pop-up-pro">
                                <a style="font-family: Bison, koulen" href="{{ route('findproperty', $propertytype_en->name) }}">{{ $propertytype->name }}</a>
                            </h2>      
                            @endforeach                    	
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="pop-up-social">
                            <ul class="list-display">
                                <li class="p-title-pro"><a style="font-family: koulen" href="{{ route('aboutus') }}">{{ strip_tags($wordings[30]['word']) }}</a></li>                            
                                <li class="p-title-pro"><a style="font-family: koulen" href="{{ route('listnews') }}">{{ strip_tags($wordings[31]['word']) }}</a></li>                            
                                <li class="p-title-pro"><a style="font-family: koulen" target="_BLANK" href="https://career10.successfactors.com/career?company=chipmonggr">{{ strip_tags($wordings[32]['word']) }}</a></li>                            
                                <li class="p-title-pro"><a style="font-family: koulen" href="{{ route('aftersaleservices') }}">{{ strip_tags($wordings[33]['word']) }}</a></li>                            
                                <li class="p-title-pro"><a style="font-family: koulen" href="{{ route('cambodiapage') }}">{{ strip_tags($wordings[35]['word']) }}</a></li>
                                <li class="p-title-pro"><a style="font-family: koulen" href="{{ route('contactus') }}">{{ strip_tags($wordings[34]['word']) }}</a></li>
                            </ul>          
                            <ul class="lang-show" style="margin-left: -8px">
                            @foreach(config('voyager.multilingual.locales') as $lang)
                            <li>
                                <a style="font-family: koulen, Bison" href="/lang/{{ $lang }}">{{ (strtoupper($lang)=="KH" ? "ខ្មែរ" : strtoupper($lang)) }}</a>
                            </li> 
                            @endforeach
                            </ul>
                        </div>	
                    </div>
                    <div class="col-md-2 "></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Modal Popup -->