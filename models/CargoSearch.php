<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Cargo;

/**
 * CargoSearch represents the model behind the search form about `app\models\Cargo`.
 */
class CargoSearch extends Cargo
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_cargo'], 'integer'],
            [['cargo'], 'safe'],
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
        $query = Cargo::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['cargo' => SORT_ASC]],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_cargo' => $this->id_cargo,
        ]);

        $query->andFilterWhere(['like', 'cargo', $this->cargo]);

        return $dataProvider;
    }
}
