<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "solicitud_mincex".
 *
 * @property integer $id_solicitud
 * @property string $usuario
 * @property integer $area_id
 * @property string $nombre
 * @property string $fecha
 * @property string $descripcion
 * @property integer $estado
 * @property integer $tecnico_id
 * @property integer $tipo_problema_id
 * @property integer $piso_id
 * @property string $fecha_realizado
 */
class SolicitudMincex extends \yii\db\ActiveRecord
{
    public static $estados = array('0' => 'Pendiente', '1' => 'Realizado');
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'solicitud_mincex';
    }

    public static function primaryKey()
    {
        return ['id_solicitud'];
    }

    /**
     * @inheritdoc
     */
    /*public function rules()
    {
        return [
            [['area_id', 'estado', 'tecnico_id', 'tipo_problema_id', 'piso_id'], 'integer'],
            [['usuario', 'area_id', 'nombre', 'descripcion', 'piso_id'], 'required'],
            [['fecha', 'fecha_realizado'], 'safe'],
            [['descripcion'], 'string'],
            [['usuario', 'nombre'], 'string', 'max' => 255],
        ];
    }*/

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_solicitud' => 'Id Solicitud',
            'usuario' => 'Usuario',
            'area_id' => 'Área',
            'nombre' => 'Nombre',
            'fecha' => 'Fecha',
            'descripcion' => 'Descripción',
            'estado' => 'Estado',
            'tipo_problema_id' => 'Tipo de Problema',
            'tecnico_id' => 'Técnico',
            'piso_id' => 'Piso',
            'fecha_realizado' => 'Fecha Realizado',
        ];
    }



    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArea()
    {
        return $this->hasOne(Area::className(), ['id_area' => 'area_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTecnico()
    {
        return $this->hasOne(Tecnico::className(), ['id_tecnico' => 'tecnico_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipoProblema()
    {
        return $this->hasOne(TipoProblema::className(), ['id_tipo_problema' => 'tipo_problema_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPiso()
    {
        return $this->hasOne(Piso::className(), ['id_piso' => 'piso_id']);
    }


   /* public static function getEstados($key=null){
        if($key!==null)
            return self::$estados[$key];
        return self::$estados;
    }
    
    public static function getAreaByID($key=null){
        $result = Area::find()->where(['id_area' => $key])->one();
        return $result->area;
    }

    public static function getPisoByID($key=null){
        $result = Piso::find()->where(['id_piso' => $key])->one();
        return $result->piso;
    }*/

    /*public static function SpanishDate($FechaStamp){
       $new_date = date_format(date_create($FechaStamp), 'd/m/Y');
       return $new_date;
    }*/
}
