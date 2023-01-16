@extends('admin.layouts.app')
@push('css')
<style>
    .certificate-area{
        /* width: 336px;
        height: 192px; */
        /* border: 1px solid rgb(221, 221, 221); */
        /* padding: 10px;
        border-radius: 2px;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center; */
    }
    .certificate-area{
        /* width: 336px;
        height: 192px; */
        padding: 10px;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        margin-right: 20px
    }
    #preview{
        display: flex;
        flex-wrap: wrap;
    }
</style>
@endpush

@section('content')
<section class="main-content-wrapper">
    {{ alertMessage() }}

    <div id="message"></div>

    <section class="content-header">
        <h3 class="top-left-header">Generate Card</h3>
    </section>

    <div class="box-wrapper">
        <div class="table-box"> 
            <div class="box-body">
                <form action="{{ route('admin.card-generate') }}" method="POST">
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


                <form action="{{ route('admin.card-generate-pdf-2') }}" method="POST">
                    @csrf
                    <input type="hidden" name="item_id_for_gen_pdf" class="item_id_for_gen_pdf">
                    <input type="hidden" name="design_id_for_gen_pdf" class="design_id_for_gen_pdf">
                    <input type="hidden" name="background_id_for_gen_pdf" class="background_id_for_gen_pdf">
                    <div id="preview" class="mt-4"></div>
                    <div class="generate_btn"></div>
                </form>
            </div>
        </div>
    </div>



   
    
</section>
@endsection

@push('js')
<script src="{{ asset('frequent_changing/js/list_pages.js') }}"></script>
<script src="{{ asset('frequent_changing/js/generate_card.js') }}"></script>
@endpush

