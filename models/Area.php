<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "area".
 *
 * @property integer $id_area
 * @property string $area
  * @property string $idpiso
 */
class Area extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'area';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['area','idpiso'], 'required'],
            [['idpiso'], 'integer'],
            [['area'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_area' => 'Id Área',
            'area' => 'Área',
            'idpiso' => 'Piso',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPiso()
    {
        return $this->hasOne(Piso::className(), ['id_piso' => 'idpiso']);
    }

}
