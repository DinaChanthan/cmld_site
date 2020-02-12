<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Wording;

class LocationController extends Controller
{
    public function index()
    {
        $wordings = Wording::all();
        return view('location', compact($wordings));
    }
}
