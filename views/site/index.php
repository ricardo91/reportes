<?php
use app\models\Solicitud;
use miloschuman\highcharts\Highcharts;

/* @var $this yii\web\View */

$this->title = 'Reportes';
?>
<style>
    #myBtn {
    display: none; /* Hidden by default */
    position: fixed; /* Fixed/sticky position */
    bottom: 50px; /* Place the button at the bottom of the page */
    right: 50px; /* Place the button 30px from the right */
    z-index: 99; /* Make sure it does not overlap */
    border: none; /* Remove borders */
    outline: none; /* Remove outline */
    background-color: grey; /* Set a background color */
    color: white; /* Text color */
    cursor: pointer; /* Add a mouse pointer on hover */
    padding: 20px; /* Some padding */
    border-radius: 6px; /* Rounded corners */
    }
    #myBtn:hover {
        background-color: #555; /* Add a dark-grey background on hover */
    }
</style>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }
</script>

<div class="site-index">

    <br xmlns="http://www.w3.org/1999/html" />
    
    <div class="container-fluid">
        
        <br/><br/>          
        
        <!--<nav class="navbar navbar-default">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#">Seleccione el año para ver resumen:</a>
            </div>
            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php// echo $ano ?>
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <?php/* 
                    $anos = Solicitud::findBySql("SELECT DATE_FORMAT(fecha, '%Y') AS ano FROM solicitud GROUP BY ano ORDER BY ano DESC")->asArray()->all();
                    foreach($anos as $a){
                        echo "<li><a href='index.php?r=site/index&ano=".$a['ano']."'>".$a['ano']."</a></li>";
                    }*/?>
                </ul>
              </li>
              <!--<li>
                  <?php /*$totalDeReportes = Solicitud::findBySql("SELECT count(*) as total FROM solicitud WHERE DATE_FORMAT(fecha, '%Y') = ".$ano)->scalar();
                  echo "<p class='navbar-text'>Cantidad De Reportes: ".$totalDeReportes."</p>";
                  */?>
              </li> 
            </ul>
          </div>
        </nav>-->  
            
        <div class="panel panel-primary">
            <div class="panel-heading clearfix">
                <div class="dropdown pull-left">
                    <!--Seleccione el año para ver resumen:-->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $ano ?> <b class="caret"></b></a>

                    <ul class="dropdown-menu" role="menu">
                        <?php 
                        $anos = Solicitud::findBySql("SELECT DATE_FORMAT(fecha, '%Y') AS ano FROM solicitud GROUP BY ano ORDER BY ano DESC")->asArray()->all();
                        foreach($anos as $a){
                            echo "<li><a href='index.php?r=site/index&ano=".$a['ano']."'>".$a['ano']."</a></li>";
                        }?>
                    </ul>
                </div>
                <h2 class="panel-title text-secondary pull-right">
                    <?php $totalDeReportes = Solicitud::findBySql("SELECT count(*) as total FROM solicitud WHERE DATE_FORMAT(fecha, '%Y') = ".$ano)->scalar();?>
                    Cantidad De Reportes: <b><?php echo $totalDeReportes?></b>
                </h2>
            </div>
            <div class="panel-body">
        
                <div class="col-md-6">  <!--col-xs-6 col-sm-6 col-md-6 col-lg-6-->

                    <br/>
                    <?=
                    Highcharts::widget([
                        'scripts' => [
                            'modules/exporting',
                            'themes/grid-light', //sand-signika',//dark-unica',//grid-light,
                        ],
                        'options' => [
                            'chart' => ['type' => 'pie'],
                            'title' => ['text' => 'Resumen Mensual - '.$ano],
                            'subtitle' => ['text' => 'Cantidad De Reportes Realizados Por Meses'],
                            'legend' => ['enabled' => TRUE],
                            'series' => [[// mind the [[ instead of [
                                'type' => 'pie',
                                'name' => 'Reportes',
                                //'colorByPoint' => true,
                                'data' => $cantRMens,
                                //'dataLabels' => ['enabled' => true],
                                //'showInLegend' => true,
                            ]],
                        ]
                    ]);
                    ?>
                    <br/>
                    <?=
                    Highcharts::widget([
                        'scripts' => [
                            'modules/exporting',
                            'themes/grid-light', //sand-signika',//dark-unica',//grid-light,
                        ],
                        'options' => [
                            'chart' => ['type' => 'column'],
                            'title' => ['text' => 'Resumen Por Piso - '.$ano],
                            'subtitle' => ['text' => 'Cantidad De Reportes Realizados Por Piso'],
                            'xAxis' => [
                                'categories' => $pisosN,
                            ],
                            'legend' => ['enabled' => TRUE],
                            'series' => [[// mind the [[ instead of [
                                'type' => 'column',
                                'name' => 'Reportes',
                                //'colorByPoint' => true,
                                'data' => $cantRPiso,
                                //'dataLabels' => ['enabled' => true],
                                //'showInLegend' => true,
                            ]],
                        ]
                    ]);
                    ?>                            
</div>

                <div class="col-md-6">
            <br/>
            <?=
            Highcharts::widget([
                'scripts' => [
                    'modules/exporting',
                    'themes/grid-light', //sand-signika',//dark-unica',//grid-light,
                ],
                'options' => [
                    'chart' => ['type' => 'bar'],
                    'title' => ['text' => 'Resumen Por Técnico - '.$ano],
                    'subtitle' => ['text' => 'Cantidad De Reportes Realizados Por Técnico'],
                    'xAxis' => [
                        'categories' => $tecnicosN,
                    ],
                    'legend' => ['enabled' => TRUE],
                    'series' => [[// mind the [[ instead of [
                        'type' => 'bar',
                        'name' => 'Reportes',
                        //'colorByPoint' => true,
                        'data' => $cantRTecnico,
                        //'dataLabels' => ['enabled' => true],
                        //'showInLegend' => true,
                    ]],
                ]
            ]);
            ?>
            <br/>
            <?=
            Highcharts::widget([
                'scripts' => [
                    'modules/exporting',
                    'themes/grid-light', //sand-signika',//dark-unica',//grid-light,
                ],
                'options' => [
                    'chart' => ['type' => 'pie'],
                    'title' => ['text' => 'Resumen Por Tipo De Problema - '.$ano],
                    'subtitle' => ['text' => 'Cantidad De Reportes Realizados Por Tipo De Problema'],
                    'legend' => ['enabled' => TRUE],
                    'series' => [[// mind the [[ instead of [
                        'type' => 'pie',
                        'name' => 'Reportes',
                        //'colorByPoint' => true,
                        'data' => $cantRTP,
                        //'dataLabels' => ['enabled' => true],
                        //'showInLegend' => true,
                    ]],
                ]
            ]);
            ?>
        </div>  
        
            </div>
    
            <br/>
            <?=
            Highcharts::widget([
                        'scripts' => [
                            'modules/exporting',
                            'themes/grid-light', //sand-signika',//dark-unica',//grid-light,
                        ],
                        'options' => [
                            'chart' => ['type' => 'column'],
                            'title' => ['text' => 'Resumen Por Dirección - '.$ano],
                            'subtitle' => ['text' => 'Cantidad De Reportes Realizados Por Dirección'],
                            'xAxis' => [
                                'categories' => $areasN,
                            ],
                            'legend' => ['enabled' => TRUE],
                            'series' => [[// mind the [[ instead of [
                                'type' => 'column',
                                'name' => 'Reportes',
                                //'colorByPoint' => true,
                                'data' => $cantRArea,
                                'dataLabels' => ['enabled' => true],
                                //'showInLegend' => true,
                            ]],
                        ]
                    ]);
            ?>
        </div>   
        <button onclick="topFunction()" id="myBtn" title="Ir hacia arriba">&nbsp;<span class="glyphicon glyphicon-menu-up"></span>&nbsp;</button>
    </div>
</div>
