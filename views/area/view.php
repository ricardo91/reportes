<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Area */

$this->title = $model->area;
$this->params['breadcrumbs'][] = ['label' => 'Áreas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="area-view">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">

            <p>
                <?= Html::a('Actualizar', ['update', 'id' => $model->id_area], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Eliminar', ['delete', 'id' => $model->id_area], [
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
                    //'id_area',
                    'area',
                    'idpiso',
                ],
            ]) ?>

        </div>
    </div>   

</div>
