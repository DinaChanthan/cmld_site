<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use App\PropertyType;
use App\Wording;
use App\Project;
use App\Location;
use App\Article;
use App\ArticleType;
use App;

class ListNewController extends Controller
{
    public function index()
    {        
        $getArtcles = Article::orderBy('id', 'asc')->where('article_type_id','<>',null)->with('translations')->get();
        $articlestypes = ArticleType::with('translations')->get();
        return view('listnew', compact('getArtcles', 'articlestypes'));
    }

    public function article($articletype,$slug)
    {
        $articles = Article::where('slug','=', $slug)->with('translations')->first();
        $articlestypes = Articletype::with('translations')->get();
        
        return view('article', compact('articles', 'articlestypes'));
    }

    public function specifictype($name)
    {
        $query = Article::orderBy('id', 'asc');
        if($name){
            $query->whereHas('article_type', function ($query) use ($name){
                $query->where('name', 'like', '%'.$name.'%');
            });
        }
        $getArtcles = $query->where('article_type_id','<>',null)->with('translations')->get();

        $articlestypes = ArticleType::with('translations')->get();

        return view('listnew', compact('getArtcles', 'articlestypes'));
    }
}
