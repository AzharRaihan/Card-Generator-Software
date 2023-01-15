<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteSetting;

class SiteSettingsController extends Controller
{
    /**
     * Site settings set up form
     */
    public function siteSettings() {
        $data = SiteSetting::first();
        if(!isset($data)) {
            SiteSetting::insert(array('title' => "Site Name"));
            $data = SiteSetting::first();
        }
        return view('admin.settings.site_settings',compact('data'));
    }

    /**
     * Update site settings
     */
    public function updateSiteSettings(Request $request) {
        $this->validate($request,[
            'title' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'footer' => 'required',
            'address' => 'required',
        ],[
            'title.required' => 'The Title field is required.',
            'phone.required' => 'The Phone Number field is required.',
            'email.required' => 'The Email field is required.',
            'email.email' => 'The Email should be a valid email address.',
            'footer.required' => 'The Footer field is required.',
            'address.required' => 'The Address field is required.',
        ]);
        $data = SiteSetting::first();
        $data->title = $request->title;
        $data->phone = $request->phone;
        $data->email = $request->email;
        if ($data->logo == Null) {
            $this->validate($request,['logo' => 'required|image|mimes:jpeg,jpg,png',],[
                'logo.required' => 'The Logo field is required.',
                'logo.image' => 'The Logo must be an image.',
            ]);
        }
        if($request->file('logo')) {
            // if(($data->logo) && !empty($data->logo && file_exists($data->logo))){
            //     unlink($data->logo);
            // }
            $logoName = uploadImage($request->file('logo'),'files/',100,188,40);
        } else{
            $logoName = $data->logo;
        }
        $data->logo = $logoName;
        if ($data->favicon == Null) {
            $this->validate($request,['favicon' => 'required|image|mimes:jpeg,jpg,png',],[
                'favicon.required' => 'The Favicon field is required.',
                'favicon.image' => 'The favicon must be an image.',
            ]);
        }
        if($request->file('favicon')) {
            if(($data->favicon) AND !empty($data->favicon AND file_exists($data->favicon))){
                unlink($data->favicon);
            }
            $faviconName = uploadImage($request->file('favicon'),"files/",80,80);
        } else{
            $faviconName = $data->favicon;
        }
        $data->favicon = $faviconName;
        $data->footer = $request->footer;
        $data->address = $request->address;
        $data->save();
        return redirect()->route('admin.site-settings')->with(updateMessage("Information has been updated successfully !"));
    }
}
