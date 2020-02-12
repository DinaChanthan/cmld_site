<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PropertyType;
use App\Wording;
use App\ArticleType;
use App\Project;
use App\Article;
use App;

class CambodiaController extends Controller
{
    public function index()
    {
        $projects = Project::with('translations')->get();
        $latestArticles = Article::with('translations')->get();
        $articlestypes = Articletype::with('translations')->get();   
        
        return view('cambodia', compact('projects', 'latestArticles', 'articlestypes'));
    }
}
