@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.structure.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/plugin/jquery-ui-drag-and-drop/jquery-ui.theme.css') }}">
<link rel="stylesheet" href="{{ asset('frequent_changing/css/design_layout_by_admin.css') }}">
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Generated Card Preview</h3>
    </section>

    <div class="row">
        <div class="col-12">
            <div class="box4column p-3">
                @foreach ($actual_item as $item)
                    <div class="certificate-wrap">
                        <div class="certificate-area" style="background-image: url('{{ asset('/'.$background_id) }}')">
                            <?php echo htmlspecialchars_decode($item) ?>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
@endpush

