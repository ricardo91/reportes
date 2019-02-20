<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Iniciar Sesión';
$this->params['breadcrumbs'][] = $this->title;
?>

<br xmlns="http://www.w3.org/1999/html"/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><!--     col-md-offset-1-->


                <div class="panel panel-primary">
                    <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
                    <div class="panel-body">

                            <div class="site-login">
                                <!--<h1><?= Html::encode($this->title) ?></h1>-->

                                <p>Por favor, rellene los siguientes campos para iniciar sesión:</p>

                                <?php $form = ActiveForm::begin([
                                    'id' => 'login-form',
                                    'layout' => 'horizontal',
                                    'fieldConfig' => [
                                        'template' => "{label}\n<div class=\"col-lg-3\">{input}</div>\n<div class=\"col-lg-8\">{error}</div>",
                                        'labelOptions' => ['class' => 'col-lg-1 control-label'],
                                    ],
                                ]); ?>

                                    <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                                    <?= $form->field($model, 'password')->passwordInput() ?>

                                    <?= $form->field($model, 'rememberMe')->checkbox([
                                        'template' => "<div class=\"col-lg-offset-1 col-lg-3\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
                                    ]) ?>

                                    <div class="form-group">
                                        <div class="col-lg-offset-1 col-lg-11">
                                            <?= Html::submitButton('Iniciar Sesión', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                                        </div>
                                    </div>

                                <?php ActiveForm::end(); ?>

                                <!--<div class="col-lg-offset-1" style="color:#999;">
                                    You may login with <strong>admin/admin</strong> or <strong>demo/demo</strong>.<br>
                                    To modify the username/password, please check out the code <code>app\models\User::$users</code>.
                                </div>-->
                            </div>
                    </div>
                </div> 
            </div>
        </div>  
    </div> 
