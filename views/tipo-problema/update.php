<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TipoProblema */

$this->title = 'Actualizar Tipo de Problema: ' . $model->tipo_problema;
$this->params['breadcrumbs'][] = ['label' => 'Tipos de Problemas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tipo_problema, 'url' => ['view', 'id' => $model->id_tipo_problema]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="tipo-problema-update">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
