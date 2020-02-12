<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;
use Illuminate\Support\Facades\Crypt;

use App\PropertyType;
use App\Project;
use App\Location;
use App\Article;
use App\ProjectImage;
use App\Facility;
use App\RoomFeature;
use App\Property;
use App\PropertyLayout;
use App\ProjectSize;
use App\Amenity;

class FindPropertyController extends Controller
{
    public function index($propertytype)
    {
        $getpropertytypes = Project::orderBy('id', 'desc')->whereHas('propertytype', function ($query) use ($propertytype){
            $query->where('name', 'like', '%'.$propertytype.'%');
        })->where('status',1)->with('translations')->get();

        $projects = Project::with('translations')->get();
        $locations = Location::where('status','1')->with('translations')->get();

        return view('findproperty', compact('getpropertytypes', 'projects', 'locations'));
    }

    public function search(Request $request)
    {

        $projectname = $request->project;
        $location = $request->location;
        $propertytype = $request->propertytype;
        $price = $request->price;

        $query = Project::orderBy('id','desc');
        
        if($propertytype){
            $query->whereHas('propertytype', function ($query) use ($propertytype){
                $query->where('name', 'like', '%'.$propertytype.'%');
            });
        }
        
        if($location){
            $query->whereHas('location', function ($query) use ($location){
                $query->where('name', 'like', '%'.$location.'%');
            });
        }

        if($price){
            if($price == 25){
                // 40k - 100k
                $query->where(function ($query) {
                    $query->where('to_price','>=', 40000)
                        ->where('start_price','<=', 100000);
                });
            }elseif($price == 26){
                // 101k - 250k
                $query->where(function ($query) {
                    $query->where('to_price','>=', 101000)
                        ->where('start_price','<=', 250000);
                });
            }elseif($price == 27){
                // 251k - 400k
                $query->where(function ($query) {
                    $query->where('to_price','>=', 251000)
                        ->where('start_price','<=', 400000);
                });
            }elseif($price == 28){
                // 401k - 700k
                $query->where(function ($query) {
                    $query->where('to_price','>=', 401000)
                        ->where('start_price','<=', 700000);
                });
            }else {
                // Above 700k
                $query->where('start_price', '>', '700000')->orWhere('to_price', '>', '700000');
            }
        }

        if($projectname){
            $query->where('name', 'like', '%'.$projectname.'%');
        }

        $getpropertytypes = $query->where('status',1)->with('translations')->get();
        
        $projects = Project::with('translations')->get();
        $locations = Location::where('status','1')->with('translations')->get();

        return view('findproperty', compact('getpropertytypes', 'projects', 'locations'));
    }
    
    public function foundproperty($projectid, $propertytype)
    {
        $projectid = Crypt::decrypt($projectid);
        $projects = Project::where('id', $projectid)->with('translations')->first();

        $query = Property::orderBy('id','asc');
        if($propertytype <> 'alltype'){
            $query->whereHas('property_type', function ($query) use ($propertytype){
                $query->where('name', 'like', '%'.$propertytype.'%');
            });
        }
        $properties = $query->where('project_id',$projectid)->with('translations')->get();
        $amenities = Amenity::all();

        $locations = Location::with('translations')->where('status','=','1')->get();
        $backgroundfacility = Article::where('id', 13)->with('translations')->first();
        $articles = Article::all();

        return view('foundproperty', compact('projects', 'locations', 'backgroundfacility','articles','properties','amenities'));
    }
}
