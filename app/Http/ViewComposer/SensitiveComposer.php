<?php


namespace App\Http\ViewComposer;

use App\Models\CompanyMaster;
use App\Models\SkillGroupMaster;
use Illuminate\View\View;

class SensitiveComposer
{
    public function compose(View $view){
        $website_infos = CompanyMaster::first();
        $skills = SkillGroupMaster::get();
        $view->with('website_infos', $website_infos)
        ->with('skills', $skills);
    }
}