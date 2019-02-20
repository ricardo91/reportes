<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TipoProblema;

/**
 * TipoProblemaSearch represents the model behind the search form about `app\models\TipoProblema`.
 */
class TipoProblemaSearch extends TipoProblema
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_tipo_problema'], 'integer'],
            [['tipo_problema, descripcionTP'], 'safe'],
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
        $query = TipoProblema::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['tipo_problema' => SORT_ASC]],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_tipo_problema' => $this->id_tipo_problema,
        ]);

        $query->andFilterWhere(['like', 'tipo_problema', $this->tipo_problema])
                ->andFilterWhere(['like', 'descripcionTP', $this->descripcionTP]);

        return $dataProvider;
    }
}
