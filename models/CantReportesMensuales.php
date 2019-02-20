<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cant_reportes_mensuales".
 *
 * @property string $cantidad
 * @property string $ano
 * @property string $mes
 */
class CantReportesMensuales extends \yii\db\ActiveRecord
{
    
    public static $months = array('1' => 'Enero', '2' => 'Febrero', '3' => 'Marzo', '4' => 'Abril', '5' => 'Mayo', '6' => 'Junio', '7' => 'Julio', '8' => 'Agosto', '9' => 'Septiembre', '10' => 'Octubre', '11' => 'Noviembre', '12' => 'Diciembre');

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cant_reportes_mensuales';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cantidad'], 'integer'],
            [['ano'], 'string', 'max' => 4],
            [['mes'], 'string', 'max' => 2],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'cantidad' => 'Cantidad',
            'ano' => 'Año',
            'mes' => 'Mes',
        ];
    }
    
    public static function getMonths($key=null){
        if($key!==null)
            return self::$months[$key];
        return self::$months;
    }
    
    public static function getCantReportesMensuales($mes=null, $ano=null){
        $cantMens = CantReportesMensuales::findBySql('SELECT mes, cantidad FROM cant_reportes_mensuales WHERE ano=:ano', [':ano' => $ano])->all();
        
        $data = [];
        //$names = [];
        foreach ($cantMens as $cant) {
            $h = new HighCharts;
            $h->name = CantReportesMensuales::getMonths($cant->mes*1);
            $h->y = $cant->cantidad*1;

            $data[] = $h;
            //$names[] = $h->mes;
        }
        return $data;
    }
}
