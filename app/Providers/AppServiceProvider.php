<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\PropertyType;
use App\Wording;
use App\Article;
use Voyager;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Voyager::addAction(\App\Actions\BrowsProjectImage::class);
        Voyager::addAction(\App\Actions\BrowsProjectSize::class);
        Voyager::addAction(\App\Actions\BrowsRoomFeature::class);

        $propertytypes = PropertyType::with('translations')->get();
        $wordings = Wording::with('translations')->get();
        $articles_all = Article::with('translations')->get();
        View::share(compact('wordings', 'propertytypes', 'articles_all'));
    }
}
