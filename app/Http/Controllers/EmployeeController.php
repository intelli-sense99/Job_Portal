<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\Country;
use App\Models\Experience;
use App\Models\Job;
use App\Models\Job_skill;
use App\Models\Salary;
use App\Models\Skill;
use App\Models\State;
use App\Models\User;
use App\Models\User_Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class EmployeeController extends Controller
{

    public function profile()
    {
        // dd(Auth::id());
        $id = Auth::id();
        $profile = User::find($id);
        $data = User_Profile::where(['employee_id' => $id])->first();
        // dd($data->getProfileSkills);


        $employeeSkills = [];

        foreach ($data->getProfileSkills as $key => $val) {

            $employeeSkills[] = $val->getSkillName->skills;
        }
        // dd($employeeSkills);


        return view('employee.profile', ['profile' => $profile, 'data' => $data, 'employeeSkills' => $employeeSkills]);
    }


    public function edit(Request $request)
    {
        // dd($request->id);
        $id = $request->id;
        $data = User::find($id);
        $profile = User_Profile::where(['employee_id' => $id])->first();

        $country = Country::all();
        $state = State::all();
        $city = City::all();
        $skills = Skill::all();
        $experience = Experience::all();

        return view('employee.profile_edit', ['data' => $data, 'profile' => $profile, 'city' => $city, 'state' => $state, 'country' => $country, 'experience' => $experience, 'skills' => $skills]);
    }

    public function profileStore(Request $request)
    {


        // dd($request->all());
     

        $rules = [
            'name' => 'required',
            'phone' => 'required|digits:10|numeric',
            'gender' => 'required',
            'address' => 'required',
            'city_id' => 'required',
            'state_id' => 'required',
            'country_id' => 'required',
            'skills' => 'required',
            'experience_id' => 'required',
            'github' => 'required',
            'twitter' => 'required',
            'resume' => 'required',
            // 'description' => 'required',
        ];

        $message = [
            'city_id.required' => ' City is required. ',
            'state_id.required' => ' State is required. ',
            'country_id.required' => ' Country is required. ',
            'experience_id.required' => ' Experience is required. ',
            'resume.required' => ' Upload Your CV ',

        ];

        $validator = Validator::make($request->all(), $rules, $message);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $id = Auth::id();
        $profile = User_Profile::where(['employee_id' => $id])->first();
        $user = User::find($id);
        // dd($profile);


        $ext = $request->resume->extension();
        $unique_name = time() . '.' . $ext;



        if ($profile) {
            $profile->address = $request->address;
            $profile->gender = $request->gender;
            $profile->city_id = $request->city_id;
            $profile->state_id = $request->state_id;
            $profile->country_id = $request->country_id;
            $profile->experience_id = $request->experience_id;
            $profile->github = $request->github;
            $profile->twitter = $request->twitter;
            $profile->resume = $unique_name;

            $profile->company_name = $request->company_name ?? '';
            $profile->position = $request->position ?? '';
            $profile->portfolio = $request->portfolio ?? '';

            $result = $profile->save();

            if ($result) {
                $request->resume->storeAs('/public/cv/' . $unique_name);
            }
        }

        if ($user) {
            $user->name = $request->name;
            $user->phone = $request->phone;
            $output = $user->save();
        }


        // check skills are present or not

        $is_present_skills = Job_skill::where('employee_id', $id)->get();

        if (count($is_present_skills) > 0 && $is_present_skills) {
            // first delete old skills

            foreach($is_present_skills as $skill){

                $skill->delete();
               
            }

             // then update with new one
             if ($request->skills) {
                foreach ($request->skills as $key => $val) {
                    Job_skill::create([
                        'skill_id' => $val,
                        'employee_id' => $id,
                    ]);
                }
            }
            
        } else {
            if ($request->skills) {
                foreach ($request->skills as $key => $val) {
                    Job_skill::create([
                        'skill_id' => $val,
                        'employee_id' => $id,
                    ]);
                }
            }
        }


        if ($result || $output) {
            $request->session()->flash('success', 'Your Profile is Up to Date');
        } else {
            $request->session()->flash('error', 'Something Went Wrong !');
        }

        return back();
    }


    public function featuredJobs(Request $request)
    {
        $experience = Experience::all();
        $salary = Salary::all();
        $skill = Skill::all();

        $skill_id = $request->skill_id ?? null;
        $experience_id = $request->experience_id ?? null;
        $location_id = $request->location_id ?? null;
        $salary_id = $request->salary_id ?? null;


        $id = Auth::id();
        $data = User_Profile::where(['employee_id' => $id])->first();

        // dd($data->getProfileSkills);

        $skill_id = [];

        foreach ($data->getProfileSkills as $key => $val) {

            $skill_id[] = $val->skill_id;
        }





        $jobs = Job::with(['getSkill', 'getExperience', 'getEmployer', 'getSalary']);

        //  dd($jobs);

        $jobs = $jobs->where(function ($query) use ($skill_id) {



            if ($skill_id) {


                $query->whereHas('getSkill', function ($query) use ($skill_id) {

                    if ($skill_id) {

                        $query->whereIn('skill_id', $skill_id);
                    }
                });
            }
        })->orderBy('created_at', 'desc')->paginate(5);

        return view('guest.guest_jobs', ['jobs' => $jobs, 'skill_id' => $skill_id, 'experience_id' => $experience_id, 'location_id' => $location_id, 'salary_id' => $salary_id, 'all_experience' => $experience, 'all_salary' => $salary, 'all_skills' => $skill]);
    }




    // public function search(Request $request)
    // {
    //     $emp_data = Employer::with('getState')->get();
    //     // dd($state);
    //     $experience = Experience::all();
    //     $salary = Salary::all();
    //     $skill = Skill::all();

    //     $skill_id = $request->skill_id ?? null;
    //     $experience_id = $request->experience_id ?? null;
    //     $location_id = $request->location_id ?? null;
    //     $salary_id = $request->salary_id ?? null;

    //     $jobs = Job::with(['getSkill', 'getExperience', 'getEmployer', 'getSalary']);

    //     //  dd($jobs);

    //     $jobs = $jobs->where(function ($query) use ($skill_id, $experience_id, $location_id, $salary_id) {



    //         if ($skill_id) {


    //             $query->whereHas('getSkill', function ($query) use ($skill_id) {

    //                 if ($skill_id) {

    //                     $query->where('skill_id', $skill_id);
    //                 }
    //             });
    //         }

    //         if ($experience_id) {

    //             $query->whereHas('getExperience', function ($query) use ($experience_id) {

    //                 if ($experience_id) {
    //                     $query->where('id', $experience_id);
    //                 }
    //             });
    //         }

    //         if ($location_id) {
    //             $query->whereHas('getEmployer', function ($query) use ($location_id) {

    //                 if ($location_id) {
    //                     $query->where('state_id', $location_id);
    //                 }
    //             });
    //         }

    //         if ($salary_id) {

    //             $query->where('salary_id', $salary_id);
    //         }
    //     })->paginate(5);

    //     return view('guest.guest_jobs', ['jobs' => $jobs, 'skill_id' => $skill_id, 'experience_id' => $experience_id, 'location_id' => $location_id, 'salary_id' => $salary_id, 'emp_data' => $emp_data, 'all_experience' => $experience, 'all_salary' => $salary, 'all_skills' => $skill]);
    // }
}
