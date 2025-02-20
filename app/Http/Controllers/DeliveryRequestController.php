<?php

namespace App\Http\Controllers;

use App\DeliveryProvider;
use App\GoodsType;
use App\Models\DeliveryRequest;
use App\Http\Requests\StoreDeliveryRequestRequest;
use App\Priority;

class DeliveryRequestController extends Controller
{
    /**
     * Display a listing of Delivery requests.
     */
    public function index()
    {
        $deliveryRequests = DeliveryRequest::select([
            'id',
            'pickup_name',
            'delivery_name',
            'status',
            'priority',
        ])->latest()->paginate(2);
        $status = session('status');

        return inertia('DeliveryRequests/Index', compact(
            'deliveryRequests',
             'status'
        ));
    }

    /**
     * Show the form for creating a Delivery request.
     */
    public function create()
    {
        $status = session('status');
        $goodTypes = GoodsType::cases();
        $deliveryProviders = DeliveryProvider::cases();
        $priorities = Priority::cases();
        return inertia('DeliveryRequests/Create', compact(
            'status',
            'goodTypes',
            'deliveryProviders',
            'priorities',
        ));
    }

    /**
     * Store a newly created Delivery request in storage.
     */
    public function store(StoreDeliveryRequestRequest $request)
    {
        $inputs = $request->validated();

        DeliveryRequest::create($inputs);

        return redirect()->route('delivery-requests.index')->with('status', 'Delivery request created successfully!');
    }


    /**
     * Cancel delivery request
     */
    public function cancel(DeliveryRequest $deliveryRequest)
    {
        if ($deliveryRequest->status !== 'Pending') {
            return back()->with('message', [
                'type' => 'error',
                'text' => "Cannot cancel delivery request as it is already {$deliveryRequest->status}"
            ]);
        }

        $deliveryRequest->update(['status' => 'Cancelled']);

        return back()->with('message', [
            'type' => 'success',
            'text' => 'Delivery request cancelled successfully.'
        ]);
    }
}
