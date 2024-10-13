<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_id')->nullable();
            $table->integer('quantity')->nullable();
            $table->string('color')->nullable();
            $table->string('company_info')->nullable();
            $table->string('voided_cheque')->nullable();
            $table->string('institution_number')->nullable();
            $table->string('transit_number')->nullable();
            $table->string('account_number')->nullable();
            $table->string('confirm_account_number')->nullable();
            $table->string('cheque_start_number')->nullable();
            $table->string('cheque_end_number')->nullable();
            $table->integer('cart_quantity')->nullable();
            $table->unsignedBigInteger('cheque_category_id')->nullable();
            $table->string('voided_cheque_file')->nullable()->nullable();
            $table->string('company_logo')->nullable();
            $table->string('vendor_id')->nullable();
            $table->string('cheque_img')->nullable();
            $table->string('order_status')->nullable();
            $table->string('balance_status')->nullable();
            $table->string('reorder')->nullable();
            $table->timestamps();

            // Foreign keys
            $table->foreign('customer_id')->references('id')->on('customers');
            $table->foreign('cheque_category_id')->references('id')->on('cheque_categories');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
