<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cargo".
 *
 * @property integer $id_cargo
 * @property string $cargo
 */
class Cargo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cargo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cargo'], 'required'],
            [['cargo'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_cargo' => 'Id Cargo',
            'cargo' => 'Cargo',
        ];
    }
}
