<?php

namespace App\Http\Controllers;

class BaseController extends Controller
{
    /**
     * Display a listing of Delivery requests.
     */
    public function index()
    {
        return inertia('Home');
    }
}
