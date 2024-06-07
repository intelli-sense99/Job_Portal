@php
    $skills_ids = getEmployeeSkills();
    // dd(count($skills));
@endphp



@extends('employee-layout.default')
@section('content')
    <section>

        <div class="container">
            @if (Session::has('success'))
                <div class="alert alert-success text-center">
                    {{ Session::get('success') }}
                </div>
            @endif
            @if (Session::has('error'))
                <div class="alert alert-danger text-center">
                    {{ Session::get('error') }}
                </div>
            @endif
            <div class="row gutters d-flex justify-content-center my-5">


                <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-12">
                    <div class="text-center">
                        <h3>Edit Profile</h3>
                    </div>
                    <form action="{{ route('profile.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mb-2 text-primary">Personal Details</h6>
                                        <hr>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">

                                            <label class="form-label">Full Name</label>
                                            <input type="text" class="form-control fs-6" name="name"
                                                placeholder="Enter full name" value="{{ $data->name ?? '' }}">

                                            @error('name')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="eMail">Email</label>
                                            <input type="email" class="form-control fs-6" name="email"
                                                placeholder="Enter email " value="{{ $data->email ?? '' }}" disabled>

                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="phone">Phone</label>
                                            <input type="text" class="form-control fs-6" name="phone"
                                                placeholder="Enter phone number" value="{{ $data->phone ?? '' }}">
                                            @error('phone')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mt-5 ">
                                            <label class="form-label" for="website">Gender :</label>
                                            <span>
                                                <input class="form-check-input" type="radio" name="gender" value="male"
                                                    {{ $profile->gender == 'male' ? 'checked' : '' }} />
                                                <span>
                                                    Male
                                                </span>
                                            </span>

                                            <span>
                                                <input class="form-check-input" type="radio" name="gender" value="female"
                                                    {{ $profile->gender == 'female' ? 'checked' : '' }} />
                                                <span>
                                                    Female
                                                </span>
                                            </span>
                                            @error('gender')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mt-3 mb-2 text-primary">Address</h6>
                                        <hr>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="Street">Street/Address</label>
                                            <input type="name" class="form-control fs-6" name="address"
                                                placeholder="Enter Address" value="{{ $profile->address ?? '' }}">
                                            @error('address')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="ciTy">City</label>
                                            <select class="form-select" name="city_id">
                                                <option selected disabled>Select City </option>
                                                @foreach ($city as $key => $val)
                                                    <option value="{{ $val->id }}" <?php echo $val->id == $profile->city_id ? 'selected' : ''; ?>>
                                                        {{ $val->city }}</option>
                                                @endforeach
                                            </select>
                                            @error('city_id')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="sTate">State</label>
                                            <select class="form-select" name="state_id">
                                                <option selected disabled>Select State</option>
                                                @foreach ($state as $key => $val)
                                                    <option value="{{ $val->id }}" <?php echo $val->id == $profile->state_id ? 'selected' : ''; ?>>
                                                        {{ $val->state }}</option>
                                                @endforeach
                                            </select>
                                            @error('state_id')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="country">Country</label>
                                            <select class="form-select" name="country_id">
                                                <option selected disabled>Select Country</option>
                                                @foreach ($country as $key => $val)
                                                    <option value="{{ $val->id }}" <?php echo $val->id == $profile->country_id ? 'selected' : ''; ?>>
                                                        {{ $val->country }}</option>
                                                @endforeach

                                            </select>
                                            @error('country_id')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mt-3 mb-2 text-primary">Professional Details</h6>
                                        <hr>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="Street">Skills</label>
                                            <select id="multiple" name="skills[]" class="js-states form-control"
                                                multiple>
                                                @foreach ($skills as $key => $val)
                                                    <option value="{{ $val->id }}" <?php
                                                    if (count($skills_ids) > 0) {
                                                        foreach ($skills_ids as $key => $value) {
                                                            echo $value == $val->id ? 'selected' : '';
                                                        }
                                                    }
                                                    
                                                    ?>>
                                                        {{ $val->skills }}</option>
                                                @endforeach

                                            </select>
                                            @error('skills')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="">Experience</label>
                                            <select class="form-select" name="experience_id">
                                                <option selected disabled>Select Experience</option>
                                                @foreach ($experience as $key => $val)
                                                    <option value="{{ $val->id }}" <?php echo $val->id == $profile->experience_id ? 'selected' : ''; ?>>
                                                        {{ $val->experience }}</option>
                                                @endforeach
                                            </select>
                                            @error('experience_id')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="sTate">Company Name <span>(if
                                                    have)</span></label>
                                            <input type="text" class="form-control fs-6" name="company_name"
                                                placeholder="Enter State" value="{{ $profile->company_name ?? '' }}">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="zIp">Position <span>(if
                                                    have)</span></label>
                                            <input type="text" class="form-control fs-6" name="position"
                                                placeholder="Enter Position" value="{{ $profile->position ?? '' }}">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="">GitHub</label>
                                            <input type="text" class="form-control fs-6" name="github"
                                                placeholder="Github Id" value="{{ $profile->github ?? '' }}">
                                            @error('github')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label class="form-label" for="">Twitter</label>
                                            <input type="text" class="form-control fs-6" name="twitter"
                                                placeholder="Twitter Id" value="{{ $profile->twitter ?? '' }}">
                                            @error('twitter')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label class="form-label" for="zIp">Portfolio <span>(if
                                                    have)</span></label>
                                            <input type="text" class="form-control" name="portfolio"
                                                placeholder="Portfolio Link" value="{{ $profile->portfolio ?? '' }}">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label class="form-label"
                                                for="">{{ $profile->resume ? 'Update resume' : 'Uploade Resume' }}</label>
                                            <input type="file" class="form-control" name="resume">
                                            @error('resume')
                                                <div class="text-danger mx-3 py-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                                <div class="row gutters ">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="text-center">

                                            <button type="submit"
                                                class="btn btn-outline-success px-5 py-1 my-3">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
