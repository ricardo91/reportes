<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tecnico */

$this->title = 'Actualizar Técnico: ' . $model->tecnico;
$this->params['breadcrumbs'][] = ['label' => 'Técnicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tecnico, 'url' => ['view', 'id' => $model->id_tecnico]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="tecnico-update">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
