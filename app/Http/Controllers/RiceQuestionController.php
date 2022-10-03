<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RiceQuestionController extends Controller
{
    public function question()
    {
        return view('question_way');
    }
}
