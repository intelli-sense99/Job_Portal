<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\Country;
use App\Models\Employer;
use App\Models\Experience;
use App\Models\Job_inquiries;
use App\Models\Language;
use App\Models\Salary;
use App\Models\Skill;
use App\Models\State;
use App\Models\User;
use App\Models\User_Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;

class EmployerController extends Controller
{

    public function welcome()
    {
        return view('mail.welcome');
    }

    public function profile()
    {
        $id = Auth::id();
        $data = User::with('profile')->find($id);
        // dd($data->profile->employer_id);
        return view('employer.profile', ['employer' => $data]);
    }



    public function profileEdit()
    {
        $id = Auth::id();
        $data = User::with('profile')->find($id);
        $cities = City::all();
        $states = State::all();
        $country = Country::all();


        return view('employer.profile_edit', ['data' => $data, 'cities' => $cities, 'country' => $country, 'states' => $states]);
    }


    public function edit(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'company' => 'required',
            'phone' => 'required|numeric|digits:10',
            'address' => 'required',
            'longitude' => 'required',
            'latitude' => 'required',
            'country_id' => 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'experience' => 'required',
            'position' => 'required',
        ]);

        $id = Auth::id();
        // dd($id);

        $employer = Employer::where(['employer_id' => $id])->first();
        // dd($employer);
        if ($employer) {


            $employer->company_name = $request->company;
            $employer->location = $request->address;
            $employer->long = $request->longitude;
            $employer->lat = $request->latitude;
            $employer->country_id = $request->country_id;
            $employer->state_id = $request->state_id;
            $employer->city_id = $request->city_id;
            $employer->company_phone = $request->phone;
            $employer->experience = $request->experience;
            $employer->position = $request->position;
        }

        $result = $employer->save();

        if ($result) {
            $request->session()->flash('success', 'Your Profile is Completed');
        } else {
            $request->session()->flash('error', 'Something Went Wrong !');
        }


        return redirect()->back();
    }

    public function add()
    {
        $id = Auth::id();

        // dd($id);

        $skills = Skill::all();
        $languages = Language::all();
        $experience = Experience::all();
        $salary = Salary::all();

        return view('employer.add_job', ['skills' => $skills, 'languages' => $languages, 'experience' => $experience, 'salary' => $salary]);
    }


    public function viewProfile(Request $request)
    {

        // dd($request->id);
        $id = $request->id;
        $data = User::find($id);

        // dd($data->getEmployeeData);

        return view('employer.view_employee_profile', ['data' => $data]);
    }


    public function logout()
    {

        Auth::logout();
        return redirect()->route('login');
    }
}
