<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Piso;

/* @var $this yii\web\View */
/* @var $model app\models\FiltrarPorPisosForm */
/* @var $form ActiveForm */


/**
*
* Esta Clase no se usa por ahora....
*
*/


?>
<div class="filtrarporpisosform">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'piso')->dropDownList(
                                            Arrayhelper::map(Piso::find()->orderBy('piso')->all(), 'id_piso', 'piso'),
                                            ['prompt'=>'Selecciona el piso.',])  ?>    
        <?= $form->field($model, 'fecha') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Generar Reporte', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- filtrarporpisosform -->




    <!--<div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">


        </div>
    </div>            

-->




