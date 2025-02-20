<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliveryRequest extends Model
{
    /** @use HasFactory<\Database\Factories\DeliveryRequestFactory> */
    use HasFactory;

    protected $fillable = [
        'pickup_address',
        'pickup_name',
        'pickup_contact_no',
        'pickup_email',
        'delivery_address',
        'delivery_name',
        'delivery_contact_no',
        'delivery_email',
        'goods_type',
        'delivery_provider',
        'priority',
        'pickup_date',
        'pickup_time',
        'package_description',
        'length',
        'height',
        'width',
        'weight',
        'status'
    ];   
}
