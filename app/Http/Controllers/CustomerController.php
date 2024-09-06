<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('partials/customer/customerForm');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $users = new Customer;

        $users->firstname = $request->get('firstname');
        $users->lastname = $request->get('lastname');
        $users->telephone = $request->get('telephone');
        $users->company = $request->get('company');
        $users->street_address = $request->get('street_address');
        $users->suburb = $request->get('suburb');
        $users->buzzer_code = $request->get('buzzer');
        $users->city = $request->get('city');
        $users->postcode = $request->get('postcode');
        $users->state = $request->get('zone_id');
        $users->country = $request->get('zone_country_id');
        $users->email = $request->get('email');
        $users->user_id = $request->get('user_id');
        $users->save();

        return view('partials.customer.customerForm')->with('success', 'User created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Customer $customer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Customer $customer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customer)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customer)
    {
        //
    }
}
