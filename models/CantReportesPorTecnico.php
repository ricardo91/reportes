<?php

namespace app\models;

use Yii;
use app\models\Tecnico;

/**
 * This is the model class for table "cant_reportes_por_tecnico".
 *
 * @property string $cantidad
 * @property string $ano
 * @property integer $tecnico_id
 */
class CantReportesPorTecnico extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cant_reportes_por_tecnico';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cantidad', 'tecnico_id'], 'integer'],
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
            'tecnico_id' => 'Técnico',
        ];
    }
    
    public static function getCantReportesPorTecnico($mes=null, $ano=null){
        $cantPorTecnico = CantReportesPorTecnico::findBySql('SELECT tecnico_id, cantidad FROM cant_reportes_por_tecnico WHERE ano=:ano', [':ano' => $ano])->all();
        
        $data = [];
        //$names = [];
        foreach ($cantPorTecnico as $cant) {
            $h = new HighCharts;
            if($cant->tecnico_id !== null){
                $h->name = Tecnico::findOne($cant->tecnico_id)->tecnico; 
            }
            else{
                $h->name = 'No Asignados';
            }
            $h->y = $cant->cantidad*1;

            $data[] = $h;
            //$names[] = $h->name;
        }
        return $data;
    }
    
}
