@extends('admin.layouts.default')
@section('title')
Sửa danh mục
@parent
@endsection

@push('style')
<!-- Thêm các CSS tùy chỉnh nếu cần -->
<style>
    .container-fluid {
        padding-left: 15px;
        padding-right: 15px;
    }

    .form-card {
        margin: 0; /* Loại bỏ margin */
        padding: 20px; /* Thêm padding cho form */
        width: 100%; /* Đảm bảo form chiếm toàn bộ chiều rộng */
    }

    .form-container {
        margin-left: 0; /* Đặt margin-left bằng 0 để căn trái */
        margin-right: 0; /* Đặt margin-right bằng 0 */
        width: 100%; /* Đảm bảo chiếm toàn bộ chiều rộng */
    }

    .btn-secondary {
        margin-right: 0; /* Loại bỏ margin-right cho nút Quay lại */
    }
</style>
@endpush

@section('content')
<div class="d-flex">
    <div id="kt_app_content_container" class="app-container container-fluid">
        <div class="form-container">
            <div class="card card-flush h-xl-100 form-card">
                <div class="card-header pt-5 w-100">
                    <div class="d-flex justify-content-between mb-10 w-100">
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">
                                Sửa danh mục
                            </span>
                        </h3>
                        <a href="{{ route('categories.index') }}" class="btn btn-sm fw-bold btn-secondary">
                            Quay lại
                        </a>
                    </div>
                </div>

                <div class="card-body pt-2">
                    <form action="{{ route('categories.update', $category) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="name" class="form-label">Tên danh mục</label>
                            <input type="text" id="name" name="name" class="form-control" value="{{ $category->name }}" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
<!-- Thêm các JS tùy chỉnh nếu cần -->
@endpush
