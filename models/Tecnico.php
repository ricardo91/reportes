<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tecnico".
 *
 * @property integer $id_tecnico
 * @property string $tecnico
 * @property integer $estado_tecnico
 */
class Tecnico extends \yii\db\ActiveRecord
{
    
    public static $estados_tecnicos = array('0' => 'Activo', '1' => 'Inactivo');
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tecnico';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tecnico'], 'required'],
            [['estado_tecnico'], 'integer'],
            [['tecnico'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_tecnico' => 'Id Técnico',
            'tecnico' => 'Técnico',
            'estado_tecnico' => 'Estado',
        ];
    }
    
    public static function getEstadosTecnicos($key=null){
        if($key!==null)
            return self::$estados_tecnicos[$key];
        return self::$estados_tecnicos;
    }
    

}
