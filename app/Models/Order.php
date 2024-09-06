<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'quantity',
        'color',
        'company_info',
        'voided_cheque',
        'institution_number',
        'transit_number',
        'account_number',
        'confirm_account_number',
        'cheque_start_number',
        'cart_quantity',
        'cheque_category_id',
        'voided_cheque_file',
        'company_logo',
    ];
}
