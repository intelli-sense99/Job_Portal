@extends('employee-layout.default')
@section('content')
    @php
        $id = Auth::id();        
    @endphp
    <section>
        <div class="container">
            <div class="main-body">


                <!-- /Breadcrumb -->

                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="{{ asset('storage') . '/uploads/' . $profile->image }}" alt="Admin"
                                        class="rounded-circle" width="150" height="150"
                                        style="border-radius:50%; border:1px solid rgb(3, 54, 163); padding:3px; object-fit:cover;">
                                    <div class="mt-3">
                                        <h4>{{ $profile->name ?? null }}</h4>
                                        {{-- <p class="text-secondary mb-1">Full Stack Developer</p>
                                        <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p> --}}
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <a class="btn btn-outline-success px-5 py-1 "
                                                    href="{{ url('/employee/edit/' . $id) }}">Edit Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-globe mr-2 icon-inline">
                                            <circle cx="12" cy="12" r="10"></circle>
                                            <line x1="2" y1="12" x2="22" y2="12"></line>
                                            <path
                                                d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z">
                                            </path>
                                        </svg>Website</h6>
                                    <span class="text-secondary">{{ $data->portfolio ?? 'N/A' }}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-github mr-2 icon-inline">
                                            <path
                                                d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22">
                                            </path>
                                        </svg>Github</h6>
                                    <span class="text-secondary">{{ $data->github ?? 'N/A' }}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-twitter mr-2 icon-inline text-info">
                                            <path
                                                d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                            </path>
                                        </svg>Twitter</h6>
                                    <span class="text-secondary">{{ $data->twitter ?? 'N/A' }}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0">
                                        <i class="fa-regular fa-file fa-lg px-1" style="color: #04a374;"></i>Resume
                                    </h6>
                                    <span class="text-secondary">
                                        @if ($data->resume)
                                            <a href="{{ asset('storage') . '/cv/' . $data->resume }}"
                                                class="text-decoration-none" target="_blank">Your CV</a>
                                        @else
                                            <span>NO Resume</span>
                                        @endif
                                    </span>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <h5 class="text-success py-1 px-4">Personal Details</h5>
                                    <hr>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $profile->name ?? null }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $profile->email ?? 'N\A' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $profile->phone ?? 'N\A' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary text-capitalize">
                                        {{ $data->gender ?? 'N/A' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <span class=" text-capitalize">

                                            {{ $data->address ?? '' }}
                                        </span>
                                        <span class=" text-capitalize">

                                            {{ $data->getCity->city ?? '' }}
                                        </span>
                                        <span class=" text-capitalize">
                                            {{ $data->getState->state ?? 'N/A' }}
                                        </span>
                                    </div>
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Country</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $data->getCountry->country ?? 'N/A' }}

                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <h5 class="text-success py-1 px-4">Professionals Details</h5>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Skills</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <span class="text-primary ">
                                            {{ count($employeeSkills) > 0 ? implode(' / ', $employeeSkills) : 'No Skills' }}
                                        </span>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Company</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $data->company_name ?? 'N/A' }}

                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Position</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $data->position ?? 'N/A' }}

                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Experience</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $data->getExperience->experience ?? 'N/A' }}

                                    </div>
                                </div>
                                <hr>

                            </div>
                        </div>




                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
