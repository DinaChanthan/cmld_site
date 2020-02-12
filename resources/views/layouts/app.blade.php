<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>{{config('app.name')}} | @yield('title')</title>
		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="{{asset('css/toastr.min.css')}}">
		<link rel="stylesheet" href="{{ asset('css/app.css') }}">
		<link rel="stylesheet" href="{{ asset('css/lightslider.css') }}"> 
		<!-- End CSS -->

		{{-- Extra CSS --}}
		@yield('extracss')

		@php
			$locale = session()->get('locale');
		@endphp
		@if($locale == 'kh')
			<link rel="stylesheet" href="{{ asset('css/csskh/styleKH.css') }}">
			<link rel="stylesheet" href="{{ asset('css/csskh/media-queriesKH.css') }}">
		@endif
		
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="{{ asset('images/ico/ff.ico') }}">
		<!-- End Favicon and touch icons -->

		<!-- Start of  Zendesk Widget script -->
		<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=614c527f-86ed-4c14-b8f3-67f38b1148de"> </script>
		<!-- End of  Zendesk Widget script -->

		<!-- Facebook Pixel Code -->
		<script>
			!function(f,b,e,v,n,t,s)
			{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)};
			if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
			n.queue=[];t=b.createElement(e);t.async=!0;
			t.src=v;s=b.getElementsByTagName(e)[0];
			s.parentNode.insertBefore(t,s)}(window, document,'script',
			'https://connect.facebook.net/en_US/fbevents.js');
			fbq('init', '410009066363444');
			fbq('track', 'PageView');
			</script>
			<noscript><img height="1" width="1" style="display:none"
			src="https://www.facebook.com/tr?id=410009066363444&ev=PageView&noscript=1"
			/></noscript>
		<!-- End Facebook Pixel Code -->
	</head>
    <body>
		
		<!-- Navigation Bar -->
		@include('layouts.partial.navbar')
		<!-- End Navigation Bar -->

		<!-- yield content -->
		@yield('content')
		<!-- End yield content -->

		<!-- Footer -->
		@include('layouts.partial.footer')		
		<!-- End Footer -->

		<!-- Back To Top -->
		@include('layouts.partial.backtotop')
		<!-- End Back To Top -->

		<!-- Pop Up -->
		@include('layouts.partial.popup')
		<!-- End Pop Up -->

		<!-- JavaScript -->
		<script src="{{ asset('js/app.js') }}" defer></script>		
		<script src="{{ asset('js/jquery-1.11.3.js') }}"></script>
		<!-- End JavaScript -->

		<!-- JavaScript -->
		<script src="{{ URL::to('js/scripts.js') }}"></script>
		<!-- End JavaScript -->

		<script src="{{asset('js/toastr.min.js')}}"></script>
		<script type="text/javascript">
			@if(Session::has('message'))
				var type="{{Session::get('alert-type','info')}}"
				switch(type){
					case 'info':
						toastr.info("{{ Session::get('message') }}");
						break;
					case 'success':
						toastr.success("{{ Session::get('message') }}");
						break;
					case 'warning':
						toastr.warning("{{ Session::get('message') }}");
						break;
					case 'error':
						toastr.error("{{ Session::get('message') }}");
						break;
				}
			@endif
		</script>

		{{-- Extra JS --}}
		@yield('extrajs')

    </body>
</html>



