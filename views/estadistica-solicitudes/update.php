<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\EstadisticaSolicitudes */

$this->title = 'Update Estadistica Solicitudes: ' . $model->id_estadistica_solicitudes;
$this->params['breadcrumbs'][] = ['label' => 'Estadistica Solicitudes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_estadistica_solicitudes, 'url' => ['view', 'id' => $model->id_estadistica_solicitudes]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="estadistica-solicitudes-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
