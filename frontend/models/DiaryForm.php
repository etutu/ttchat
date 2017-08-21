<?php
/**
 * Created by PhpStorm.
 * User: chen
 * Date: 2017/8/21
 * Time: 14:03
 */

namespace frontend\models;

use yii\base\Model;
use common\models\Diary;

class DiaryForm extends Model
{
    public $content;

    public function insert_diary()
    {
        $diary                 = new Diary();
        $diary->user_id        = $_COOKIE['id'];
        $diary->content        = $this->content;
        $diary->date           = date("Y-m-d");
        $diary->time           = date("H:i:s");
        $diary->visible_status = $_GET['visible_status'];
        $diary->save();
    }
}