<?php

namespace App\Http\Controllers;

use App\Models\BenhCayLua;
use Illuminate\Http\Request;

class RiceQuestionController extends Controller
{
    public function index()
    {
        // dd('vao day');
        return view('question_way');
    }

    public function signalQuestion(Request $request)
    {
        $signal = $request['signal'];
        $statusPrediction = 0;
        $predictions = [];
        $instancesSignal = [];
        $continueQuestion = 1;
        return view('question_way_question', compact('signal', 'statusPrediction', 'predictions', 'instancesSignal', 'continueQuestion'));
    }

    public function questionSignal(Request $request)
    {
        $query = BenhCayLua::query();
        $arrAnswer = $request->all();
        unset($arrAnswer['_token']);
        if (count($arrAnswer) === 6) {
            // Đã hỏi hết 6 câu hỏi
            foreach ($arrAnswer as $key => $value) {
                if ($value == 'null') {
                    $query = $query->whereNull($key);
                    continue;
                }
                $query = $query->where($key, $value);
            }
            $diseasesPredictGet = $query->get()->toArray();
            if (count($diseasesPredictGet) == 0) {
                return response()->json(array([
                    'nextSignalNameTranfer' => null,
                    'arrayValSignalName' => null,
                    'statusContinueQuestion' => 0,
                    'diseasesPredict' => []
                ]));
            } else {
                $diseasesPredict = [];
                foreach ($diseasesPredictGet as $key => $value) {
                    $result = explode("-", $value['id_name']);
                    if (!in_array($result[0], $diseasesPredict)) $diseasesPredict[] = $result[0];
                }
                foreach ($diseasesPredict as $key => $value) {
                    $diseasesPredict[$key] = $value . ":" . config('disease.name.' . $value);
                }
                return response()->json(array([
                    'nextSignalNameTranfer' => null,
                    'arrayValSignalName' => null,
                    'statusContinueQuestion' => 0,
                    'diseasesPredict' => $diseasesPredict
                ]));
            }
            // chưa hỏi hết 6 câu có thể tiếp tục hỏi và chẩn đoán tiếp
        } else {
            foreach ($arrAnswer as $key => $value) {
                if ($value == 'null') {
                    $query = $query->whereNull($key);
                    continue;
                }
                $query = $query->where($key, $value);
            }
            $arrDisease = $query->get();
            $countSignal = [
                'shape' => 0,
                'color' => 0,
                'position' => 0,
                'symptom' => 0,
                'stage' => 0,
                'weather' => 0,
            ];
            foreach ($arrDisease as $key => $value) {
                $value['shape'] != null ? $countSignal['shape']++ : $countSignal['shape'];
                $value['color'] != null ? $countSignal['color']++ : $countSignal['color'];
                $value['position'] != null ? $countSignal['position']++ : $countSignal['position'];
                $value['symptom'] != null ? $countSignal['symptom']++ : $countSignal['symptom'];
                $value['stage'] != null ? $countSignal['stage']++ : $countSignal['stage'];
                $value['weather'] != null ? $countSignal['weather']++ : $countSignal['weather'];
            }
            foreach ($arrAnswer as $key => $value) {
                unset($countSignal[$key]);
            }

            foreach ($countSignal as $key => $value) {
                if ($value == 0) unset($countSignal[$key]);
            }

            ///////////////////////////////// khong tim duoc cau hoi tiep theo
            if (count($countSignal) == 0) {
                // khong tim duoc cau hoi tiep theo
                $listSignal = ['shape', 'color', 'position', 'shape', 'stage', 'symptom', 'weather'];
                $deseases = BenhCayLua::query();
                foreach ($arrAnswer as $key => $value) {
                    foreach ($listSignal as $keyList => $valueKey) {
                        if ($key == $valueKey) {
                            unset($listSignal[$keyList]);
                        }
                    }
                    if ($value == 'null') {
                        $deseases = $deseases->whereNull($key);
                        continue;
                    }
                    $deseases = $deseases->where($key, $value);
                }
                foreach ($listSignal as $value) {
                    $deseases->whereNull($value);
                }
                $diseasesPredictGet = $deseases->get()->toArray();
                if (count($diseasesPredictGet) == 0) {
                    return response()->json(array([
                        'nextSignalNameTranfer' => null,
                        'arrayValSignalName' => null,
                        'statusContinueQuestion' => 0,
                        'diseasesPredict' => []
                    ]));
                } else {
                    $diseasesPredict = [];
                    foreach ($diseasesPredictGet as $key => $value) {
                        $result = explode("-", $value['id_name']);
                        if (!in_array($result[0], $diseasesPredict)) $diseasesPredict[] = $result[0];
                    }
                    foreach ($diseasesPredict as $key => $value) {
                        $diseasesPredict[$key] = $value . ":" . config('disease.name.' . $value);
                    }
                    return response()->json(array([
                        'nextSignalNameTranfer' => null,
                        'arrayValSignalName' => null,
                        'statusContinueQuestion' => 0,
                        'diseasesPredict' => $diseasesPredict
                    ]));
                }
            } else {
                // tim duoc cau hoi tiep theo
                arsort($countSignal);
                $nextSignalName = array_key_first($countSignal);
                $arrayValSignalName = [];
                foreach ($arrDisease as $valDisease) {
                    if (!in_array($valDisease[$nextSignalName], $arrayValSignalName)) {
                        $arrayValSignalName[] = $valDisease[$nextSignalName];
                    }
                }
                // thuộc tính tiếp theo được hỏi
                $nextSignalNameTranfer = $nextSignalName . ":" . config('disease.signals.' . $nextSignalName);
                // mảng giá trị đi kèm
                foreach ($arrayValSignalName as $keyS => $valueS) {
                    $arrayValSignalName[$keyS] = $valueS . ":" . config('disease.' . $nextSignalName . '.' . $valueS);
                }
                // dự đoán các loại bệnh (ít nhất trả lời 2 câu hỏi không null)
                $countAnswerNotNull = 0;
                foreach ($arrAnswer as $keyA => $valueA) {
                    if ($valueA != "null") $countAnswerNotNull++;
                }
                if ($countAnswerNotNull >= 2) {
                    $diseasesPredictGet = $query->get()->toArray();
                    $diseasesPredict = [];
                    if (count($diseasesPredictGet) > 0) {
                        foreach ($diseasesPredictGet as $key => $value) {
                            $result = explode("-", $value['id_name']);
                            if (!in_array($result[0], $diseasesPredict)) $diseasesPredict[] = $result[0];
                        }
                        foreach ($diseasesPredict as $key => $value) {
                            $diseasesPredict[$key] = $value . ":" . config('disease.name.' . $value);
                        }
                    }
                } else {
                    $diseasesPredict = [];
                }
                return response()->json(array([
                    'nextSignalNameTranfer' => $nextSignalNameTranfer,
                    'arrayValSignalName' => $arrayValSignalName,
                    'statusContinueQuestion' => 1,
                    'diseasesPredict' => $diseasesPredict
                ]));
            }
        }
    }
}
