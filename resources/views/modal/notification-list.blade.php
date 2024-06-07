<ul class="list-group list-group-flush">
    @foreach ($notification as $single_notification)
        <li class="list-group-item">
            <i class="fa-solid fa-user-tie  fa-xl"></i>
            <span class="d-inline-block text-truncate" style="max-width: 90%;">
                {{ ucfirst($single_notification['name']) }}
                applied for {{ $single_notification['job_title'] ?? null }}.
                <a class="text-decoration-none" target="_blank" style=" color:#ccc;font-size: 15px; font-style:italic; "
                    href="{{ asset('storage') . '/cv/' . $single_notification['resume'] }}">View CV</a>
            </span>


        </li>
    @endforeach


</ul>
