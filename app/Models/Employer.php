<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employer extends Model
{
    use HasFactory;

    public function getState()
    {
        return $this->hasOne(State::class, 'id', 'state_id');
    }

  

   

    
}
