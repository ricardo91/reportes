<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\ArrayHelper;
use app\models\Area;
use app\models\Solicitud;
use app\models\Tecnico;
use app\models\TipoProblema;
use app\models\Piso;
use kartik\export\ExportMenu;
use yii\bootstrap\Dropdown;
/* @var $this yii\web\View */
/* @var $searchModel app\models\SolicitudSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Reportes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="solicitud-index">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->
    <br/>
    <?php  echo $this->render('_search', ['model' => $searchModel]); ?>

    <!--<p>
        <?= Html::a('Create Solicitud', ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->

    <?php
        $gridColumns = [
            'usuario',
            'piso.piso',
            'area.area',
            'nombre',
            'fecha',
            [
                'attribute' => 'estado',
                'value' => function ($data) {
                    return Solicitud::getEstados($data->estado);
                },
                'filter' => Solicitud::getEstados(),
                'headerOptions' => ['style'=>'text-align: center'],
                'contentOptions' => ['width'=>'90','style' => 'text-align: center'],
            ],//'estado',
            'tecnico.tecnico',
            [
                 'attribute' => 'tipo_problema_id',
                 //'value' => 'tipoProblema.tipo_problema',
                 'value' => function ($data) {
                     if($data->tipo_problema_id == 0){
                         return '(no definido)';
                     }
                     return TipoProblema::getProblema($data->tipo_problema_id);
                 },
                 'contentOptions' => function ($data) {
                     if($data->tipo_problema_id == 0){
                         return ['class'=>'not-set'];
                      }else{
                         return ['style'=>'text-align: left'];
                     }
                 },
                 //'filter' => Arrayhelper::map(TipoProblema::find()->orderBy('tipo_problema')->all(), 'id_tipo_problema', 'tipo_problema'),
                 'filter' => TipoProblema::getTiposDeProblema(),
                 'headerOptions' => ['style'=>'text-align: center'],
            ],//'tipo_problema_id',
            'descripcion:ntext',
        ]; ?>

    
        <br xmlns="http://www.w3.org/1999/html"/>
        <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><!--     col-md-offset-1-->


                <div class="panel panel-primary">
                    <div class="panel-heading"><strong><?= Html::encode($this->title) ?></strong></div>
                    <div class="panel-body">


                  
                        <!--<?= Html::a('<span class="glyphicon glyphicon-plus"></span> Crear Nuevo', ['create'], ['class' => 'btn btn-large btn-info']) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->               

                        <label>
                            
                             <?= ExportMenu::widget([
                                 'dataProvider' => $dataProvider,
                                'columns' => $gridColumns
                            ]); ?>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Mostrar
                            <?php echo \nterms\pagesize\PageSize::widget();?>

                        </label>
        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group">
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?php if($empresa == null){echo 'Mostrar Todos';}else{echo $empresa;} ?> <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu">
                            <li> <?= Html::a('Mostrar Todos', ['/solicitud/index']) ?> </li>
                            <li> <?= Html::a('MINCEX', ['/solicitud/index', 'empresa' => 'MINCEX']) ?> </li>
                            <li> <?= Html::a('INCOMEX', ['/solicitud/index', 'empresa' => 'INCOMEX']) ?> </li>
                          </ul>
                        </div>


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
                            'rowOptions'=>function($model){
                                if($model->estado == 0){
                                    return ['class'=>'danger'];
                                }/*else{
                                    return ['class'=>'success'];
                                }*/
                            },
                            'columns' => [
                                    ['class' => 'yii\grid\SerialColumn'],

                                    //'id_solicitud',
                                    //'usuario',
                                    [
                                        'attribute' => 'usuario',
                                        'value' => 'usuario',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        //'contentOptions' => ['style' => 'text-align: center'],
                                    ],
                                    //'piso',
                                    [
                                        'attribute' => 'piso_id',
                                        'value' => 'piso.piso',/*function ($data) {
                                            return Solicitud::getPisos($data->piso);
                                        },*/
                                        'filter' => Arrayhelper::map(Piso::find()->orderBy('piso')->all(), 'id_piso', 'piso'),
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'contentOptions' => ['width'=>'80','style' => 'text-align: center'],
                                    ],
                                    //'id_area',
                                    [
                                        'attribute' => 'area_id',
                                        'value' => 'area.area',
                                        'filter' => Arrayhelper::map(Area::find()->orderBy('area')->all(), 'id_area', 'area'),
                                        /*'filterOptions'=>[  ],
                                        'filterInputOptions' => [
                                            'class' => 'form-control', 
                                            //'id' => null
                                            'onchange'=>'
                                                $.post( "index.php?r=area/lists&id='.'"+$(this).val(), function( data ){
                                                    $( "select#solicitudsearch-area_id" ).html(data);
                                                });'
                                        ],*/
                                        'headerOptions' => ['style'=>'text-align: center'],
                                    ],
                                    //'nombre',
                                    [
                                        'attribute' => 'nombre',
                                        'value' => 'nombre',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        //'contentOptions' => ['style' => 'text-align: center'],
                                    ],
                                    //'fecha',
                                    [
                                        'attribute' => 'fecha',
                                        'value' => /*function ($data) {
                                            return Solicitud::SpanishDate($data->fecha_realizado);
                                        },//*/'fecha',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'contentOptions' => ['width'=>'90','style' => 'text-align: center'],
                                    ],
                                    //'fecha_realizado',
                                    [
                                        'attribute' => 'fecha_realizado',
                                        'value' => /*function ($data) {
                                            return Solicitud::SpanishDate($data->fecha_realizado);
                                        },//*/'fecha_realizado',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'contentOptions' => ['width'=>'90','style' => 'text-align: center'],
                                    ],
                                    //'estado', 
                                    [
                                        'attribute' => 'estado',
                                        'value' => function ($data) {
                                            return Solicitud::getEstados($data->estado);
                                        },
                                        'filter' => Solicitud::getEstados(),
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'contentOptions' => ['width'=>'90','style' => 'text-align: center'],
                                    ],  

                                    //'tecnico_id',
                                    [
                                        'attribute' => 'tecnico_id',
                                        'value' => 'tecnico.tecnico',
                                        'filter' => Arrayhelper::map(Tecnico::find()->orderBy('tecnico')->all(), 'id_tecnico', 'tecnico'),
                                        'headerOptions' => ['style'=>'text-align: center'],
                                    ],
                                    //'tipo_problema_id',  
                                    [
                                        'attribute' => 'tipo_problema_id',
                                        //'value' => 'tipoProblema.tipo_problema',
                                        'value' => function ($data) {
                                            if($data->tipo_problema_id == 0){
                                                return '(no definido)';
                                            }
                                            return TipoProblema::getProblema($data->tipo_problema_id);
                                               },
                                        'contentOptions' => function ($data) {
                                            if($data->tipo_problema_id == 0){
                                                return ['class'=>'not-set'];
                                            }else{
                                                return ['style'=>'text-align: left'];
                                            }
                                        },
                                        'filter' => Arrayhelper::map(TipoProblema::find()->orderBy('tipo_problema')->all(), 'id_tipo_problema', 'descripcionTP'),
                                        //'filter' => TipoProblema::getTiposDeProblema(),
                                        'headerOptions' => ['style'=>'text-align: center'],
                                    ],
                                    //'descripcion:ntext',
                                    [
                                        'attribute' => 'descripcion',
                                        'value' => 'descripcion',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        //'contentOptions' => ['width'=>'300'],
                                    ],

                                    //['class' => 'yii\grid\ActionColumn'],
                                    [  
                                        'class' => 'yii\grid\ActionColumn',
                                        'contentOptions' => ['width'=>'40', 'style' => 'text-align: center'],
                                        //'header'=>' ',
                                        'headerOptions' => ['style'=>'text-align: center'],
                                        'template' => '{update}', //{view}  {delete} 
                                        'buttons'=>[
                                            'update' => function ($url, $model) {     
                                                        return $model->estado == 0 ? Html::a('<span class="glyphicon glyphicon-ok"></span>', $url, [
                                                        'title' => Yii::t('yii', 'Cerrar Reporte'),
                                                        ]) : '';                                
                                                    }
                                        ]                 
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


