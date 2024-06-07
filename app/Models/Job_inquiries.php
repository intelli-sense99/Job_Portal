<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job_inquiries extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'email', 'job_id', 'phone', 'employee_id', 'resume'];


    public function getJobDetail()
    {
        return $this->hasOne(Job::class,  'id', 'job_id');
    }


}
