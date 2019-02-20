<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TipoProblema */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tipo-problema-form">
		<div class="panel panel-primary">
	    	<div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
	    		<div class="panel-body">

				    <?php $form = ActiveForm::begin(); ?>

				    <?php #echo $form->field($model, 'tipo_problema')->dropDownList(['Hardware' => 'Hardware', 'Sistema' => 'Sistema', 'Software' => 'Software']); ?>
				    <?= $form->field($model, 'tipo_problema')->dropDownList(['Hardware' => 'Hardware', 'Sistema' => 'Sistema', 'Software' => 'Software']) ?>
				    <?= $form->field($model, 'descripcionTP')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa la descripción del problema']) ?>

				    <div class="form-group">
				        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
				    </div>

				    <?php ActiveForm::end(); ?>
				</div>
			</div>	 
		</div>
</div>
