@php
    $id = Auth::id();
    $data = getuser($id);
    // dd($data);
@endphp

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('dashboad') }}">
            <img src="{{ asset('storage') . '/uploads/' . $data->image }}" alt="..." height="45px" width="45px"
                style="border-radius: 50%; object-fit:cover;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-md-auto gap-2">
                <li class="nav-item rounded">
                    <a class="nav-link active" aria-current="page" href="{{ url('/') }}"><i
                            class="bi bi-house-fill me-2"></i>Home</a>
                </li>
{{-- 
                <li class="nav-item rounded">
                    <a class="nav-link" href="#"><i class="bi bi-telephone-fill me-2"></i>Contact</a>
                </li> --}}
                <li class="nav-item dropdown rounded">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"><i
                            class="bi bi-person-fill me-2"></i>Account</a>
                    <ul class="dropdown-menu dropdown-menu-end mx-4" aria-labelledby="navbarDropdown">
                        <li>
                            <a class="dropdown-item" href="{{ route('employee.profile') }}">
                                <i class="fa-solid fa-sliders fa-fw"></i>
                                Profile
                            </a>
                        </li>
                        {{-- <li><a class="dropdown-item" href="#"></a></li> --}}
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="{{ route('logout') }}"><i
                                    class="fas fa-sign-out-alt fa-fw"></i> Log
                                Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
