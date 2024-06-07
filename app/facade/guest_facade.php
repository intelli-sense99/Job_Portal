<?php

namespace App\facade;

use Illuminate\Support\Facades\Facade;

class Guest_facade extends Facade
{

    protected static function getFacadeAccessor()
    {
        return 'guest';  //usp
    }
}
