<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class VendorController extends Controller
{
    
    public function history()
    {
            $customers = Customer::where('user_id', Auth::user()->id)->latest()->get();
            return view('partials/customer/customerHistory', compact('customers'));
    }

}
