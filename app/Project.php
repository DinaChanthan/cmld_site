<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Spatial;
use Illuminate\Support\Facades\DB;
use OwenIt\Auditing\Contracts\Auditable;

class Project extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    use Spatial;
    
    protected $translatable = ['name','start_price','to_price','title','address','detail'];
    protected $geometry = ['location'];

    protected $geometryAsText = true;

    public function newQuery($excludeDeleted = true)
    {
        if (!empty($this->geometry) && $this->geometryAsText === true)
        {
            $raw = '';
            foreach ($this->geometry as $column)
            {
                $raw .= 'AsText(' . $column . ') as ' . $column . ', ';
            }
            $raw = substr($raw, 0, -2);

            return parent::newQuery($excludeDeleted)->addSelect('*', DB::raw($raw));
        }

        return parent::newQuery($excludeDeleted);
    }

    public function projectsize()
    {
        return $this->hasMany('App\ProjectSize');
    }

    public function propertytype()
    {
        return $this->belongsToMany('App\PropertyType');
    }

    public function location()
    {
        return $this->belongsTo('App\Location');
    }

    public function facility()
    {
        return $this->hasOne('App\Facility');
    }

    public function property()
    {
        return $this->hasMany('App\Property');
    }

    public function projectimage()
    {
        return $this->hasMany('App\ProjectImage');
    }

}
