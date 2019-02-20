<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cant_reportes_por_tipo_problema".
 *
 * @property string $cantidad
 * @property string $ano
 * @property string $tipo_problema
 */
class CantReportesPorTipoProblema extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cant_reportes_por_tipo_problema';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cantidad'], 'integer'],
            [['tipo_problema'], 'required'],
            [['ano'], 'string', 'max' => 4],
            [['tipo_problema'], 'string', 'max' => 255],
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
            'tipo_problema' => 'Tipo Problema',
        ];
    }
    
    public static function getCantReportesPorTipoProblema($mes=null, $ano=null){
        $cantTipoProb = CantReportesPorTipoProblema::findBySql('SELECT tipo_problema, cantidad FROM cant_reportes_por_tipo_problema WHERE ano=:ano', [':ano' => $ano])->all();
        
        $data = [];
        //$names = [];
        foreach ($cantTipoProb as $cant) {
            $h = new HighCharts;
            $h->name = $cant->tipo_problema;
            $h->y = $cant->cantidad*1;

            $data[] = $h;
            //$names[] = $h->mes;
        }
        return $data;
    }
}
