<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TestController extends Controller
{
    public function search(Request $request)
    {
        Log::debug($request->input());
        $request->flash();
        return view('test', ['state' => 'search']);
    }
}
