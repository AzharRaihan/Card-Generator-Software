@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Add Card Excel Upload</h3>
    </section>

    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                @foreach ($actual_item as $item)
                    <div class="certificate-area">
                        <?php echo htmlspecialchars_decode($item) ?>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
@endpush

