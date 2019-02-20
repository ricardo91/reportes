<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Area;
use app\models\Cargo;
use app\models\Piso;

/* @var $this yii\web\View */
/* @var $model app\models\Solicitud */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="solicitud-form">
    



    <?php if(Yii::$app->session->hasFlash('success')): ?>
        <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <?= Yii::$app->session->getFlash('success') ?>
        </div>
    <?php endif; ?>


    <div class="panel panel-primary">
        <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
        <div class="panel-body">

            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'usuario')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa el Usuario  |  ej: juan.perez']) ?>

            <?= $form->field($model, 'nombre')->textInput(['maxlength' => true, 'placeHolder' => 'Ingresa el Nombre y Apellido  |  ej: Juan Pérez']) ?>

            <!--<?php $a= ['1' => 'Piso 1', '2' => 'Piso 2', '3' => 'Piso 3', '4' => 'Piso 4', '5' => 'Piso 5', '6' => 'Piso 6', '7' => 'Piso 7', '8' => 'Piso 8', '9' => 'Piso 9'];
                echo $form->field($model, 'piso')->dropDownList($a,['prompt'=>'Selecciona el piso.']); ?>
            -->



            <?= $form->field($model, 'piso_id')->dropDownList(
                                        Arrayhelper::map(Piso::find()->orderBy('piso')->all(), 'id_piso', 'piso'),
                                        [
                                            'prompt'=>'Selecciona el piso.',
                                            /*'onchange'=>'
                                                $.area( "'.Yii::$app->urlManager->createUrl('area/lists?id=').'"+$(this).val(), function( data ) {
                                                  $( "select#solicitud-area_id" ).html( data );
                                                });
                                            ']); */
                                            'onchange'=>'
                                                $.post( "index.php?r=area/lists&id='.'"+$(this).val(), function( data ){
                                                    $( "select#solicitud-area_id" ).html(data);
                                                });'
                                        ])  ?>   




            <?= $form->field($model, 'area_id')->dropDownList(
                                        Arrayhelper::map(Area::find()->orderBy('area')->all(), 'id_area', 'area'),
                                        [
                                            'prompt'=>'Selecciona el área.',
                                            'onchange'=>'
                                                $.post( "index.php?r=area/piso&id='.'"+$(this).val(), function( data ){
                                                    $( "select#solicitud-piso_id" ).html(data);
                                                });'
                                        ]) ?>

            


            <!--<?= $form->field($model, 'fecha')->textInput() ?>-->

            <?= $form->field($model, 'descripcion')->textarea(['rows' => 6, 'placeHolder' => 'Ingresa la Descripción']) ?>

            <div class="form-group">
                <!--<?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Nuevo Reporte', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>-->
                <?= Html::submitButton('Enviar', ['class'=>'btn btn-success']); ?>
                <?= Html::resetButton('Limpiar', [
                                            'class'=>'btn btn-default',
                                                'onclick'=>'
                                                $.post( "index.php?r=area/lists&id='.'"+$(this).val(), function( data ){
                                                    $( "select#solicitud-area_id" ).html(data);
                                                });
                                                $.post( "index.php?r=area/piso&id='.'"+$(this).val(), function( data ){
                                                    $( "select#solicitud-piso_id" ).html(data);
                                                });'
                                            ]); ?>
            </div>

            <?php ActiveForm::end(); ?>

        </div>
    </div>            
</div>
