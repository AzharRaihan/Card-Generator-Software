<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class RecoverPasswordController extends Controller
{
    /**
     * Email validation form
     * @return \Illuminate\View\View
     */
    public function stepOne()
    {
        return view('auth.reset_password_step_one');
    }

    /**
     * Check Email
     * @return \Illuminate\View\View
     */
    public function checkEmail(Request $request)
    {
        $this->validate($request,['email' => 'required']);
        if(User::where('email',$request->email)->exists()) {
            $email = $request->email;
            return redirect()->route('reset-password-step-two',['email' => $email]);
        } else {
            return redirect(route('reset-password-step-one'))->with(errorMessage('Invalid Email address.'));
        }
    }

    /**
     * Redirect to check question answer
     * @return \Illuminate\View\View
     */
    public function stepTwo() {
        $email = request()->get('email');
        if(User::where('email',$email)->exists()) {
            $jsonString = File::get(storage_path('sampleQustions.json'));
            $questions = json_decode($jsonString, true);
            return view('auth.reset_password_step_two',compact('email','questions'));
        } else {
            return redirect(route('reset-password-step-one'))->with(errorMessage('Invalid Email address.'));
        }

    }

    /**
     * Check Question Answer
     * @return \Illuminate\Http\RedirectResponse
     */
    public function checkQuestionAnswer(Request $request)
    {
        $this->validate($request,[
            'email' => 'required',
            'question' => 'required',
            'answer' => 'required'
        ],
            [
                'email.required' => 'The Email field is required.',
                'question.required' => 'The Question field is required.',
                'answer.required' => 'The Answer field is required.'
            ]
        );
        $conditions = [
            'email' => $request->email,
            'question' => $request->question,
            'answer' => $request->answer
        ];
        $email = $request->email;

        if(User::where($conditions)->exists()) {
            return redirect()->route('reset-password-step-three',['email' => $email]);
        } else {
            return redirect()->route('reset-password-step-two',['email' => $email])->with('message','Question and Answer didn\'t match!');
        }
    }

    /**
     * Redirect to password form
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function stepThree() {
        $email = request()->get('email');
        if(User::where('email',$email)->exists()) {
            return view('auth.reset_password_step_three',compact('email'));
        } else {
            return redirect()->route('reset-password-step-two',['email' => $email])->with(errorMessage('Invalid Email address.'));
        }
    }

    /**
     * Reset Password
     * @return \Illuminate\Http\RedirectResponse
     */
    public function resetPassword(Request $request) {
        $this->validate($request,
            [
                'email' => 'required',
                'new_password' => 'required',
                'confirm_password' => 'required|same:new_password'
            ],
            [
                'new_password.required' => 'The New Password field is required.',
                'confirm_password.required' => 'The Confirm Password field is required.',
            ]
        );

        $email = request()->get('email');
        if(User::where('email',$email)->exists()) {
            User::where('email',$email)->update(['password' => Hash::make($request->confirm_password)]);
            return redirect()->route('home')->with(['message' => 'Password has been changed successfully!','type' => 'info']);
        } else {
            return redirect()->route('reset-password-step-two',['email' => $email])->with(errorMessage('Invalid Email address.'));
        }

    }
}
