<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Solicitud */

$this->title = 'Crear Reporte';
/*$this->params['breadcrumbs'][] = ['label' => 'Reportes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;*/
?>
<div class="solicitud-create">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->
    <br/>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
