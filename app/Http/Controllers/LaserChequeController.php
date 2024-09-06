<?php

namespace App\Http\Controllers;

use App\Models\ChequeCategories;
use App\Models\LaserCheque;
use Illuminate\Http\Request;

class LaserChequeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Fetch all records from ManualCheque
        $chequesCategory = LaserCheque::all();
        // Define a static cheque name
        $chequeName = 'Laser Cheques';
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
    public function show($id)
    {
        // Find the cheque categories by manual_cheque_id
        $chequeList = ChequeCategories::where('manual_cheque_id', $id)->get();

        // Set the cheque category name statically
        $chequeCategoryName = 'Laser Cheques';

        // Retrieve only the categoriesName from ManualCheque
        $chequeSubCategoryName = LaserCheque::where('id', $id)->pluck('categoriesName')->first();

        // Pass the cheque, chequeCategoryName, and chequeSubCategoryName to the view
        return view('partials/chequesList', compact('chequeList', 'chequeCategoryName', 'chequeSubCategoryName'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LaserCheque $laserCheque)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LaserCheque $laserCheque)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LaserCheque $laserCheque)
    {
        //
    }
}
