<?php

namespace app\models;

use Yii;
use app\models\Area;

/**
 * This is the model class for table "cant_reportes_por_area".
 *
 * @property string $cantidad
 * @property string $ano
 * @property integer $area_id
 */
class CantReportesPorArea extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cant_reportes_por_area';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cantidad', 'area_id'], 'integer'],
            [['area_id'], 'required'],
            [['ano'], 'string', 'max' => 4],
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
            'area_id' => 'Área',
        ];
    }
    
    public static function getCantReportesPorArea($mes=null, $ano=null){
        $cantPorArea = CantReportesPorArea::findBySql('SELECT area_id, cantidad FROM cant_reportes_por_area WHERE ano=:ano', [':ano' => $ano])->all();
        
        $data = [];
        //$names = [];
        foreach ($cantPorArea as $cant) {
            $h = new HighCharts;
            $h->name = Area::findOne($cant->area_id)->area;
            $h->y = $cant->cantidad*1;

            $data[] = $h;
            //$names[] = $h->name;
        }
        return $data;
    }
}
