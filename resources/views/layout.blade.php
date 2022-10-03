<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>RICE DISEASE RICE</title>
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head><!--/head-->
<body>
{{--@include('user.layouts.header')--}}
<div class="page-container">
    @include('header')
    @yield('content')
</div>

{{--@include('user.layouts.footer')--}}
<script src="{{ asset('js/app.js') }}"></script>
</body>
