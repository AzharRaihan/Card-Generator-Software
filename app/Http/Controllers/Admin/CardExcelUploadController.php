<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Exception;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
use PhpOffice\PhpSpreadsheet\IOFactory;
use App\Models\Card;
use Illuminate\Support\Carbon;
use App\Models\CardDetails;
use App\Models\CardDesign;
use Illuminate\Support\Str;

use PDF;
use App\Models\CardBackground;
use Illuminate\Support\Facades\Validator;


class CardExcelUploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [];
        $data['cards'] = Card::where('del_status', 'Live')->latest()->get();
        return view('admin.card-excel-upload.list-card-excel-upload', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.card-excel-upload.add-card-excel-upload');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'generate_for' => 'required|max:100',
            'excel_file' => 'required|file|mimes:xls,xlsx'
        ],[
            'generate_for.required' => 'The title field is required',
            'generate_for.string' => 'The title field max size 100 character',
            'excel_file.required' => 'The card excel upload field is required',
            'excel_file.mimes' => 'The card excel upload file type xls, xlsx, only',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }else{
            $file = $request->file('excel_file');
            try {
                $spreadsheet = IOFactory::load($file->getRealPath());
                $sheet        = $spreadsheet->getActiveSheet();
                $row_limit    = $sheet->getHighestDataRow();
                $column_limit = $sheet->getHighestDataColumn();
                $row_range    = range(2, $row_limit);
                $column_range = range('A', $column_limit );
                $startcount = 0;
                $data = array();
                if($row_limit <= 13) 
                {
                    $card = Card::create([
                        'generate_for' => $request->generate_for,
                        'created_at' => Carbon::now()->toDateTimeString(),
                        'updated_at' => Carbon::now()->toDateTimeString(),
                    ]);
                    if($card) {
                        foreach ($row_range as $row) {
                            $data[] = [
                                'card_id' => $card->id,
                                'location' =>$sheet->getCell( 'A' . $row )->getValue(),
                                'model' => $sheet->getCell( 'B' . $row )->getValue(),
                                'price' => $sheet->getCell( 'C' . $row )->getValue(),
                                'date_range' => $sheet->getCell( 'D' . $row )->getValue(),
                                'qr_code' => $sheet->getCell( 'E' . $row )->getValue(),
                                'other' => $sheet->getCell( 'F' . $row )->getValue(),
                            ];
                            $startcount++;
                        }
                        DB::table('card_details')->insert($data);
                    }
                }else{
                    return redirect()->route('admin.card-excel-upload.create')->with(dangerMessage("Max row limit 12 and Max colum F"));
                }
            } catch (Exception $e) {
                $error_code = $e->errorInfo[1];
                return redirect()->back()->with(dangerMessage("There was a problem, check the file, fill up correctly !"));
            }
            return redirect()->route('admin.card-excel-upload.index')->with(saveMessage("Information has been saved successfully !"));
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
        $id = encryptDecrypt($id, 'decrypt');
        $card_id = Card::findOrFail($id);
        $card_item = CardDetails::where(['card_id'=>$card_id->id, 'del_status'=>'Live'])->get();       
        return view('admin.card-excel-upload.view-card-excel-upload', compact('card_item', 'card_id'));
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
        $card_id = Card::findOrFail($id);
        $card_item = CardDetails::where(['card_id'=>$card_id->id, 'del_status'=>'Live'])->get();       
        return view('admin.card-excel-upload.edit-card-excel-upload', compact('card_item', 'card_id'));
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
        $card = Card::findOrFail($id);
        CardDetails::whereIn('card_id', array($card->id))->delete();
        $item_id = $request->card_details_id;
        for($i = 0; $i < $item_id; $i++) {
            CardDetails::create([
                'card_id' => $card->id,
                'location' => $request->location[$i],
                'model' => $request->model[$i],
                'price' => $request->price[$i],
                'date_range' => $request->date_range[$i],
                'qr_code' => $request->qr_code[$i],
                'other' => $request->other[$i],
            ]);
        }
        return redirect()->route('admin.card-excel-upload.index')->with(updateMessage("Information has been updated successfully !"));
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
        $card = Card::findOrFail($id);
        $card->update([
            'del_status' => 'Delete',
        ]);
        CardDetails::whereIn('card_id', array($card->id))->update([
            'del_status' => 'Delete',
        ]);
        return redirect()->back()->with(deleteMessage("Information has been delete successfully !"));
    }

    /**
     * Download demo file.
     *
     * @return \Illuminate\Http\Response
     */
    public function downloadFile()
    {
        $myFile = public_path("frequent_changing/upload-demo/Card-Upload-Demo.xlsx");
    	return response()->download($myFile);
    }
    /**
     * Card Generate View
     *
     * @return \Illuminate\Http\Response
     */
    public function cardGenerateView()
    {
        $data = [];
        $data['cards'] = Card::where('del_status', 'Live')->latest()->get();
        $data['card_design'] = CardDesign::where('del_status', 'Live')->latest()->get();
        $data['card_backgrounds'] = CardBackground::where('del_status', 'Live')->latest()->get();
        return view('admin.card-excel-upload.card-generate-view', $data);
    }
    /**
     * Card Generate.
     *
     * @return \Illuminate\Http\Response
     */
    public function cardGenerate(Request $request)
    {

        $validated = $request->validate([
            'design_id' => 'required',
            'item_id' => 'required',
        ]);

        if ($validated){
            $card_design_list = CardDesign::findOrFail($request->design_id);
            $extract_card_design = htmlspecialchars($card_design_list->card_design);
            $item_list = Card::findOrFail($request->item_id);
            $card_item_list = $item_list->cardDetails;
            $actual_item = [];
            foreach ($card_item_list as $key=>$item){
                $card_assign = $extract_card_design;
                $card_assign = str_replace(array("Location"), array($item->location ?? ""), $card_assign);
                $card_assign = str_replace(array("Model"), array($item->model ?? ""), $card_assign);
                $card_assign = str_replace(array("Price"), array($item->price ?? ""), $card_assign);
                $card_assign = str_replace(array("Date Range"), array($item->date_range ?? ""), $card_assign);
                $card_assign = str_replace(array("QR-Code"), array($item->qr_code ?? ""), $card_assign);
                $card_assign = str_replace(array("Other"), array($item->Other ?? ""), $card_assign);
                array_push($actual_item, $card_assign);
            }
            return view('admin.card-excel-upload.generate_list',compact('actual_item'));
        }
    }


    /**
     * Card Generate PDF
     *
     * @return \Illuminate\Http\Response
     */
    public function cardGeneratePDF($id)
    {
        $id = encryptDecrypt($id, 'decrypt');
        $card = Card::findOrFail($id);
       $generate_pdf = PDF::loadView('admin.card-excel-upload.card-generate-pdf', compact('card'));
       return $generate_pdf->download($card->id . '.pdf');
    }
}
