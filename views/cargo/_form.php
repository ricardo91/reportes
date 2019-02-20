<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Cargo */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cargo-form">

<div class="panel panel-primary">
    	<div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
    	<div class="panel-body">

		    <?php $form = ActiveForm::begin(); ?>

		    <?= $form->field($model, 'cargo')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa el Cargo']) ?>

		    <div class="form-group">
		        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
		    </div>

		    <?php ActiveForm::end(); ?>
		    
		</div>
	</div>	
</div>
