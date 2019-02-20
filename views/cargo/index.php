<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\CargoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Cargos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cargo-index">

    
    <br xmlns="http://www.w3.org/1999/html"/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><!--     col-md-offset-1-->


                <div class="panel panel-primary">
                    <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
                    <div class="panel-body">

                        <!--<h1><?= Html::encode($this->title) ?></h1>-->
                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> Crear Nuevo', ['create'], ['class' => 'btn btn-large btn-info']) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <label>
                            Mostrar
                            <?php echo \nterms\pagesize\PageSize::widget();?>
                        </label>

                        <?php Pjax::begin(); ?>    <?= GridView::widget([
                                'dataProvider' => $dataProvider,
                                'filterModel' => $searchModel,
                                'filterSelector' => 'select[name="per-page"]',
                                'tableOptions' =>['class' => 'table table-striped table-hover table-bordered table-condensed'],
                                'layout' => '
                                    <div class="pull-right">
                                        {summary}
                                    </div>
                                    {items}
                                    <div class="pull-right">
                                        {pager}
                                    </div>
                                ',
                                'pager' => [
                                    //'class' => 'justinvoelker\separatedpager\CustomLinkPager',
                                    'maxButtonCount' => 10,
                                    'prevPageLabel' => 'Anterior',
                                    'nextPageLabel' => 'Siguiente',
                                    'prevPageCssClass' => 'prev hidden-xs',
                                    'nextPageCssClass' => 'next hidden-xs',
                                ],
                                'columns' => [
                                    ['class' => 'yii\grid\SerialColumn'],

                                    //'id_cargo',
                                    //'cargo',
                                      [
                                        'attribute' => 'cargo',
                                        'value' => 'cargo',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                    ],

                                    //['class' => 'yii\grid\ActionColumn'],

                                    [  
                                        'class' => 'yii\grid\ActionColumn',
                                        'contentOptions' => ['width'=>'100','style' => 'text-align: center'],
                                        //'header'=>' ',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'template' => '{update} {delete}',                    
                                   ],
                                ],
                            ]); ?>
                        <?php Pjax::end(); ?>


                    </div>
                </div>
            </div> 
        </div>
    </div>               
</div>