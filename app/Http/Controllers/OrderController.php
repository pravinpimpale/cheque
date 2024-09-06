<?php

namespace App\Http\Controllers;

use App\Models\ChequeCategories;
use App\Models\Customer;
use App\Models\LaserCheque;
use App\Models\ManualCheque;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{

    public function history()
    {
        // Check if the user is authenticated
        if (Auth::check()) {
            // Retrieve all orders made by the logged-in user
            $orders = Order::where('customer_id', Auth::user()->id)->latest()->get();

            // Initialize an empty array to store total prices
            $totalPrices = [];

            // Loop through each order and calculate the total price
            foreach ($orders as $order) {
                // Retrieve the price of the associated cheque category
                $price = ChequeCategories::where('id', $order->cheque_category_id)->pluck('price')->first();

                // Calculate total price by multiplying quantity by price
                $totalPrice = $order->quantity * $price;

                // Store the total price with the order ID as the key
                $totalPrices[$order->id] = $totalPrice;
            }
            // Pass orders and total prices to the view
            return view('partials.orderHistory', compact('orders', 'totalPrices'));
        } else {
            // Redirect to the login page if the user is not authenticated
            return redirect()->route('login');
        }
    }
    /**
     * Display a listing of the resource.
     */
    public function index($id)
    {
        // Retrieve the cheque category by id
        $chequeList = ChequeCategories::findOrFail($id);
        $customers = Customer::all();

        // Determine the category and subcategory names
        if ($chequeList->manual_cheque_id) {
            $chequeCategoryName = 'Manual Cheques';
            $chequeSubCategoryName = ManualCheque::where('id', $chequeList->manual_cheque_id)->pluck('categoriesName')->first();
        } else {
            $chequeCategoryName = 'Laser Cheques';
            $chequeSubCategoryName = LaserCheque::where('id', $chequeList->laser_cheque_id)->pluck('categoriesName')->first();
        }

        // Pass the cheque category data to the view
        return view('partials/chequeDetailsForm', compact('chequeList', 'chequeCategoryName', 'chequeSubCategoryName', 'customers'));
    }



    public function checkOrders($customerId)
    {
        $hasOrders = Order::where('customer_id', $customerId)->exists();

        return response()->json(['hasOrders' => $hasOrders]);
    }


    public function reorder(Request $request, $customerId)
    {

        // Find the most recent order for this customer
        $latestOrder = Order::where('customer_id', $customerId)->latest()->first();

        if ($latestOrder) {
            // Create a new order with the same data
            $newOrder = $latestOrder->replicate(); // Copies the original order data
            $newOrder->cheque_start_number = $request->cheque_start_number; // Update the cheque_start_number
            $newOrder->created_at = now(); // Update timestamps if necessary
            $newOrder->updated_at = now();
            $newOrder->save();

            return response()->json([
                'success' => true,
                'order_id' => $newOrder->id
            ]);
        }

        return response()->json(['success' => false]);
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
        // Validate the request data
        $request->validate([
            'customer_id' => 'required|integer',
            'quantity' => 'required|integer|min:1',
            'color' => 'required|string|max:255',
            'company_info' => 'nullable|string|max:1000',
            'voided_cheque_file' => 'nullable', // 2MB max file size
            'institution_number' => 'nullable|string|max:20',
            'transit_number' => 'nullable|string|max:20',
            'account_number' => 'nullable|string|max:20',
            'confirm_account_number' => 'nullable|string|same:account_number',
            'cheque_start_number' => 'nullable|integer|min:1',
            'cart_quantity' => 'required|integer|min:1',
            'cheque_category_id' => 'required|integer',
            'company_logo' => 'nullable', // 2MB max file size
            'cheque_img' => 'nullable' // 2MB max file size
        ]);

        // Create a new Order object with validated data
        $order = new Order($request->all());

        // Handle file uploads for 'voided_cheque_file', 'company_logo', and 'cheque_img'
        if ($request->hasFile('voided_cheque_file')) {
            $order->voided_cheque_file = $request->file('voided_cheque_file')->store('uploads');
        }

        if ($request->hasFile('company_logo')) {
            $order->company_logo = $request->file('company_logo')->store('logos');
        }

        if ($request->hasFile('cheque_img')) {
            $order->cheque_img = $request->file('cheque_img')->store('cheque_img');
        }

        // Set default values for order_status and balance_status
        $order->order_status = 'pending'; // Default order status
        $order->balance_status = 'pending'; // Default balance status

        // Save the order to the database
        $order->save();

        // Redirect to the success view
        return view('layouts/success');
    }


    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        //
    }
}
