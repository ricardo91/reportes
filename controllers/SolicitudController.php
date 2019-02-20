<?php

namespace app\controllers;

use Yii;
use app\models\Solicitud;
use app\models\SolicitudSearch;
use app\models\FiltrarPorPisosForm;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\db\Expression;
use yii\filters\AccessControl;
use yii\helpers\Time;

/**
 * SolicitudController implements the CRUD actions for Solicitud model.
 */
class SolicitudController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index', 'update', 'delete','view'],
                'rules'=> [
                    [
                        'allow' => true,
                        'roles' => ['@']
                    ],
                ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }
    /**
     * Lists all Solicitud models.
     * @return mixed
     */
    public function actionIndex($empresa=null) //$empresa es para filtrar x INCOMEX ó MINCEX
    {   
        $this->layout = 'main_solicitud';
        
        $searchModel = new SolicitudSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, $empresa);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'empresa' => $empresa,
        ]);
    }

    /**
     * Displays a single Solicitud model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
    /**
     * Creates a new Solicitud model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Solicitud();
        //$now = new Expression('NOW()');
        //$model->fecha = date('d/m/Y');//Solicitud::SpanishDate($now);
        $model->fecha = new Expression('NOW()');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->id_solicitud]);
            Yii::$app->session->setFlash('success', 'Su solicitud ha sido creada correctamente');
            return $this->redirect(['create']);
        }/* else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }*/
        return $this->render('create', ['model'=>$model]);
    }

    /**
     * Updates an existing Solicitud model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->id_solicitud]);

            if($model->tecnico_id != null && $model->tipo_problema_id != null){
                $model->estado = 1;
                $model->fecha_realizado = new Expression('NOW()');
                //$model->fecha_realizado = date("d-m-Y");
                $model->save();
            }
            else{
                $model->estado = 0;
                $model->save();
            }

            return $this->redirect(['index']);

        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Solicitud model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Solicitud model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Solicitud the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Solicitud::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

/**************************************************************************************************************************/
    /*public function actionFiltrarporpisosform(){
        //$this->layout = 'main_solicitud';
        $model = new FiltrarPorPisosForm();

        if(isset($_POST['FiltrarPorPisosForm'])){
            $model->attributes = $POST['FiltrarPorPisosForm'];
            return $this->actionFiltrarPorPisos($_POST['FiltrarPorPisosForm']['piso'],$_POST['FiltrarPorPisosForm']['fecha']);
        }
        $this->render('filtrarporpisosform',array('model'=>$model));
    }

    public function actionFiltrarPorPisos(){
        $model = new Solicitud();

        $model->unsetAttributes();

        if(isset($_GET['Solicitud']))
            $model->attributes=$_GET['Solicitud'];

        $this->render('filtrarPorPisos',array('model'=>$model,'piso'=>$piso,'fecha'=>$fecha));
    }*/
/*****************************************************************************************************************************/
}
