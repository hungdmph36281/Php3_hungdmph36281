@extends('admin.layouts.default')
@section('title')
Danh sách danh mục
@parent
@endsection

@push('style')
<!-- Thêm các CSS tùy chỉnh nếu cần -->
@endpush

@section('content')
<div class="d-flex">
    <div id="kt_app_content_container" class="app-container container-fluid">
        <div class="col-xl-12 mb-5 mb-xl-10">
            <div class="card card-flush h-xl-100">
                <div class="card-header pt-5 w-100">
                    <div class="d-flex justify-content-between mb-10 w-100">
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">
                                Danh sách danh mục
                            </span>
                        </h3>
                        <a href="{{ route('categories.create') }}" class="btn btn-sm fw-bold btn-primary">
                            Thêm mới
                        </a>
                    </div>
                </div>

                <div class="card-body pt-2">
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="kt_stats_widget_16_tab_1">
                            <div class="table-responsive">
                                <table class="table table-row-dashed align-middle gs-0 gy-3 my-0">
                                    <thead>
                                        <tr class="fs-7 fw-bold text-gray-500 border-bottom-0">
                                            <th class="text-center">#</th>
                                            <th class="text-center">Name</th>
                                            <th class="text-center">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($categories as $category)
                                        <tr>
                                            <td class="text-center">
                                                {{ $loop->iteration }}
                                            </td>
                                            <td class="text-center">
                                                {{ $category->name }}
                                            </td>
                                            <td class="text-center d-flex justify-content-center">
                                                <a href="{{ route('categories.show', $category) }}"
                                                   class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary me-2">
                                                    <i class="fa-solid fa-arrow-right text-gray-500"></i>
                                                </a>
                                                <a href="{{ route('categories.edit', $category) }}"
                                                   class="btn btn-sm btn-icon btn-bg-success btn-active-color-success me-2">
                                                    <i class="fa-solid fa-pen text-light"></i>
                                                </a>
                                                <form action="{{ route('categories.destroy', $category) }}" method="POST" style="display:inline;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-sm btn-icon btn-bg-danger btn-active-color-danger">
                                                        <i class="fa-solid fa-trash text-light"></i>
                                                    </button>
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
        </div>
    </div>
</div>
@endsection

@push('script')
<!-- Thêm các JS tùy chỉnh nếu cần -->
@endpush
