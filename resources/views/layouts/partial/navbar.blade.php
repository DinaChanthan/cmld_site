<!-- Top Bar Menu-->
<div class="top-contain" style="font-family:Bison,Koulen">
    <nav class="navbar" role="navigation" style="min-height: 0px;">
        <div class="container no-margin-padding width-100">
            <div class="row no-margin-padding width-100">
                <div class="col-md-3 w-40-res" style="padding-left: 0px;">
                    <div class="navbar-header" style="padding-top: 10px">
                        <a class="navbar-brand" href="{{ route('index') }}"><img src="{{Voyager::image(setting('admin.logo'))}}" alt=""></a>
                    </div>
                </div>
                <div class="col-md-6 hide-w-res">
                    <div class="top-menu-left">
                        <div class="menu" id="top-navbar-1">
                            <ul class="slides">
                                @foreach ($propertytypes as $propertytype)
                                @php
                                    $locale = session()->get('locale');
                                    $propertytype_en = $propertytype->translate('en', 'fallbackLocale');
                                    $propertytype = $propertytype->translate($locale, 'fallbackLocale');
                                @endphp
                                <li>
                                    <a class="main-link" href="{{ route('findproperty',$propertytype_en->name) }}">{{ $propertytype->name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 w-60-res" style="float: right;padding: 0px">
                    <div class="top-menu-right">
                        <div style="margin-top: 18px;float: right;">
                            <button class="btn dropdown-toggle btn-resize ch-f-s" data-toggle="modal" data-target=".bd-example-modal-lg" style="font-size: 25px;padding-right: 0px;" type="button">
                                <span class="glyphicon glyphicon-menu-hamburger"></span>
                            </button>
                        </div>
                        <div class="lang">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle ch-f-s" style="font-size: 20px;padding-right: 0px;" type="button" data-toggle="dropdown">
                                {{ $locale == "kh" ? "ខ្មែរ" : $locale }}
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                    
                                </button>
                                <ul class="dropdown-menu">
                                    @foreach(config('voyager.multilingual.locales') as $lang)
                                        <li>
                                            <a href="/lang/{{ $lang }}">{{ (strtoupper($lang)=="KH" ? "ខ្មែរ" : strtoupper($lang)) }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div style="margin-top: 17px;float: right;">
                            <a href="tel:061997888" class="phone-text" style="color:#0033a1;font-size: 20px;margin-right: 10px ">
                                <i class="fas fa-phone-alt" style="padding-right: 10px"></i>+855(0)61 997 888
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>
<!-- End Top Bar Menu -->