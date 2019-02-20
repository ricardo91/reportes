<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "piso".
 *
 * @property integer $id_piso
 * @property string $piso
 */
class Piso extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'piso';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['piso'], 'required'],
            [['piso'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_piso' => 'Id Piso',
            'piso' => 'Piso',
        ];
    }
}
