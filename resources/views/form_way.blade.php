@extends('layout')

@section('content')
    <div class="layout-container">
        <div class="container title mb-3">Chào Mừng Bạn Đến Với Hệ Thống Chẩn Đoán Bệnh Cây Lúa</div>
        <div class="container">
            <span>*Vui lòng cho chúng tôi biết triệu chứng về cây lúa của bạn bằng cách chọn form dưới đây</span>
            <br>
            <span>Chọn ít nhất 3 dấu hiệu trong danh sách câu hỏi để chẩn đoán</span>
            <form class="mt-2 row" action="{{ route('form_way') }}" method="POST" class="col-12">
                @csrf
                @foreach (config('disease.signals') as $keySignal => $signalNameVie)
                    <div class="col-6">
                        <div class="form-group">
                            <label for="formGroupExampleInput" class="custom-label">{{ $signalNameVie }}</label>
                            <select class="custom-select custom-select-lg mb-3" name="{{ $keySignal }}">
                                <option value="nochoose" @if (isset($data) && $data[$keySignal] == 'nochoose') selected @endif>Chọn {{ $signalNameVie }}</option>
                                @foreach (config('disease.' . $keySignal) as $key => $nameValue)
                                    <option value="{{ $key }}" @if (isset($data) && $data[$keySignal] == $key) selected @endif>
                                        {{ $nameValue }}</option>
                                @endforeach
                                <option value="null" @if (isset($data) && $data[$keySignal] == 'null') selected @endif></option>
                            </select>
                        </div>
                    </div>
                @endforeach
                <button class="btn btn-success mt-5" id="form-signals-button">Chẩn Đoán</button>
            </form>
            @if (isset($error) && $error === 1)
                <div class="alert alert-warning" role="alert"
                    style="margin-top: 20px; width: 60%; margin: 20px auto 0 auto">
                    Vui lòng chọn ít nhất 3 dấu hiệu khác rỗng để hệ thống có thể chẩn đoán
                </div>
            @endif
            @if(isset($error) && $error === 0 && isset($benh) && count($benh) == 0)
                <div class="alert alert-secondary" role="alert"
                    style="margin-top: 20px; width: 60%; margin: 20px auto 0 auto">
                    Hệ thống không tìm thấy bệnh phù hợp
                </div>
            @endif
            @if(isset($error) && $error === 0 && isset($benh) && count($benh) > 0)
                <h3 style="margin: 20px auto 10px auto; text-align: center">Hệ Thống Chẩn Đoán</h3>
                @foreach ($benh as $value)
                    <?php
                        $arrAfterExplore = explode(':', $value)
                    ?>
                    <div class="alert alert-secondary" role="alert"
                        style="margin-top: 20px; width: 60%; margin: 20px auto 0 auto">
                        <a href="{{ route('view_disease', ['name' => $arrAfterExplore[0]]) }}">{{ $arrAfterExplore[1] }}</a>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection
