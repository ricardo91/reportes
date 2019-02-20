<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EstadisticaSolicitudesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Estadistica Solicitudes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estadistica-solicitudes-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Estadistica Solicitudes', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_estadistica_solicitudes',
            'id_solicitud',
            'id_estado_solicitud',
            'id_tecnico',
            'id_tipo_problema',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
