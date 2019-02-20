<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Area;
use app\models\Cargo;
use app\models\Tecnico;
use app\models\TipoProblema;

/* @var $this yii\web\View */
/* @var $model app\models\Solicitud */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="solicitud-form">
    



    <?php if(Yii::$app->session->hasFlash('success')): ?>
        <div class="alert alert-success" role="alert">
            <?= Yii::$app->session->getFlash('success') ?>
        </div>
    <?php endif; ?>

    <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">


            <ul>
                <li><label>Usuario</label>: <?= Html::encode($model->usuario) ?></li>
                <li><label>Nombre</label>: <?= Html::encode($model->nombre) ?></li>
                <li><label>Piso</label>: <?= Html::encode($model->getPisoByID($model->piso_id)) ?></li>
                <li><label>Área</label>: <?= Html::encode($model->getAreaByID($model->area_id)) ?></li>
                <li><label>Descripción</label>: <?= Html::encode($model->descripcion) ?></li>
            </ul>
            <br/>
            <strong>Seleccione el técnico y tipo de problema para cerrar el reporte:</strong>
            <br/><br/>


            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'tecnico_id')->dropDownList(Arrayhelper::map(Tecnico::find()->where(['estado_tecnico' => 0])->orderBy('tecnico')->all(), 'id_tecnico', 'tecnico'), ['prompt'=>'Selecciona el técnico que le dio solución.']) ?>

            <?= $form->field($model, 'tipo_problema_id')->dropDownList(Arrayhelper::map(TipoProblema::find()->orderBy('tipo_problema')->all(), 'id_tipo_problema', 'descripcionTP'), ['prompt'=>'Selecciona el tipo de problema.']) //TipoProblema::getProblema($model->tipo_problema_id)?> 

            <div class="form-group">
                <?= Html::submitButton('Cerrar Reporte', ['class'=>'btn btn-success']); ?>
            </div>

            <?php ActiveForm::end(); ?>

        </div>
    </div>            
</div>
