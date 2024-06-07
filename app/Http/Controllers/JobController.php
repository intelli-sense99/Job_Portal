<?php

namespace App\Http\Controllers;

// use App\facade\Guest;

use Guest;

use App\Models\User_Profile;
use Illuminate\Support\Facades\Auth;

use App\Models\Employer;
use App\Models\Experience;
use App\Models\Job;
use App\Models\Job_inquiries;
use App\Models\job_language;
use App\Models\Job_skill;
use App\Models\Salary;
use App\Models\Skill;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
// use Auth;
use Illuminate\Support\Facades\Validator;

class JobController extends Controller
{
    public function storeJob(Request $request)
    {
        // dd($request->all());


        // custome validator messages
        $rules = [
            'job_title' => 'required',
            'skill' => 'required',
            'experience_id' => 'required',
            'language' => 'required',
            'salary_id' => 'required',
            'job_description' => 'required',
            'job_validity' => 'required|after_or_equal:today',
        ];

        $message = [
            'job_title.required' => ' Job title is required. ',
            'skill.required' => ' Skill is required. ',
            'experience_id.required' => ' Experience is required. ',
            'language.required' => ' Choose atleast 1 Langiage. ',
            'salary_id.required' => ' Enter salary range. ',
            'job_description.required' => ' Enter job description. ',
        ];

        $validator = Validator::make($request->all(), $rules, $message);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $request->request->add(['employer_id' => Auth::id()]); //add employer id here

        $foramted_date = date('d-m-Y', strtotime($request->job_validity));
        $request->request->add(['job_validity' => $foramted_date]);

        $job = Job::create($request->all());


        if ($job) {
            $id = $job->id;

            if ($request->skill) {
                foreach ($request->skill as $skill) {
                    Job_skill::create(['skill_id' => $skill, 'job_id' => $id]);
                }
            }
            if ($request->language) {
                foreach ($request->language as $language) {
                    job_language::create(['language_id' => $language, 'job_id' => $id]);
                }
            }
        }


        if ($job) {
            $request->session()->flash('success', 'Job posted Successfully');
        } else {
            $request->session()->flash('error', 'Something Went Wrong !');
        }


        return redirect()->back();
    }

    public function jobs(Request $request)
    {

        // dd(Guest::test());    call facade here

        $emp_data = Employer::with('getState')->get();
        // dd($state);
        $experience = Experience::all();
        $salary = Salary::all();
        $skill = Skill::all();

        $skill_id = $request->skill_id ?? null;
        $experience_id = $request->experience_id ?? null;
        $location_id = $request->location_id ?? null;
        $salary_id = $request->salary_id ?? null;

        $search = false;


        if ($skill_id && $experience_id) {
            $search = true;
        }


        // if ($search) {

        //     $jobs = Job::with(['getSkill', 'getExperience', 'getEmployer', 'getSalary']);

        //     $jobs = $jobs->whereHas('getSkill', function ($query) use ($skill_id) {

        //         if ($skill_id) {

        //             $query->where('skill_id', $skill_id);
        //         }
        //     })->whereHas('getExperience', function ($query) use ($experience_id) {

        //         if ($experience_id) {
        //             $query->where('id', $experience_id);
        //         }
        //     })->whereHas('getEmployer', function ($query) use ($location_id) {

        //         if ($location_id) {
        //             $query->where('state_id', $location_id);
        //         }
        //     })->where(['salary_id' => $salary_id])->paginate(5);
        // } else {

        $jobs = Job::orderBy('id', 'desc')->paginate(5);
        // $jobs = Job::all();

        // dd($jobs);



        return view('guest.guest_jobs', [
            'jobs' => $jobs,
            'skill_id' => $skill_id,
            'experience_id' => $experience_id,
            'location_id' => $location_id,
            'salary_id' => $salary_id,
            'emp_data' => $emp_data,
            'all_experience' => $experience,
            'all_salary' => $salary,
            'all_skills' => $skill,

        ]);
    }


    public function search(Request $request)
    {
        $emp_data = Employer::with('getState')->get();
        // dd($state);
        $experience = Experience::all();
        $salary = Salary::all();
        $skill = Skill::all();

        $skill_id = $request->skill_id ?? null;
        $experience_id = $request->experience_id ?? null;
        $location_id = $request->location_id ?? null;
        $salary_id = $request->salary_id ?? null;

        $jobs = Job::with(['getSkill', 'getExperience', 'getEmployer', 'getSalary']);

        //  dd($jobs);

        $jobs = $jobs->where(function ($query) use ($skill_id, $experience_id, $location_id, $salary_id) {



            if ($skill_id) {


                $query->whereHas('getSkill', function ($query) use ($skill_id) {

                    if ($skill_id) {

                        $query->where('skill_id', $skill_id);
                    }
                });
            }

            if ($experience_id) {

                $query->whereHas('getExperience', function ($query) use ($experience_id) {

                    if ($experience_id) {
                        $query->where('id', $experience_id);
                    }
                });
            }

            if ($location_id) {
                $query->whereHas('getEmployer', function ($query) use ($location_id) {

                    if ($location_id) {
                        $query->where('state_id', $location_id);
                    }
                });
            }

            if ($salary_id) {

                $query->where('salary_id', $salary_id);
            }
        })->paginate(5);

        return view('guest.guest_jobs', ['jobs' => $jobs, 'skill_id' => $skill_id, 'experience_id' => $experience_id, 'location_id' => $location_id, 'salary_id' => $salary_id, 'emp_data' => $emp_data, 'all_experience' => $experience, 'all_salary' => $salary, 'all_skills' => $skill]);
    }




    public function apply(Request $request)
    {

        // dd($request->all());
        $id = Auth::id();
        $user = User::find($id);
        // dd($user);
        $profile = User_Profile::where(['employee_id' => $id])->first();
        // dd($profile->resume);

        $result = Job_inquiries::create([
            'job_id' => $request->job_id,
            'employee_id' => $id,
            'name' => $user->name,
            'phone' => $user->phone,
            'email' => $user->email,
            'resume' => $profile->resume,
        ]);



        if ($result) {

            return response()->json([
                'is_success' => 'true',
                'msg' => 'Applied SuccessFully',
            ]);
        } else {
            return response()->json([
                'is_success' => 'false',
                'msg' => 'Something Went Wrong!',
            ]);
        }
    }


    public function viewInterest(Request $request)
    {
        // dd($request->id);

        $id = $request->id;

        $job_enquiries = [];

        if ($id) {
            $job = Job::find($id);
            // dd($job);
            if ($job->getInquiries) {
                $job_enquiries = $job->getInquiries;
            }
            // dd($job_enquiries);




            return view('employer.job_interest', ['job' => $job_enquiries, 'job_title' => $job->title]);
        }
        return back();
    }




    public function notification(Request $request)
    {


        $id = Auth::id();

        $notifications = getTotalJobNotifications(false);



        if ($notifications) {

            // dd($notifications);
            foreach ($notifications as $key => $val) {
                // dd($val['enquiry_id']);
                $enquiry_id = $val['enquiry_id'] ?? null;

                if ($enquiry_id) {
                    $enquiry = Job_inquiries::find($enquiry_id);

                    $enquiry->is_read = 1;
                    $enquiry->save();
                }
            }

            $html = view('modal.notification-list', ['notification' => $notifications])->render();

            return response()->json([
                'is_success' => 'true',
                'notifications' => $notifications,
                'html' => $html,
            ]);
        } else {
            return response()->json([
                'is_success' => 'false',
                'msg' => 'No Notification Update !',
            ]);
        }
    }
}
