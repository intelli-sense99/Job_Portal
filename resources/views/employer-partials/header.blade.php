@php
    $id = Auth::id();
    // dd($id);
    $data = getuser($id);
    // dd($data);

    $count = getTotalJobNotifications();
    // dd($count);
@endphp

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('dashboad') }}">
            <img src="{{ asset('storage') . '/uploads/' . $data->image }}" alt="..." height="45px" width="45px"
                style="border-radius: 50%; object-fit:cover;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ url('/') }}">Home</a>
                </li>

            </ul>
            <ul class="navbar-nav mb-2 mb-lg-0">
                {{-- notification bell --}}
                <li class="nav-item">
                    <button type="button" class="icon-button btn-bell" id="notification-modal" data-bs-toggle="modal"
                        data-bs-target="#modal-trigger">
                        <i class="fa-regular fa-bell  fa-lg"></i>
                        @if ($count > 0)
                            <span class="icon-button__badge fa-bell-count">{{ $count }}</span>
                        @endif
                    </button>
                </li>

                {{-- ------------ --}}
                <li class="nav-item dropdown profile-menu">
                    <a class="nav-link dropdown-toggle mx-2" id="userDropdown" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        {{-- {{ $employerdata->name }} --}}
                        <i class="fas fa-user fs-5 mx-1 "></i>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="userDropdown">
                        <li><a class="dropdown-item" href="{{ route('subject.profile') }}"><i
                                    class="fas fa-sliders-h fa-fw"></i> Profile</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="{{ route('subject.add') }}" class="text-white">
                                <i class="fa-solid fa-circle-plus fa-lg fa-fw"></i>Post a Job</a>
                        </li>


                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="{{ route('logout') }}"><i
                                    class="fas fa-sign-out-alt fa-fw"></i> Log
                                Out</a></li>
                    </ul>
                </li>

            </ul>

        </div>
    </div>
</nav>

{{-- notification modal trigger on hover --}}
<div class="modal fade" id="modal-trigger" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Notification</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body modal-notification-body">

            </div>
            {{-- <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div> --}}
        </div>
    </div>
</div>
