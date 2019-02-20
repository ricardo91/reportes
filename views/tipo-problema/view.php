<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TipoProblema */

$this->title = $model->tipo_problema;
$this->params['breadcrumbs'][] = ['label' => 'Tipos de Problemas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipo-problema-view">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">

            <p>
                <?= Html::a('Actualizar', ['update', 'id' => $model->id_tipo_problema], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Eliminar', ['delete', 'id' => $model->id_tipo_problema], [
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
                    'id_tipo_problema',
                    'tipo_problema',
                    'descripcionTP',
                ],
            ]) ?>

        </div>
    </div>  
</div>
