<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class BrowsProjectImage extends AbstractAction
{
    public function getTitle()
    {
        return 'Project Images';
    }

    public function getIcon()
    {
        return 'voyager-images';
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
        return route('voyager.project-images.index', "project_id=".$this->data->id);
    }
    
    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'projects';
    }
}