<?php

namespace App\Http\Controllers;

use App\Models\BenhCayLua;
use Illuminate\Http\Request;

class RiceController extends Controller
{
    public function index()
    {
        return view('form_way');
    }

    public function process(Request $request)
    {
        $data = $request->all();
        // dd($data);
        $error = 0;
        unset($data['_token']);
        $count = 0;
        foreach ($data as $key => $val) {
            if ($val == 'null' || $val == 'nochoose') $count++;
        }
        if ($count > 3) {
            $error = 1;
            return view('form_way', compact('data', 'error'));
        }
        $query = BenhCayLua::query();
        foreach ($data as $key => $value) {
            if ($value == 'nochoose') continue;
            if ($value == 'null') {
                $query = $query->whereNull($key);
                continue;
            }
            $query = $query->where($key, $value);
        }
        $benh = $query->get()->pluck("id_name")->toArray();
        if (count($benh) == 0) {
            $benh;
            $error = 0;
            return view('form_way', compact('benh', 'error', 'data'));
        }
        $diseasesPredict = [];
        foreach ($benh as $key => $value) {
            $result = explode("-", $value);
            if (!in_array($result[0], $diseasesPredict)) $diseasesPredict[] = $result[0];
        }
        foreach ($diseasesPredict as $key => $value) {
            $diseasesPredict[$key] = $value . ":" . config('disease.name.' . $value);
        }
        $benh = $diseasesPredict;
        // dd($benh);
        return view('form_way', compact('benh', 'error', 'data'));
    }
}
