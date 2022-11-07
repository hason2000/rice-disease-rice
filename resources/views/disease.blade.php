@extends('layout')
@section('content')
    @if (isset($dataBenh))
        <div class="layout-container">
            <div class="title mb-3" style="width: 23%; margin: 20px auto 20px auto">
                Bệnh {{ $dataBenh->ghi_chu }}
            </div>
            <div class="d-flex justify-content-center">
                <div class="card" style="width: 30rem;margin-left: 30px">
                    <div class="card-body">
                        <h5 class="card-title">Cách Phòng Bệnh</h5>
                        <p class="card-text">{{ $dataBenh->phong_benh }}</p>
                    </div>
                </div>
                <div class="card" style="width: 30rem;margin-left: 30px">
                    <div class="card-body">
                        <h5 class="card-title">Cách Chữa Bệnh</h5>
                        <p class="card-text">{{ $dataBenh->chua_benh }}</p>
                    </div>
                </div>
            </div>
            <div style="text-align: right; margin:30px 95px 0 0">
                <button class="button-custom-back-home">
                    <a href="{{ route('form_way') }}">Home</a>
                </button>
            </div>
        </div>
    @endif
@endsection
