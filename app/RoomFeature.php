<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use OwenIt\Auditing\Contracts\Auditable;

class RoomFeature extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use Translatable;
    protected $translatable = ['total'];

    public function property()
    {
        return $this->BelongsTo('App\Property');
    }

    public function amenity()
    {
        return $this->BelongsTo('App\Amenity');
    }
}
