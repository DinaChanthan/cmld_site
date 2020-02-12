<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class PropertyType extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['name'];

    protected $auditExclude = [
        'created_at',
    ];

    public function projects()
    {
        return $this->belongsToMany('App\Project');
    }

    public function property()
    {
        return $this->hasMany('App\Property');
    }
}
