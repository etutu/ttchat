<?php

namespace frontend\controllers;

use yii\web\Controller;
use frontend\models\DiaryForm;

class DiaryController extends Controller
{
    public function actionIndex()
    {
        $diary = new DiaryForm();
        $diary->insert_diary();
    }
}