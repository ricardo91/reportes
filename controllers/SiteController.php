<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\HighCharts;
use app\models\CantReportesMensuales;
use app\models\CantReportesPorPiso;
use app\models\CantReportesPorTecnico;
use app\models\CantReportesPorArea;
use app\models\CantReportesPorTipoProblema;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index','logout'],
                'rules' => [
                    [
                        'actions' => ['index','logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }
    
    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex($mes=null,$ano=null)
    {    
        $this->layout = 'main_solicitud';
    
        if($ano === null){
            $sql = "SELECT MAX(DATE_FORMAT(fecha, '%Y')) AS ano FROM solicitud";
            $ano = Yii::$app->db->createCommand($sql)->queryScalar();
        }
    
        //Cantidad de reportes mensuales
        $cantRMens = CantReportesMensuales::getCantReportesMensuales($mes, $ano);
        //Cantidad de reportes por piso
        $cantRPiso = CantReportesPorPiso::getCantReportesPorPiso($mes, $ano);
        $pisosN = [];
        foreach ($cantRPiso as $cp){
            $pisosN[] = $cp->name;
        }
        //Cantidad de reportes por tecnico
        $cantRTecnico = CantReportesPorTecnico::getCantReportesPorTecnico($mes, $ano);
        $tecnicosN = [];
        foreach ($cantRTecnico as $ct){
            $tecnicosN[] = $ct->name;
        }
        //Cantidad de reportes por area
        $cantRArea = CantReportesPorArea::getCantReportesPorArea($mes, $ano);
        $areasN = [];
        foreach ($cantRArea as $ca){
            $areasN[] = $ca->name;
        }
        //Cantidad de reportes por tipo de problema
        $cantRTP = CantReportesPorTipoProblema::getCantReportesPorTipoProblema($mes, $ano);
                
        return $this->render('index', 
                             ['cantRMens' => $cantRMens,
                              'cantRPiso' => $cantRPiso,
                              'pisosN' => $pisosN,
                              'cantRTecnico' => $cantRTecnico,
                              'tecnicosN' => $tecnicosN,
                              'cantRArea' => $cantRArea,
                              'areasN' => $areasN,
                              'cantRTP' => $cantRTP,
                              'ano' => $ano]);
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    /*public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }*/

    /**
     * Displays about page.
     *
     * @return string
     */
    /*public function actionAbout()
    {
        return $this->render('about');
    }*/
}
