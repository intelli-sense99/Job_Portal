@extends('employer-layout.default')
@section('content')
    <section>
        <div class="container-fluid mt-5 mx-3">
            <div class="row">
                @if (count($data) > 0)
                    <table class="table table-bordered table-dark table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Job Title</th>
                                <th scope="col">Job Description</th>
                                <th scope="col">Experience</th>
                                <th scope="col">Salary</th>
                                <th scope="col">Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $key => $val)
                                <tr>
                                    <td scope="row">{{ $val->id ?? 'null' }}</td>
                                    <td scope="row">{{ $val->job_title ?? 'null' }}</td>
                                    <td scope="row">
                                        <span class="d-inline-block text-truncate" style="max-width: 350px;">
                                            {{ $val->job_description ?? 'null' }}
                                        </span>
                                    </td>
                                    <td scope="row">
                                        {{ $val->getExperience->experience ?? 'null' }}
                                    </td>
                                    <td scope="row">{{ $val->getSalary->salary ?? 'null' }}</td>
                                    <td scope="row">
                                        <a href="{{ url('/job/interest/' . $val->id) }}"
                                            class="btn btn-outline-primary text-warning">
                                            View Interest
                                        </a>
                                    </td>



                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                @else
                    <div class="alert alert-danger text-center">
                        <i class="fa-solid fa-triangle-exclamation fa-fw fs-5"></i>
                        <h4>First Complete Your Profile to Post Jobs</h4>
                    </div>
                @endif


            </div>
        </div>

    </section>
@endsection
