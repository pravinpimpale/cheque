<?php

namespace App\Http\Controllers;

use App\Models\PersonalCheque;
use Illuminate\Http\Request;

class PersonalChequeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Fetch all records from personalCheque
        $chequesCategory = PersonalCheque::all();
        // Define a static cheque name
        $chequeName = 'Personal Cheques';
        return view('partials/chequesCategory', compact('chequesCategory', 'chequeName'));
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(PersonalCheque $personalCheque)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PersonalCheque $personalCheque)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, PersonalCheque $personalCheque)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PersonalCheque $personalCheque)
    {
        //
    }
}
