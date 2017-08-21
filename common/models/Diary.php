<?php
/**
 * Created by PhpStorm.
 * User: chen
 * Date: 2017/8/21
 * Time: 14:35
 */

namespace common\models;

use yii\db\ActiveRecord;

/**
 * Diary model
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $content
 * @property string $date
 * @property string $time
 * @property string $visible_status
 */
class Diary extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'diary';
    }
}