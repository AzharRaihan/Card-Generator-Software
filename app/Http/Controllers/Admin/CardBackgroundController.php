<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CardBackground;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;

class CardBackgroundController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [];
        $data['cards_background'] = CardBackground::where('del_status', 'Live')->latest()->get();
        return view('admin.card-background.list-card-background', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.card-background.add-card-background');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation check
        $validator = Validator::make($request->all(), [
            'background_title' => 'required|string|max:100',
            'background_img' => 'required|mimes:jpg,png,jpeg',
        ],[
            'background_title.required' => 'The background title field is required',
            'background_title.string' => 'The background title field max size 100 character',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
            if(!$request->file('background_img')) {
                return redirect()->back()->with('background_img_error','The Background Image should be valid image');
            }
        }else{
            // Get Card Background Img store
            if($request->hasfile('background_img'))
            {
                $file = $request->file('background_img');
                if(! isImage($file)) {
                    return redirect()->back()->with('background_img_error','The Background Image should be valid image');
                }
                $image_info = imageInfo($file);
                $allowed_extension = array('jpg','jpeg','png');
                if(! in_array($image_info['extension'],$allowed_extension)) {
                    return redirect()->back()->with('background_img_error','The Background Image should be type of jpg, jpeg or png.');
                }
                if($image_info['width'] != 336 OR $image_info['height'] != 192) {
                    return redirect()->back()->with('background_img_error','The Background Image should be size of width: 336px and height: 192px');
                }
                if ($image_info['mb_size'] > 1){
                    return redirect()->back()->with('background_img_error','The Background Image should be size of 1MB');
                }
                $image_path = uploadImage($file);
            }
            // Card Background  Store
            CardBackground::create([
                'background_title' => $request->background_title,
                'background_img' => $image_path,
            ]);
            activityLog('Created', Auth::user()->id, Auth::user()->name . 'has been create a background image');
            return redirect()->route('admin.card-background.index')->with(saveMessage("Information insert successful !"));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $id = encryptDecrypt($id, 'decrypt');
        $card_id = CardBackground::findOrFail($id);       
        activityLog('Edit', Auth::user()->id, Auth::user()->name . 'has been edit the background image');
        return view('admin.card-background.edit-card-background', compact('card_id'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $id = encryptDecrypt($id, 'decrypt');
        $card_id = CardBackground::findOrFail($id);   
        // Validation check
        $this->validate($request, [
            'background_title' => 'required|string|max:100',
            'background_img' => 'mimes:jpg,png,jpeg',
        ],[
            'background_title.required' => 'The background title field is required',
            'background_title.string' => 'The background title field max size 100 character',
            'background_img.mimes' => 'The background image type jpg, png, jpeg',
        ]);
        // Get Card Background Img store
        if($request->hasfile('background_img'))
        {
            $file = $request->file('background_img');
            if(! isImage($file)) {
                return redirect()->back()->with('background_img_error','The Background Image should be valid image');
            }
            $image_info = imageInfo($file);
            $allowed_extension = array('jpg','jpeg','png');
            if(! in_array($image_info['extension'],$allowed_extension)) {
                return redirect()->back()->with('background_img_error','The Background Image should be type of jpg, jpeg or png.');
            }
            if($image_info['width'] != 336 OR $image_info['height'] != 192) {
                return redirect()->back()->with('background_img_error','The Background Image should be size of width: 336px and height: 192px');
            }
            if ($image_info['mb_size'] > 1){
                return redirect()->back()->with('background_img_error','The Background Image should be size of 1MB');
            }
            $image_path = uploadImage($file);
        }
        // Card Background  update
        $card_id->update([
            'background_title' => $request->background_title,
            'background_img' => $image_path,
        ]);
        activityLog('Update', Auth::user()->id, Auth::user()->name . 'has been update the background image');
        return redirect()->route('admin.card-background.index')->with(updateMessage("Information has been updated successfully !"));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $id = encryptDecrypt($id, 'decrypt');
        $card = CardBackground::findOrFail($id);

        // Existing blog thumbnail path
        $background_img = public_path('files/' . $card->background_img);
        // Delete old thumbnail, If the thumbnail has
        if (File::exists($background_img)) {
            File::delete($background_img);
        }
        $card->update([
            'del_status' => 'Delete',
        ]);
        activityLog('Delete', Auth::user()->id, Auth::user()->name . 'has been delete the background image');
        return redirect()->back()->with(deleteMessage("Information has been delete successfully !"));
    }

    /**
     * Find backgound image.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function findBackgroudImage($id)
    {
        $card_id = CardBackground::findOrFail($id);
        if($card_id){
            return Response::json([
                'status' => 200,
                'card_id' => $card_id->background_img,
            ]);
        }else{
            return Response::json([
                'status'=>404,
                'message'=>'Data Not Found'
            ]);
        }
    }


}
