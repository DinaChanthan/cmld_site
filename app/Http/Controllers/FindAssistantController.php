<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Project;
use App\PropertyType;
use App\Location;

class FindAssistantController extends Controller
{
    public function index()
    {
        $articles = Article::all();
        return view('findassistant', compact('articles'));
    }

    public function priceselect()
    {
        $articles = Article::all();
        return view('priceselect', compact('articles'));
    }

    public function locationselect()
    {
        $articles = Article::all();
        $projects = Project::all();
        return view('location', compact('articles','projects'));
    }

    public function search(Request $request)
    {
        $selected_buy_for = $request->buy_property_for;
        $selected_price = $request->price_radio;
        $selected_location = $request->location_radio;

        $query = Project::orderBy('id','desc');

        if($selected_buy_for && $selected_buy_for == 1){
            $query->whereHas('propertytype', function($query) use ($selected_buy_for){
                $query->where('property_type_id',1)->orWhere('property_type_id',3);
            });
        }

        if($selected_buy_for && $selected_buy_for == 2){
            $query->whereHas('propertytype', function($query) use ($selected_buy_for){
                $query->where('property_type_id',2);
            });
        }

        if($selected_price){
            $prices = explode('-',$selected_price);
            if(count($prices) > 1){
                $query->where('to_price','>=',$prices[0])
                    ->where('start_price','<=', $prices[1]);
            }else{
                $query->where('start_price','>=', $prices[0]);
            }
        }
        if($selected_location){
            $query->where('id',$selected_location);
        }

        $getpropertytypes = $query->with('translations')->get();
        $projects = Project::with('translations')->get();
        $locations = Location::where('status','1')->with('translations')->get();

        return view('findproperty', compact('getpropertytypes', 'projects', 'locations'));

    }
}
