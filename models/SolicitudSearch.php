<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Solicitud;
use app\models\SolicitudIncomex;
use app\models\SolicitudMincex;

/**
 * SolicitudSearch represents the model behind the search form about `app\models\Solicitud`.
 */
class SolicitudSearch extends Solicitud
{
    /**
     * @inheritdoc
     */
    public $globalSearch;

    public function rules()
    {
        return [
            [['id_solicitud', 'piso_id', 'area_id', 'tecnico_id', 'tipo_problema_id', 'estado'], 'integer'],
            [['usuario', 'nombre', 'fecha', 'fecha_realizado', 'descripcion', 'globalSearch'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params, $empresa)
    {
        if($empresa === 'MINCEX'){
            $query = SolicitudMincex::find();
        }else if($empresa === 'INCOMEX'){
            $query = SolicitudIncomex::find();
        }else{
            $query = Solicitud::find();
        } 

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['fecha' => SORT_DESC]],
        ]);


        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->joinWith('tecnico');
        $query->joinWith('area');
        $query->joinWith('tipoProblema');
        $query->joinWith('piso');

        $dataProvider->setSort([
                'attributes'=>[
                    'usuario',
                    'piso_id',
                    'estado',
                    'fecha',
                    'fecha_realizado',
                    'nombre',
                    'descripcion',
                    'area_id'=>[
                        'asc'=>['area.area'=>SORT_ASC],
                        'desc'=>['area.area'=>SORT_DESC],
                    ],
                    'tecnico_id'=>[
                        'asc'=>['tecnico.tecnico'=>SORT_ASC],
                        'desc'=>['tecnico.tecnico'=>SORT_DESC],
                    ],
                    'tipo_problema_id'=>[
                        'asc'=>['tipo_problema.tipo_problema'=>SORT_ASC],
                        'desc'=>['tipo_problema.tipo_problema'=>SORT_DESC],
                    ]
                ],
                'defaultOrder' => ['fecha' => SORT_DESC]
            ]);

        // grid filtering conditions
        $query->andFilterWhere([
            'id_solicitud' => $this->id_solicitud,
            'piso_id' => $this->piso_id,
            'area_id' => $this->area_id,
            'estado' => $this->estado,
            'tecnico_id' => $this->tecnico_id,
            'tipo_problema_id' => $this->tipo_problema_id,
            //'fecha' => $this->fecha,
        ]);

        $query->andFilterWhere(['like', 'usuario', $this->usuario])
            ->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'fecha', $this->fecha])
            ->andFilterWhere(['like', 'fecha_realizado', $this->fecha_realizado])
            ->andFilterWhere(['like', 'descripcion', $this->descripcion]);

        $query->orFilterWhere(['like', 'usuario', $this->globalSearch])
            ->orFilterWhere(['like', 'nombre', $this->globalSearch])
            ->orFilterWhere(['like', 'descripcion', $this->globalSearch])
            ->orFilterWhere(['like', 'fecha', $this->globalSearch])
            ->orFilterWhere(['like', 'tecnico.tecnico', $this->globalSearch])
            ->orFilterWhere(['like', 'tipo_problema.tipo_problema', $this->globalSearch])
            ->orFilterWhere(['like', 'tipo_problema.descripcionTP', $this->globalSearch])
            ->orFilterWhere(['like', 'area.area', $this->globalSearch]);

        return $dataProvider;
    }
}
