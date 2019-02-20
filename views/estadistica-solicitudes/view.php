<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\EstadisticaSolicitudes */

$this->title = $model->id_estadistica_solicitudes;
$this->params['breadcrumbs'][] = ['label' => 'Estadistica Solicitudes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estadistica-solicitudes-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_estadistica_solicitudes], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_estadistica_solicitudes], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_estadistica_solicitudes',
            'id_solicitud',
            'id_estado_solicitud',
            'id_tecnico',
            'id_tipo_problema',
        ],
    ]) ?>

</div>
