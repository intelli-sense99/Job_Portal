<?php

use App\Models\Job_inquiries;
use App\Models\User;
use App\Models\User_Profile;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Return_;

function getuser($id = false)
{
    if ($id) {
        $data = User::find($id);
        return $data;
    }
    return false;
}


function getTotalJobNotifications($count_output = true)
{
    $id = Auth::id();
    $count = 0;
    $employer = User::find($id);
    $enquiries = [];

    if ($employer->getJobs) {

        foreach ($employer->getJobs as $job) {

            if (!$job->getUnreadInquiries->isEmpty()) {

                $enquiry_list = $job->getUnreadInquiries;

                if ($enquiry_list) {

                    foreach ($enquiry_list as $enquiry_detail) {

                        $enquiries[] = ['enquiry_id' => $enquiry_detail->id ?? null, 'job_title' => $enquiry_detail->getJobDetail->job_title ?? null, 'name' => $enquiry_detail->name, 'email' => $enquiry_detail->email, 'phone' => $enquiry_detail->phone, 'resume' => $enquiry_detail->resume];
                    }
                }
            }

            $count = $count + $job->getUnreadInquiries->count();
        }
    }
    if ($count_output) {
        return $count;
    }
    return $enquiries;
}



function getResume()
{

    $id = Auth::id();

    if ($id) {

        $user = User::find($id);
        if ($user->role == 1) {
            $employeeProfile = User_Profile::where(['employee_id' => $id])->first();
            $resume = $employeeProfile->resume;
            return $resume;
        }
    }

    return false;
}

function getRole()
{
    $id = Auth::id();
    if ($id) {

        $data = User::find($id);
        $role = $data->role;
        return $role;
    }
    return false;
}

function getEmployeeSkills()
{
    $id = Auth::id();

    $skill_id = [];
    if ($id) {
        $data = User::find($id);
        $role = $data->role;
        if ($role == 1) {
            $data = User_Profile::where(['employee_id' => $id])->first();
            // dd($data->getProfileSkills);

            foreach ($data->getProfileSkills as $key => $val) {

                $skill_id[] = $val->skill_id;
            }
            return $skill_id;
        }
    }
    return false;
}




function isApplied($job_id = null)
{
    $employee_id = Auth::id() ?? null;

    if ($employee_id && $job_id) {

        $is_applied = Job_inquiries::Where(['job_id' => $job_id, 'employee_id' => $employee_id])->count();

        if ($is_applied >  0) {
            return true;
        }
    }
    return false;
}




function getRange($proposals)
{
    //if ($proposals > 0) {

        $remander = $proposals % 10;

        $quotient = ($proposals - $remander) / 10;

        if ($remander > 5) {
            $start = ($quotient * 10) + 5;
            $end = $start + 5;
        } else {
            $start = $quotient * 10;
            $end = $start + 5;
        }
        
        $proposals_range = $start . '-' . $end;
        return $proposals_range;
    //}
    
}
