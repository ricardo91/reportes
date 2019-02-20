<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\ArrayHelper;
use app\models\Solicitud;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EstadoSolicitudSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Estado Solicituds';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estado-solicitud-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Estado Solicitud', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id_estado_solicitud',
            //'id_solicitud',
            [
                'attribute' => 'usuario',
                'value' => 'solicitud.usuario',
                'filter' => Arrayhelper::map(Solicitud::find()->orderBy('usuario')->all(), 'id_solicitud', 'usuario'),
                'headerOptions' => ['style'=>'text-align: center'],
            ],

            'estado',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
