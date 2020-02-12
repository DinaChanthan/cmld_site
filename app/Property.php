<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class Property extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['name','detail'];

    public function projects()
    {
        return $this->BelongsTo('App\Project');
    }

    public function roomfeature()
    {
        return $this->hasMany('App\RoomFeature');
    }

    public function propertylayout()
    {
        return $this->hasMany('App\PropertyLayout');
    }

    public function property_type()
    {
        return $this->BelongsTo('App\PropertyType');
    }
}
