<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>RICE DISEASE RICE</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body class="pace-done">
<div class="layout-wrapper layout-2">
    <div class="layout-inner">
        @include('header')
        @yield('content')
    </div>
    <div class="layout-overlay layout-sidenav-toggle"></div>
</div>
<script src="{{ asset('js/app.js') }}"></script>
</body>
