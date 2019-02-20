<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "estadistica_solicitudes".
 *
 * @property integer $id_estadistica_solicitudes
 * @property integer $id_solicitud
 * @property integer $id_estado_solicitud
 * @property integer $id_tecnico
 * @property integer $id_tipo_problema
 */
class EstadisticaSolicitudes extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'estadistica_solicitudes';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_solicitud', 'id_estado_solicitud', 'id_tecnico', 'id_tipo_problema'], 'required'],
            [['id_solicitud', 'id_estado_solicitud', 'id_tecnico', 'id_tipo_problema'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_estadistica_solicitudes' => 'Id Estadistica Solicitudes',
            'id_solicitud' => 'Id Solicitud',
            'id_estado_solicitud' => 'Id Estado Solicitud',
            'id_tecnico' => 'Id Tecnico',
            'id_tipo_problema' => 'Id Tipo Problema',
        ];
    }
}
