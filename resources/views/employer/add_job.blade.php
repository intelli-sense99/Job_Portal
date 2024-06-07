@extends('employer-layout.default')
@section('content')
    <section>


        <div class="container">
            @if (Session::has('success'))
                <div class="alert alert-success text-center text-capitalize">{{ Session::get('success') }}</div>
            @endif
            @if (Session::has('error'))
                <div class="alert alert-danger text-center text-capitalize">{{ Session::get('error') }}</div>
            @endif
            <div class="row">
                <div class="col-6 p-5  ">
                    <h3 class="text-center ">Post A Job</h3>
                    <hr>
                    <form action="{{ route('subject.job') }}" method="post">
                        @csrf


                        <div class="row mt-3 ">
                            <div class="col-md-12">
                                <label class="labels-input">Job Title</label>
                                <input type="text" class="form-control" placeholder="Post Title" name="job_title">
                                @error('job_title')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels-input">Skills</label>
                                <select class="form-select" name="skill[]" id="skills" multiple>
                                    @foreach ($skills as $key => $val)
                                        <option value="{{ $val->id }}">{{ ucfirst($val->skills) }}</option>
                                    @endforeach

                                </select>
                                @error('skill')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels-input">Experience</label>
                                <select class="form-select" name="experience_id">
                                    <option selected disabled>Choose Experience</option>
                                    @foreach ($experience as $key => $val)
                                        <option value="{{ $val->id }}">{{ $val->experience }}</option>
                                    @endforeach

                                </select>
                                @error('experience_id')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels-input">Languages</label>
                                <select id="multiple" class="form-select js-states" name="language[]" multiple>
                                    @foreach ($languages as $key => $val)
                                        <option value="{{ $val->id }}">{{ ucfirst($val->languages) }}</option>
                                    @endforeach
                                </select>
                                @error('language')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels-input">Salary</label>
                                <select class="form-select" name="salary_id">
                                    <option selected disabled>Choose Experience</option>
                                    @foreach ($salary as $key => $val)
                                        <option value="{{ $val->id }}">{{ $val->salary }}</option>
                                    @endforeach

                                </select>
                                @error('salary_id')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels-input">Description</label>
                                <textarea class="form-control" placeholder="Job Description" rows="2" name="job_description"></textarea>

                            </div>
                            @error('job_description')
                                <div class="text-danger my-1">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="row mt-3 ">
                            <div class="col-md-12">
                                <label class="labels-input">Job Valid Till</label>
                                <input type="date" class="form-control" name="job_validity" id="datepicker">
                                @error('job_validity')
                                    <div class="text-danger my-1">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mt-3 p-2">
                            <div class="text-center">
                                <button type="submit" class="btn btn-outline-success px-5 py-1 ">Submit</button>
                            </div>
                        </div>

                </div>
                </form>
                <div class="col-6">
                    <div>
                        <img src="{{ asset('assets/img/jobpost.svg') }}" height="600px" width="650px" alt="..."
                            style="object-fit: cover;">
                    </div>
                </div>
            </div>

    </section>
@endsection
