<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class PropertyLayout extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['title'];
}
