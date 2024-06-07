<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
{{-- bootstrap --}}
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
{{-- icon --}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

{{-- google font --}}
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">
{{-- css --}}
<link rel="stylesheet" href="{{ asset('assets/css/employer-nav.css') }}">
{{-- profile css --}}
<link rel="stylesheet" href="{{ asset('assets/css/employer-profile.css') }}">
{{-- edit profile css --}}
<link rel="stylesheet" href="{{ asset('assets/css/employer-edit.css') }}">
{{-- inquiry card css --}}
<link rel="stylesheet" href="{{ asset('assets/css/inquiry_card.css') }}">
{{-- select2  --}}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
{{-- notification bell css --}}
<link rel="stylesheet" href="{{ asset('assets/css/notification_bell.css') }}">
{{-- view employee profile css --}}
<link rel="stylesheet" href="{{ asset('assets/css/employee-profile.css') }}">

{{-- laravel ajax meta tag --}}
<meta name="csrf-token" content="{{ csrf_token() }}">


<script>
    let base_url = '<?php echo url('/'); ?>';
</script>




<title>JOB PORTAL</title>
