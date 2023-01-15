@extends('admin.layouts.app')
@section('title','Drag - Drop')
@push('css')
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Generate Card</h3>
    </section>

    <div class="row">
        <div class="col-lg-12">
            <div class="box4column p-3">
                <form action="{{ route('admin.card-generate') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="design_id">Card Design <span class="required_star"> *</span></label>
                            <select class="form-control select2" name="design_id" id="design_id">
                                @foreach ($card_design as $design)
                                    <option value="{{ $design->id }}">{{ $design->card_title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="item_id">Card Item <span class="required_star"> *</span></label>
                            <select class="form-control select2" name="item_id" id="item_id">
                                @foreach ($cards as $card)
                                    <option value="{{ $card->id }}">{{ $card->generate_for }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="item_id">Card Background <span class="required_star"> *</span></label>
                            <select class="form-control select2" name="item_id" id="item_id">
                                @foreach ($card_backgrounds as $background)
                                    <option value="{{ $background->background_img }}">{{ $background->background_title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn bg-blue-btn card_design_submit mt-4">Generate Card</button>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection

@push('js')
<script src="{{ asset('frequent_changing/js/list_pages.js') }}"></script>

@endpush

