@extends('layout')

@section('content')
    <div class="layout-container">
        <div class="container title mb-3">Chào Mừng Bạn Đến Với Hệ Thống Chẩn Đoán Bệnh Cây Lúa</div>
        <div class="container">
            <span>*Vui lòng cho chúng t biết triệu chứng về cây lúa của bạn bằng cách trả lời các câu hỏi sau dưới đây</span>
            <form class="mt-2">
                <div class="form-group">
                  <label for="formGroupExampleInput">Lá Cây</label>
                  <select class="custom-select custom-select-lg mb-3">
                    <option selected>Chọn Triệu Chứng Lá Cây</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select>
                  Các câu hỏi tiếp theo hệ thống se tự sinh ra.......
                </div>
                <button class="btn btn-success">Tiếp tục</button>
            </form>

            <div class="result-form mt-2">
                <h3>Hệ Thống Chẩn Đoán:</h3>
                <span>Cây Lúa của Bạn mắc bệnh..... với tỉ lệ 90%</span>
            </div>
            <div class="cure mt-3">
                <h3>Cách Chữa Bệnh</h3>
                <span>Các cách sau :.....</span>
            </div>
            <div class="prevent mt-3">
                <h3>Cách Phòng Bệnh</h3>
                <span>...................</span>
            </div>
        </div>
    </div>
@endsection
