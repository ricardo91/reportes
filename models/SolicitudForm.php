<?php

namespace app\models;

use Yii;
use yii\base\Model;

/**
 * SolicitudForm is the model behind the solicitud form.
 *
 * @property User|null $user This property is read-only.
 *
 */
class SolicitudForm extends Model
{
    public $usuario;
    public $piso;
    public $id_area;
    public $nombre;
    public $fecha;
    public $descripcion;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['usuario', /*'id_cargo',*/'piso', 'id_area', 'nombre'/*, 'fecha'*/, 'descripcion'], 'required'],
            [['id_cargo', 'piso', 'id_area'], 'integer'],
            [['fecha'], 'safe'],
            [['descripcion'], 'string'],
            [['usuario', 'nombre'], 'string', 'max' => 255],
        ];
    }

}
