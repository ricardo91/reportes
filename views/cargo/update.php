<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Cargo */

$this->title = 'Actualizar Cargo: ' . $model->cargo;
$this->params['breadcrumbs'][] = ['label' => 'Cargos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->cargo, 'url' => ['view', 'id' => $model->id_cargo]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="cargo-update">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
