<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class ProjectSize extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['title','total'];

    public function projects()
    {
        return $this->BelongsTo('App\Project');
    }
}
