<?php

namespace app\models;

use yii\base\model;

/**
*
* Esta Clase no se usa por ahora....
*
*/

class FiltrarPorPisosForm extends Model{

    public $piso;
    public $fecha;

    public function rules()
    {
        return [
            [['piso', 'fecha'], 'required'],
        ];
    }

    public function attributeLabels() 
    {
        return [
            'piso' => 'Piso',
            'fecha' => 'Fecha',
        ];
    }

}