@extends('admin.layouts.app')
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
                <form action="{{ route('admin.card-generate-view') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="item_id">Card Item <span class="required_star"> *</span></label>
                                <select class="form-control select2" name="item_id" id="item_id">
                                    <option>Select Item</option>
                                    @foreach ($cards as $card)
                                        <option value="{{ $card->id }}">{{ $card->generate_for }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="design_id">Card Design <span class="required_star"> *</span></label>
                                <select class="form-control select2" name="design_id" id="design_id">
                                    <option>Select Card Design</option>
                                    @foreach ($card_design as $design)
                                        <option value="{{ $design->id }}">{{ $design->card_title }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="background_id">Card Background <span class="required_star"> *</span></label>
                                <select class="form-control select2" name="background_id" id="background_id">
                                    <option>Select Background Image</option>
                                    @foreach ($card_backgrounds as $background)
                                        <option value="{{ $background->background_img }}">{{ $background->background_title }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn bg-blue-btn preview_card_generate mt-4">Preview Card</button>
                </form>
            </div>
        </div>

        @isset($actual_item)
        @foreach ($actual_item as $item)
            <div class="certificate-wrap">
                <div class="certificate-area" style="background-image: url('{{ asset('/'.$background_id) }}')">
                    <?php echo htmlspecialchars_decode($item) ?>
                </div>
            </div>
        @endforeach
        @endisset
    </div>
</section>
@endsection

@push('js')
<script src="{{ asset('frequent_changing/js/list_pages.js') }}"></script>
{{-- <script src="{{ asset('frequent_changing/js/generate_card.js') }}"></script> --}}

@endpush

