<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Solicitud */

$this->title = 'Cerrar Reporte: ' . $model->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Reportes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nombre, 'url' => ['view', 'id' => $model->id_solicitud]];
$this->params['breadcrumbs'][] = 'Detalle';
?>
<div class="solicitud-update">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form_update', [
        'model' => $model,
    ]) ?>

</div>
