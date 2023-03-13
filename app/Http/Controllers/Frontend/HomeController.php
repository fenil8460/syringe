<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CityMaster;
use App\Models\CompanyMaster;
use App\Models\CountryMaster;
use App\Models\HealthCareSetting;
use App\Models\SkillGroupMaster;
use Illuminate\Http\Request;


class HomeController extends Controller
{
    public function __invoke(){

        $skills = SkillGroupMaster::get();

        $ids = ['1','6','10','12','4','13'];
        
        $ids_ordered = implode(',', $ids);
        
        $majorCities = CityMaster::whereIn('city_id',$ids)
        ->orderByRaw("FIELD(city_id, $ids_ordered)")
        ->get();
        
        $website_infos = CompanyMaster::first();

        $employerSetting = HealthCareSetting::get();
        
        return view('pages.index', compact('skills','majorCities','employerSetting','website_infos'));
    }
}
