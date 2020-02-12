<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PropertyType;
use App\Wording;
use App\Project;
use App\Location;
use App\Article;
use App;

class AboutusController extends Controller
{
    public function index()
    {
        $propertytypes = PropertyType::with('translations')->get();
        $properties = PropertyType::with('translations')->get();
        $wordings = Wording::with('translations')->get();
        $projects = Project::with('translations')->get();
        $locations = Location::where('status','=','1')->with('translations')->get();
        $articles = Article::with('translations')->get();
        $latestArticles = Article::orderBy('created_at','desc')->where('slug','<>','home-page-background-bottom')->where('slug','<>','dont-know-what-you-want')
                                 ->where('slug','<>','find-your-property')->where('slug','<>','artboard')->with('translations')->limit(3)->get();
        return view('aboutus', compact('properties', 'propertytypes', 'wordings','projects','locations','articles','latestArticles'));
    }
}
