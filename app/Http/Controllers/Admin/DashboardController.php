<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Model\Attendance;
use App\Model\Expense;
use App\Model\Payment;
use App\Model\Payroll;
use App\Model\PlanSubject;
use App\Model\PlanSubjectEvaluation;
use App\Model\PlanTherapy;
use App\Model\PlanTherapyEvaluation;
use Carbon\Carbon;
use Illuminate\Http\Request;






class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function index()
    {
        return view('admin.dashboard');
    }
}
