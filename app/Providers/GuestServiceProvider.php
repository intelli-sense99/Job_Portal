<?php

namespace App\Providers;

use App\facade\Guest;
use Illuminate\Support\ServiceProvider;

class GuestServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->bind('guest', function () {
            return new Guest();
        });
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
