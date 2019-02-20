<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Area */

$this->title = 'Actualizar Área: ' . $model->area;
$this->params['breadcrumbs'][] = ['label' => 'Áreas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->area, 'url' => ['view', 'id' => $model->id_area]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="area-update">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
