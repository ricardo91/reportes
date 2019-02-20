<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EstadisticaSolicitudesSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="estadistica-solicitudes-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_estadistica_solicitudes') ?>

    <?= $form->field($model, 'id_solicitud') ?>

    <?= $form->field($model, 'id_estado_solicitud') ?>

    <?= $form->field($model, 'id_tecnico') ?>

    <?= $form->field($model, 'id_tipo_problema') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
