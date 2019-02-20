<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Tecnico;
/* @var $this yii\web\View */
/* @var $model app\models\Tecnico */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tecnico-form">

	<div class="panel panel-primary">
    	<div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
    	<div class="panel-body">

		    <?php $form = ActiveForm::begin(); ?>

		    <?= $form->field($model, 'tecnico')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa el Técnico']) ?>
            
            <?= $form->field($model, 'estado_tecnico')->dropdownList([0 => 'Activo', 1 => 'Inactivo']) ?>

		    <div class="form-group">
		        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
		    </div>

		    <?php ActiveForm::end(); ?>
		    
		</div>
	</div>	
</div>
