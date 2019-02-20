<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\EstadoSolicitud */

$this->title = $model->id_estado_solicitud;
$this->params['breadcrumbs'][] = ['label' => 'Estado Solicituds', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estado-solicitud-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_estado_solicitud], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_estado_solicitud], [
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
            'id_estado_solicitud',
            'id_solicitud',
            'estado',
        ],
    ]) ?>

</div>
