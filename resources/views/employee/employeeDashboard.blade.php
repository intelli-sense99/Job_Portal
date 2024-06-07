@php
    $is_completed = getResume();
    // dd($is_completed);
    $id = Auth::id();
@endphp

@extends('employee-layout.default')
@section('content')
    <section>
        <h3 class="text-center">Welcome Home</h3>
        <?php 
        if ($is_completed == false) {?>

        <div class="container">
            <div class="row">
                <div class="alert alert-danger text-center">
                    <h5></i>Complete your profile for furthor
                        procedure. <a href="{{ url('/employee/edit/' . $id) }}">Click Here</a>
                        to create profile.
                    </h5>
                </div>
            </div>

        </div>

        <?php }?>
    </section>
@endsection
