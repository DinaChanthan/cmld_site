<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PropertyType;
use App\Wording;
use App\Project;
use App\Location;
use App\Article;
use App;

class HomeController extends Controller
{

    public function lang($locale)
    {
        App::setLocale($locale);
        session()->put('locale', $locale);
        return redirect()->back();
    }
    
    public function index()
    {
        $projects = Project::with('translations')->get();
        $locations = Location::where('status','=','1')->with('translations')->get();
        $articles = Article::orderBy('id','asc')->where('slug','=','home-page-background-bottom')->orWhere('slug','=','dont-know-what-you-want')
                           ->orWhere('slug','=','find-your-property')->orWhere('slug','=','artboard')->with('translations')->get();
        $latestArticles = Article::orderBy('created_at','desc')->where('article_type_id', '<>', null)->with('translations')->limit(3)->get();
        return view('home', compact('projects','locations','articles','latestArticles'));
    }
}
