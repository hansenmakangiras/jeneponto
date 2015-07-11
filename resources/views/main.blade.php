<!doctype html>
<html lang="en">
<head>
    @include('partials.header')
    @include('partials.maps')
</head>
<body>
<center>
    <div id="alert-top"
         style="display:none;width:50%;background:#2ecc71;color:#fff;padding:5px;position:absolute;top:0;left:25%;z-index:9999;text-align:center;margin:0 auto;border-bottom-left-radius:4px;border-bottom-right-radius:4px"></div>
</center>

@include('partials.nav')
@yield('content')
@include('partials.footer')
</body>
</html>
