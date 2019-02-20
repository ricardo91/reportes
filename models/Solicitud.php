<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "solicitud".
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
class Solicitud extends \yii\db\ActiveRecord
{

    //public static $pisos = array('1' => 'Piso 1', '2' => 'Piso 2', '3' => 'Piso 3', '4' => 'Piso 4', '5' => 'Piso 5', '6' => 'Piso 6', '7' => 'Piso 7', '8' => 'Piso 8', '9' => 'Piso 9');
    public static $estados = array('0' => 'Pendiente', '1' => 'Realizado');

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'solicitud';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['usuario', 'piso_id', 'area_id', 'nombre'/*, 'fecha'*/, 'descripcion'/*, 'tecnico_id', 'tipo_problema_id'*/], 'required'],
            [['piso_id', 'area_id', 'estado', 'tecnico_id', 'tipo_problema_id'], 'integer'],
            [['fecha', 'fecha_realizado'], 'safe'],
            [['descripcion'], 'string'],
            [['usuario', 'nombre'], 'string', 'max' => 255],
        ];
    }

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


    /*public static function getPisos($key=null){
        if($key!==null)
            return self::$pisos[$key];
        return self::$pisos;
    }*/

    public static function getEstados($key=null){
        if($key!==null)
            return self::$estados[$key];
        return self::$estados;
    }
    

    /*public static function getPiso($key=null){
        
        if($key=='1'){return "Piso 1";};
        if($key=='2'){return "Piso 2";};
        if($key=='3'){return "Piso 3";};
        if($key=='4'){return "Piso 4";};
        if($key=='5'){return "Piso 5";};
        if($key=='6'){return "Piso 6";};
        if($key=='7'){return "Piso 7";};
        if($key=='8'){return "Piso 8";};
        if($key=='9'){return "Piso 9";};
    }*/

    public static function getAreaByID($key=null){
        $result = Area::find()->where(['id_area' => $key])->one();
        return $result->area;
    }

    public static function getPisoByID($key=null){
        $result = Piso::find()->where(['id_piso' => $key])->one();
        return $result->piso;
    }

    public static function SpanishDate($FechaStamp){
       /*$ano = date('Y',$FechaStamp);
       $mes = date('n',$FechaStamp);
       $dia = date('d',$FechaStamp);
       $diasemana = date('w',$FechaStamp);
       $diassemanaN= array("Domingo","Lunes","Martes","Miércoles",
                      "Jueves","Viernes","Sábado");
       $mesesN=array(1=>"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio",
                 "Agosto","Septiembre","Octubre","Noviembre","Diciembre");
       return $diassemanaN[$diasemana].", $dia de ". $mesesN[$mes] ." de $ano";*/

       $new_date = date_format(date_create($FechaStamp), 'd/m/Y');
       return $new_date;
    }


}
