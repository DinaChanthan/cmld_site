<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class BrowsRoomFeature extends AbstractAction
{
    public function getTitle()
    {
        return 'Room Feature';
    }

    public function getIcon()
    {
        return 'voyager-tools';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-primary pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.room-features.index', "property_id=".$this->data->id);
        // return route('voyager.feature-rooms.index', "property_id=".$this->data->id);
    }
    
    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'properties';
    }
}