<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ClientMaster;
use App\Models\SkillGroupMaster;
use App\Traits\ResponseAPI;

class NurshingController extends Controller
{
    use ResponseAPI;

    public function index($slug)
    {
        $skill = SkillGroupMaster::where('slug', $slug)->first();

        $jobCategory = ClientMaster::get();
        return $this->success($jobCategory);
    }
}
