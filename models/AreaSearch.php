<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Area;

/**
 * AreaSearch represents the model behind the search form about `app\models\Area`.
 */
class AreaSearch extends Area
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_area','idpiso'], 'integer'],
            [['area'], 'safe'],
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
        $query = Area::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['area' => SORT_ASC]],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->joinWith('piso');

        // grid filtering conditions
        $query->andFilterWhere([
            'id_area' => $this->id_area,
            'idpiso' => $this->idpiso,
        ]);

        $query->andFilterWhere(['like', 'area', $this->area]);

        return $dataProvider;
    }
}
