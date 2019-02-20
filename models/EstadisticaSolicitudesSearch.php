<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\EstadisticaSolicitudes;

/**
 * EstadisticaSolicitudesSearch represents the model behind the search form about `app\models\EstadisticaSolicitudes`.
 */
class EstadisticaSolicitudesSearch extends EstadisticaSolicitudes
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_estadistica_solicitudes', 'id_solicitud', 'id_estado_solicitud', 'id_tecnico', 'id_tipo_problema'], 'integer'],
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
    public function search($params)
    {
        $query = EstadisticaSolicitudes::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_estadistica_solicitudes' => $this->id_estadistica_solicitudes,
            'id_solicitud' => $this->id_solicitud,
            'id_estado_solicitud' => $this->id_estado_solicitud,
            'id_tecnico' => $this->id_tecnico,
            'id_tipo_problema' => $this->id_tipo_problema,
        ]);

        return $dataProvider;
    }
}
