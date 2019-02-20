<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Tecnico */

$this->title = 'Crear Técnico';
$this->params['breadcrumbs'][] = ['label' => 'Técnicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tecnico-create">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
