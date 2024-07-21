@extends('admin.layouts.default')

@section('title', 'Sửa sản phẩm')

@push('style')
<!-- Thêm các CSS tùy chỉnh nếu cần -->
<style>
    .form-card {
        padding: 20px;
        margin: 0;
    }
</style>
@endpush

@section('content')
<div class="d-flex">
    <div id="kt_app_content_container" class="app-container container-fluid">
        <div class="col-xl-12 mb-5 mb-xl-10">
            <div class="card card-flush h-xl-100 form-card">
                <div class="card-header pt-5">
                    <div class="d-flex justify-content-between mb-10">
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">Sửa sản phẩm</span>
                        </h3>
                        <a href="{{ route('products.index') }}" class="btn btn-sm fw-bold btn-secondary">Quay lại</a>
                    </div>
                </div>
                <div class="card-body pt-2">
                    <form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="name" class="form-label">Tên sản phẩm:</label>
                            <input type="text" id="name" name="name" class="form-control" value="{{ $product->name }}" required>
                        </div>
                        <div class="mb-3">
                            <label for="description" class="form-label">Mô tả:</label>
                            <textarea id="description" name="description" class="form-control" rows="4" required>{{ $product->description }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="price" class="form-label">Giá:</label>
                            <input type="text" id="price" name="price" class="form-control" value="{{ $product->price }}" required>
                        </div>
                        <div class="mb-3">
                            <label for="category_id" class="form-label">Danh mục:</label>
                            <select id="category_id" name="category_id" class="form-select" required>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}" {{ $product->category_id == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">Ảnh:</label>
                            <input type="file" id="image" name="image" class="form-control">
                            @if ($product->image)
                                <div class="mt-2">
                                    <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="100">
                                </div>
                            @endif
                        </div>
                        <button type="submit" class="btn btn-primary">Lưu</button>
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
