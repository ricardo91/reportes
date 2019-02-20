<?php

namespace app\models;

use Yii;
use app\models\Piso;


/**
 * This is the model class for table "cant_reportes_por_piso".
 *
 * @property string $cantidad
 * @property string $ano
 * @property integer $piso_id
 */
class CantReportesPorPiso extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cant_reportes_por_piso';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cantidad', 'piso_id'], 'integer'],
            [['piso_id'], 'required'],
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
            'piso_id' => 'Piso',
        ];
    }
    
    public static function getCantReportesPorPiso($mes=null, $ano=null){
        $cantPorPiso = CantReportesPorPiso::findBySql('SELECT piso_id, cantidad FROM cant_reportes_por_piso WHERE ano=:ano ORDER BY piso_id', [':ano' => $ano])->all();
        
        $data = [];
        //$names = [];
        foreach ($cantPorPiso as $cant) {
            $h = new HighCharts;
            $h->name = Piso::findOne($cant->piso_id)->piso;
            $h->y = $cant->cantidad*1;

            $data[] = $h;
            //$names[] = $h->name;
        }
        return $data;
    }
}
