<?php

use App\Model\Upazila;
use App\Model\District;
use App\Model\Division;
use App\Model\Union;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/district-wise-upazilas/{district_id}',function ($district_id) {
  return \App\Models\Upazila::where('district_id',$district_id)->get();
});

Route::get('/category-wise-subcategories/{category_id}',function ($category_id) {
  return \App\Models\Subcategory::where('category_id',$category_id)->get();
});

Route::get('/brand-wise-serieses/{brand_id}',function ($brand_id) {
  return \App\Models\Series::where('brand_id',$brand_id)->get();
});

