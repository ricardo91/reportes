<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\EstadisticaSolicitudes */

$this->title = 'Create Estadistica Solicitudes';
$this->params['breadcrumbs'][] = ['label' => 'Estadistica Solicitudes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estadistica-solicitudes-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
