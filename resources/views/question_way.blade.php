@extends('layout')

@section('content')
    <div class="layout-container">
        <div class="container title mb-3">Chào Mừng Bạn Đến Với Hệ Thống Chẩn Đoán Bệnh Cây Lúa</div>
        <div class="container">
            <span>*Vui Lòng Chọn Một Dấu Hiệu Có Biểu Hiện Bệnh</span>
            <form class="mt-2" action="{{ route('question_way_post') }}" method="POST">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="formGroupExampleInput" class="custom-label">Dấu Hiệu</label>
                    <select class="custom-select custom-select-lg mb-3" name="signal">
                        @foreach (config('disease.signals') as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                    </select>
                </div>
                <button type="submit" class="button-custom-back-home">Tiếp tục</button>
            </form>
        </div>
    </div>
@endsection
