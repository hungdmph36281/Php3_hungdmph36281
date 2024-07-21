@extends('admin.layouts.default')

@section('title', 'Danh sách sách')

@push('style')
<!-- Thêm các CSS tùy chỉnh nếu cần -->
<style>
    .table-description {
    max-width: 200px; /* Chiều rộng tối đa của cột mô tả */
    overflow: hidden; /* Ẩn nội dung vượt quá chiều rộng */
    text-overflow: ellipsis; /* Thêm ... nếu nội dung bị cắt */
    white-space: nowrap; /* Không cho phép xuống dòng */
}
</style>
@endpush

@section('content')
<div class="d-flex">
    <div id="kt_app_content_container" class="app-container container-fluid">
        <div class="col-xl-12 mb-5 mb-xl-10">
            <div class="card card-flush h-xl-100">
                <div class="card-header pt-5">
                    <div class="d-flex justify-content-between mb-10">
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">Danh sách sách</span>
                        </h3>
                        <a href="{{ route('products.create') }}" class="btn btn-sm fw-bold btn-primary">Thêm mới</a>
                    </div>
                </div>
                <div class="card-body pt-2">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#ID</th>
                                <th>Tiêu đề</th>
                                <th>Mô tả</th>
                                <th>Giá</th>
                                <th>Danh mục</th>
                                <th>Ảnh</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($products as $product)
                                <tr>
                                    <td>{{ $product->id }}</td>
                                    <td class="table-description">{{ $product->name }}</td>
                                    <td class="table-description">{{ $product->description }}</td>
                                    <td>${{ $product->price }}</td>
                                    <td>{{ $product->category->name }}</td>
                                    <td>
                                        @if($product->image)
                                            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="100">
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('products.edit', $product->id) }}" class="btn btn-sm btn-warning">Sửa</a>
                                        <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger">Xóa</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
<!-- Thêm các JS tùy chỉnh nếu cần -->
@endpush
