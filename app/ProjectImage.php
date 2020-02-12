<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class ProjectImage extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['title'];

    public function project()
    {
        return $this->belongsTo('App\Project');
    }
}
