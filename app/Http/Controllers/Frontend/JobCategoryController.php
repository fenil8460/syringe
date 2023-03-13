<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ClientMaster;
use App\Models\SkillGroupMaster;
use Illuminate\Http\Request;

class JobCategoryController extends Controller
{
    public function __invoke($slug)
    {
        $skill = SkillGroupMaster::where('slug', $slug)->first();

        $jobCategory = ClientMaster::get();

        return view('pages.job_categories', compact('skill','jobCategory'));
    }
}
