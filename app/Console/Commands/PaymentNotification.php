<?php

namespace App\Console\Commands;

use App\Model\Organization;
use App\Model\Payment;
use App\Model\User;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Log;

class PaymentNotification extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'payment:notification';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send sms to parent for payment';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // From:: https://www.itsolutionstuff.com/post/laravel-6-cron-job-task-scheduling-tutorialexample.html
        // Dev command:: php artisan schedule:run
        $organizations = Organization::where('sms_to_parent_for_payment', 1)->get();
        foreach($organizations as $organization) {
            $send_before = $organization->sms_to_parent_before_for_payment;
            $payment_date = date("Y-m-d", strtotime(Carbon::today()->addDay($send_before)->toDateTimeString()));
            $therapy_payment_dates = Payment::where('organization_id',$organization->id)->whereNotNull('therapy_date')->where('therapy_date', $payment_date)
                ->select('id','student_id', 'therapy_id', 'therapy_date','parent_id','amount')->get();
            $organization_id = $organization->id;
            foreach ($therapy_payment_dates as $th_date) {
                $mobile = $th_date->user->mobile;
                $message = "Your next payment date for ".$th_date->student->full_name." is ". $th_date->therapy_date. " Amount ". $th_date->amount;
                User::sendSms($organization_id, $mobile, $message);
                Log::info(['org_id' => $organization_id, 'mobile' => $mobile, 'message' => $message]);
            }
        }

    }
}
