<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PropertyType;
use App\Wording;
use App\Project;
use App\Location;
use App\Article;
use App;

class ContactusController extends Controller
{    
    public function index()
    {
        $propertytypes = PropertyType::with('translations')->get();
        $properties = PropertyType::with('translations')->get();
        $wordings = Wording::with('translations')->get();
        $projects = Project::with('translations')->get();
        $locations = Location::where('status','=','1')->with('translations')->get();
        $articles = Article::where('slug','=','home-page-background-bottom')->orWhere('slug','=','dont-know-what-you-want')
                           ->orWhere('slug','=','find-your-property')->orWhere('slug','=','artboard')->with('translations')->get();
        $latestArticles = Article::orderBy('created_at','desc')->where('slug','<>','home-page-background-bottom')->where('slug','<>','dont-know-what-you-want')
                                 ->where('slug','<>','find-your-property')->where('slug','<>','artboard')->with('translations')->limit(3)->get();
        return view('contactus', compact('properties', 'propertytypes', 'wordings','projects','locations','articles','latestArticles'));
    }
}
