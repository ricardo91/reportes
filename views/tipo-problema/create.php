<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TipoProblema */

$this->title = 'Crear Tipo de Problema';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de Problemas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipo-problema-create">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
