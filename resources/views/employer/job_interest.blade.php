@extends('employer-layout.default')
@section('content')
    <section>
        {{-- @php
            dd($job);
        @endphp --}}
        <div class="container my-5">
            <div class="row">
                @foreach ($job as $key => $val)
                    <div class=" col-6 my-4">

                        <div class=" rounded-5 p-2 bg-white"
                            style="box-shadow: 0 3px 10px rgba(143, 143, 143, 0.19), 0 6px 6px rgba(143, 142, 142, 0.23);">
                            <div class="row text-center" style="">
                                <p class="fs-5">{{ ucfirst($val->getJobDetail->job_title ?? 'N\A') }}
                                </p>

                            </div>
                            <div class="row px-3">
                                <div class="col-6">
                                    <p class="fs-6"><i
                                            class="fa-regular fa-user px-2 fa-lg"></i>{{ ucfirst($val->name) ?? 'N\A' }}
                                    </p>
                                </div>
                                <div class="col-6">

                                    <p class="fs-6">
                                        <i class="fa-solid fa-at px-2 fa-lg"></i>{{ $val->email ?? 'N\A' }}
                                    </p>
                                </div>
                                <div class="col-6">

                                    <p class="fs-6">
                                        <i
                                            class="fa-solid fa-mobile-screen-button px-2 fa-lg"></i>{{ $val->phone ?? 'N\A' }}
                                    </p>
                                </div>
                                <div class="col-6">

                                    <p class="fs-6">
                                        <i class="fa-solid fa-file-circle-check px-2 fa-lg"></i>
                                        @if ($val->resume)
                                            <a href="{{ asset('storage') . '/cv/' . $val->resume }}" target="_blank">View
                                                CV</a>
                                        @else
                                            <span>No CV</span>
                                        @endif
                                    </p>
                                </div>
                            </div>

                        </div>
                        @if ($val->employee_id)
                            <div class="row px-5">
                                <a href="{{ url('/view/employee') . '/' . $val->employee_id }}"
                                    class="btn btn-outline-secondary">
                                    <i class="fa-solid fa-eye px-2 fa-lg"></i>View Profile</a>
                            </div>
                        @endif


                    </div>
                @endforeach

            </div>
        </div>


    </section>
@endsection
