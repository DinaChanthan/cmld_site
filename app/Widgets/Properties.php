<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use App\Property;

class Properties extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Property::count();
        $string = trans_choice('voyager::dimmer.post', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-home',
            'title'  => "{$count} Properties",
            'text'   => 'You have '.$count.' properties in your database. Click on button below to view all properties.',
            'button' => [
                'text' => 'View all properties',
                'link' => route('voyager.properties.index'),
            ],
            'image' => asset('images/widget-backgrounds/property.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', app(Property::class));
    }
}