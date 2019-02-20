<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "estado_solicitud".
 *
 * @property integer $id_estado_solicitud
 * @property integer $id_solicitud
 * @property string $estado
 */
class EstadoSolicitud extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'estado_solicitud';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_solicitud', 'estado'], 'required'],
            [['id_solicitud'], 'integer'],
            [['estado'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_estado_solicitud' => 'Id Estado Solicitud',
            'id_solicitud' => 'Id Solicitud',
            'usuario' => 'Usuario',
            'estado' => 'Estado',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSolicitud()
    {
        return $this->hasOne(Solicitud::className(), ['id_solicitud' => 'id_solicitud']);
    }

}
