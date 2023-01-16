<?php

namespace App\Http\Controllers\Admin;

use App\Models\CardDesign;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CardBackground;

class CardDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data = [];
        $data['message'] = request()->get("message") ?? '';
        $data['card_designs'] = CardDesign::where('del_status', 'Live')->latest()->get();
        return view('admin.card-design.list-card', $data); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.card-design.add-card');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'card_title'=> 'required',
        ]);
        $card_design = $_POST['card_design']; 
        CardDesign::create([
            'card_title'=> $request->card_title,
            'card_design'=> trim($card_design),
        ]);
        return response()->json([
            'status' => 200,
            'message' => 'Information has been saved successfully !',
        ]);
        
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
        $card = CardDesign::findOrFail($id);
        $extract_card_design = $card->card_design;
        $url = asset('frequent_changing/upload-demo/qrcode.png');
        $img = '<img src="'.$url.'"'. 'width="'.'50'.'"'. 'height="'.'50'.'">';
        $card_html_content = str_replace(array("qrcode-position"), array($img), $extract_card_design);
        return view('admin.card-design.edit-card', compact('card_html_content', 'card'));
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
        //

    }
    /**
     * Update Card the custom function .
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateCard(Request $request, $id)
    {
        $card = CardDesign::findOrFail($id);
        $card_design = $_POST['card_design']; 
        $card->update([
            'card_title'=> $request->card_title,
            'card_design'=> trim($card_design),
        ]);
        return response()->json([
            'status' => 200,
            'message' => 'Information has been update successfully !',
        ]);
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
        $card = CardDesign::findOrFail($id);
        $card->update([
            'del_status' => 'Delete',
        ]);
        return redirect()->route('admin.card-design.index')->with(deleteMessage("Information has been delete successfully !"));
    }
}
