<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class SaleController extends Controller
{
    public function index()
    {
        $aftersales = Article::get();
        
        return view('aftersale', compact('aftersales'));
    }
}
