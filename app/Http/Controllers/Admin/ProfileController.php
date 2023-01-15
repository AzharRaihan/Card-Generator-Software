<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\File;

class ProfileController extends Controller
{
    /**
     * Admin profile edit form
     * @return \Illuminate\View\View
     */
    public function profileEditForm()
    {
        return view('admin.profile.edit_profile');
    }

    /**
     * Handle admin update profile request
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function updateProfile(Request $request): \Illuminate\Http\RedirectResponse
    {
        $this->validate($request,[
            'first_name' => 'required',
            'last_name' => 'required',
            'username' => 'required',
            'mobile' => 'required',
            'email' => 'required|email|string',
        ],[
            'first_name.required' => 'The First Name field is required.',
            'last_name.required' => 'The Last Name field is required.',
            'username.required' => 'The Username field is required.',
            'mobile.required' => 'The Phone Number field is required.',
            'email.required' => 'The Email field is required.',
            'email.email' => 'The Email should be a valid email address.',
        ]);
        $admin = Auth::user();
        $admin->first_name = $request->first_name;
        $admin->last_name = $request->last_name;
        $admin->username = $request->username;
        $admin->email = $request->email;
        $admin->mobile = $request->mobile;
        if($admin->image == Null) {
            $this->validate($request,[
                'image' => 'required|image',
            ],[
                'image.required' => 'The Photo field is required.',
                'image.image' => 'The Image should be a valid image.',
            ]);
        }
        if($request->file('image')) {
            $this->validate($request,['image'=>'mimes:jpeg,jpg,png']);
            $image = $request->file('image');
            $imageName = time().$image->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath());
            $image_resize->resize(100,100);
            if (!file_exists('files/')) {
                mkdir('files/', 0755, true);
            }
            $image_resize->save('files/' .$imageName);
            $imageName = 'files/' .$imageName;
        } else{
            $imageName = $admin->image;
        }
        $admin->image = $imageName;
        $admin->save();
        return redirect()->route('admin.dashboard')->with(updateMessage());
    }

    /**
     * Admin change password form
     * @return \Illuminate\View\View
     */
    public function changePasswordForm(): \Illuminate\View\View
    {
        return view('admin.profile.change_password');
    }

    /**
     * Handle admin change password request
     * @param Request $request
     * @throws \Illuminate\Validation\ValidationException
     */
    public function changePassword(Request $request): \Illuminate\Http\RedirectResponse
    {
        $this->validate($request,[
            'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required|same:new_password'
        ],
        [
            'old_password.required' => 'The Old Password field is required.',
            'new_password.required' => 'The New Password field is required.',
            'confirm_password.required' => 'The Confirm Password field is required.',
        ]
        );
        $old_password = $request->old_password;
        $new_password = $request->new_password;
        $current_password = Auth::user()->password;
        if(Hash::check($old_password, $current_password)){
            Auth::user()->update(['password'=>Hash::make($new_password)]);
            return redirect()->route('admin.change-password')
                ->with(updateMessage('Password has been changed successfully!'));
        } else{
            return redirect()->route('admin.change-password')
                ->with(errorMessage('Old Password not match!'));
        }
    }

    /**
     * Security question setting form
     * @return \Illuminate\View\View
     */
    public function securityQuestionForm(): \Illuminate\View\View
    {
        $jsonString = File::get(storage_path('sampleQustions.json'));
        $questions = json_decode($jsonString, true);
        return view('admin.profile.set_security_question',compact('questions'));
    }

    /**
     * Handle security question set request
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */

    public function saveSecurityQuestion(Request $request) {
        $this->validate($request,
            [
                'question' => 'required',
                'answer' => 'required'
            ],
            [
                'question.required' => 'The Question field is required.',
                'answer.required' => 'The Answer field is required.',
                'confirm_password.same' => 'The New Password and Confirm Password must match.'
            ]
        );
        $user = Auth::user();
        $user->question = $request->question;
        $user->answer = $request->answer;
        $user->save();
        return redirect()->route('admin.set-security-question')->with(updateMessage());
    }
}
