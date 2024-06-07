<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\Job_inquiries;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        return view('home');
    }



    public function dashboard()
    {
        $id = Auth::id();



        $data = User::find($id);

        // dd($data);
        $jobs = [];

        if ($data->getJobs) {
            $jobs = $data->getJobs;
        }


        if ($data->role == 1) {
            return view('employee.employeeDashboard', ['employeedata' => $data]);
        } else {
            return view('employer.employerDashboad', ['data' => $jobs]);
        }
    }
}
