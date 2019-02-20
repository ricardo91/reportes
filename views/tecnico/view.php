<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\Tecnico;

/* @var $this yii\web\View */
/* @var $model app\models\Tecnico */

$this->title = $model->tecnico;
$this->params['breadcrumbs'][] = ['label' => 'Técnicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tecnico-view">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">
            <p>
                <?= Html::a('Actualizar', ['update', 'id' => $model->id_tecnico], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Eliminar', ['delete', 'id' => $model->id_tecnico], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => '¿Está seguro que desea eliminar este elemento?',
                        'method' => 'post',
                    ],
                ]) ?>
            </p>

            <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                    'id_tecnico',
                    'tecnico',
                    //'estado_tecnico',
                    [
                    'attribute' => 'estado_tecnico',
                    'value' => function ($data) {
                        return Tecnico::getEstadosTecnicos($data->estado_tecnico);
                    },
                    ],
                ],
            ]) ?>

        </div>
    </div>  
</div>
