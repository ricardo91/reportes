<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Piso;

/* @var $this yii\web\View */
/* @var $model app\models\Area */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="area-form">

	<div class="panel panel-primary">
    	<div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
    	<div class="panel-body">

		    <?php $form = ActiveForm::begin(); ?>

		    <?= $form->field($model, 'area')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa el Área']) ?>

		    <?= $form->field($model, 'idpiso')->dropDownList(Arrayhelper::map(Piso::find()->orderBy('piso')->all(), 'id_piso', 'piso'),['prompt'=>'Selecciona el piso.']) ?>

		    <div class="form-group">
		        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
		    </div>

    		<?php ActiveForm::end(); ?>

    		</div>
    	</div>
    </div>

</div>
