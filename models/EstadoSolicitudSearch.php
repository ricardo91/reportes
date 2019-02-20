<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\EstadoSolicitud;

/**
 * EstadoSolicitudSearch represents the model behind the search form about `app\models\EstadoSolicitud`.
 */
class EstadoSolicitudSearch extends EstadoSolicitud
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_estado_solicitud', 'id_solicitud'], 'integer'],
            [['estado'], 'safe'],
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
        $query = EstadoSolicitud::find();

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

        $query->joinWith('solicitud');

        // grid filtering conditions
        $query->andFilterWhere([
            'id_estado_solicitud' => $this->id_estado_solicitud,
            'id_solicitud' => $this->id_solicitud,

        ]);

        $query->andFilterWhere(['like', 'estado', $this->estado]);

        return $dataProvider;
    }
}