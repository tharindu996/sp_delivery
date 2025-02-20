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
        Schema::create('delivery_requests', function (Blueprint $table) {
            $table->id();
            $table->string('pickup_address');
            $table->string('pickup_name');
            $table->string('pickup_contact_no');
            $table->string('pickup_email')->nullable();
            $table->string('delivery_address');
            $table->string('delivery_name');
            $table->string('delivery_contact_no');
            $table->string('delivery_email')->nullable();
            $table->enum('goods_type', ['Document', 'Parcel']);
            $table->enum('delivery_provider', ['DHL', 'STARTRACK', 'ZOOM2U', 'TGE']);
            $table->enum('priority', ['Standard', 'Express', 'Immediate']);
            $table->date('pickup_date');
            $table->time('pickup_time');
            $table->text('package_description');
            $table->decimal('length', 5, 2);
            $table->decimal('height', 5, 2);
            $table->decimal('width', 5, 2);
            $table->decimal('weight', 5, 2);
            $table->enum('status', ['Pending', 'Processing', 'Shipped', 'Cancelled'])
                ->default('Pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('delivery_requests');
    }
};
