<?php

namespace App\Http\Requests;

use App\DeliveryProvider;
use App\GoodsType;
use App\Priority;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Enum;

class StoreDeliveryRequestRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'pickup_address' => ['required', 'string', 'max:255'],
            'pickup_name' => ['required', 'string', 'max:255'],
            'pickup_contact_no' => ['required', 'string', 'max:15'],
            'pickup_email' => ['nullable', 'email', 'max:255'],
            'delivery_address' => ['required', 'string', 'max:255'],
            'delivery_name' => ['required', 'string', 'max:255'],
            'delivery_contact_no' => ['required', 'string', 'max:15'],
            'delivery_email' => ['nullable', 'email', 'max:255'],
            'goods_type' => ['required', new Enum(GoodsType::class)],
            'delivery_provider' => ['required', new Enum(DeliveryProvider::class)],
            'priority' => ['required', new Enum(Priority::class)],
            'pickup_date' => ['required', 'date', 'after_or_equal:today'],
            'pickup_time' => ['required', 'date_format:H:i'],
            'package_description' => ['required', 'string'],
            'length' => ['required', 'numeric', 'min:1'],
            'height' => ['required', 'numeric', 'min:1'],
            'width' => ['required', 'numeric', 'min:1'],
            'weight' => ['required', 'numeric', 'min:1'],
        ];
    }
}
