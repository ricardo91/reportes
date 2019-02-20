<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EstadisticaSolicitudes */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="estadistica-solicitudes-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_solicitud')->textInput() ?>

    <?= $form->field($model, 'id_estado_solicitud')->textInput() ?>

    <?= $form->field($model, 'id_tecnico')->textInput() ?>

    <?= $form->field($model, 'id_tipo_problema')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
