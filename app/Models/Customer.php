<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
        'lastname',
        'telephone',
        'company',
        'street_address',
        'suburb',
        'buzzer_code',
        'city',
        'postcode',
        'state',
        'country',
        'email',
        'user_id',
    ];
}
