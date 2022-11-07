@extends('layout')

@section('content')
    <div class="layout-container" id="content-right">
        <div class="container title mb-3">Chào Mừng Bạn Đến Với Hệ Thống Chẩn Đoán Bệnh Cây Lúa</div>
        <div class="container">
            <span>*Vui lòng cho chúng tôi biết triệu chứng về cây lúa của bạn bằng cách trả lời các câu hỏi sau dưới
                đây</span>
            <form class="mt-2" action="{{ route('question_signal') }}" method="POST" id="form_question_disease">
                {{ csrf_field() }}
                @if ($continueQuestion == 1)
                    <div class="form-group">
                        <label for="formGroupExampleInput" class="custom-label">{{ config('disease.signals.' . $signal) }}</label>
                        <select class="custom-select custom-select-lg mb-3" name="{{ $signal }}">
                            @foreach (config('disease.' . $signal) as $key => $value)
                                <option value="{{ $key }}">{{ $value }}</option>
                            @endforeach
                            <option value="null">Khác</option>
                        </select>
                    </div>
                @endif
            </form>
            <div class="d-flex justify-content-between">
                <button type="submit" class="button-custom-back-home" id="question-signals-button">Tiếp tục</button>
                <button type="button" class="button-customer-reset" id="question-signals-button-reset">Làm mới</button>
            </div>
            </div>
        </div>
    </div>
@endsection
