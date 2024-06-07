<?php

use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\EmployerController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\JobController;
use App\Http\Middleware\Authenticate;
use App\Http\Middleware\AuthenticatedMiddleware;
use App\Models\Skill;
use App\Models\Experience;
use App\Models\Salary;
use App\Models\State;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {

    $experience = Experience::all();
    $state = State::all();
    $skill = Skill::all();

    return view('welcome', ['experience' => $experience, 'state' => $state, 'skill' => $skill]);
});

Auth::routes();

// first route of employer and employee after login
Route::get('/home', [HomeController::class, 'dashboard'])->name('dashboad')->middleware(AuthenticatedMiddleware::class);


//employer 
// profile
Route::get('/profile', [EmployerController::class, 'profile'])->name('subject.profile')->middleware(AuthenticatedMiddleware::class);

Route::get('/profile/edit', [EmployerController::class, 'profileEdit'])->name('subject.profileEdit')->middleware(AuthenticatedMiddleware::class)->middleware(AuthenticatedMiddleware::class);
Route::post('/edit/store', [EmployerController::class, 'edit'])->name('subject.edit')->middleware(AuthenticatedMiddleware::class)->middleware(AuthenticatedMiddleware::class);

// add job
Route::get('/add/job', [EmployerController::class, 'add'])->name('subject.add')->middleware(AuthenticatedMiddleware::class);
// view employee profile
Route::get('/view/employee/{id}', [EmployerController::class, 'viewProfile'])->name('view.profile')->middleware(AuthenticatedMiddleware::class);

// job route
Route::post('/job/store', [JobController::class, 'storeJob'])->name('subject.job'); //



Route::get('/logout', [EmployerController::class, 'logout'])->name('logout');

// welcome email template
Route::get('/welcome', [EmployerController::class, 'welcome'])->name('subject.welcome');

// search route
Route::get('/jobs', [JobController::class, 'jobs'])->name('subject.jobs');
Route::get('/jobs/search', [JobController::class, 'search'])->name('search.job');


// apply job
Route::post('/job/apply', [JobController::class, 'apply'])->name('apply.job');

// View interest-jobs

Route::get('/job/interest/{id}', [JobController::class, 'viewInterest'])->name('job.interest');

// notification bell
Route::get('/job/notification', [JobController::class, 'notification'])->name('job.notification');


// employee
Route::get('/employee/profile', [EmployeeController::class, 'profile'])->name('employee.profile');
Route::get('/employee/edit/{id}', [EmployeeController::class, 'edit'])->name('profile.edit');
Route::post('/profile/store', [EmployeeController::class, 'profileStore'])->name('profile.store');
Route::get('/employee/featuredJobs', [EmployeeController::class, 'featuredJobs'])->name('featured.jobs');

























// email test
// Route::get('/test', function () {

//     $response = Mail::send('mail.welcome', ['name' => 'vikas'], function ($msg) {
//         $msg->to("j3rry9876@gmail.com")
//             ->subject("welcome email");
//     });
//     dd($response);
//     echo "jcc";
// });
