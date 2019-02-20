<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


/* @var $this yii\web\View */
/* @var $model app\models\Solicitud */

$this->title = $model->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Reportes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="solicitud-view">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

     <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">

                <!--<p>
                    <?= Html::a('Update', ['update', 'id' => $model->id_solicitud], ['class' => 'btn btn-primary']) ?>
                    <?= Html::a('Delete', ['delete', 'id' => $model->id_solicitud], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => 'Are you sure you want to delete this item?',
                            'method' => 'post',
                        ],
                    ]) ?>
                </p>-->

                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        //'id_solicitud',
                        'nombre',
                        'usuario',
                        //'area_id',
                         [   
                            'attribute' => 'area_id',
                            'value' => $model->getAreaByID($model->area_id),
                        ],
                        //'piso',
                        [   
                            'attribute' => 'piso_id',
                            'value' => $model->getPisoByID($model->piso_id),
                        ],
                        'fecha',
                        'descripcion:ntext',
                    ],
                ]) ?>


                


        </div>
    </div>   
</div>
