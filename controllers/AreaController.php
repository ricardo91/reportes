<?php

namespace app\controllers;

use Yii;
use app\models\Area;
use app\models\AreaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use app\models\Piso;

/**
 * AreaController implements the CRUD actions for Area model.
 */
class AreaController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index', 'update', 'delete','view','create'],
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
     * Lists all Area models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AreaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Area model.
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
     * Creates a new Area model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Area();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_area]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Area model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_area]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Area model.
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
     * Finds the Area model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Area the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Area::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }


    public function actionLists($id)
    { 
        if($id != null){
                $countAreas = Area::find()
                    ->where(['idpiso' => $id])
                    ->count();
     
            $areas = Area::find()
                    ->where(['idpiso' => $id])
                    ->all();
     
            if($countAreas > 0 ){
                foreach($areas as $area){
                    echo "<option value='".$area->id_area."'>".$area->area."</option>";
                }
            }
            else{
                echo "<option> No existen &aacutereas en este piso </option>";
            }
        }else{
            $todosLasAreas = Area::find()->all();
            echo "<option value=''>Selecciona el &aacuterea.</option>";
            foreach ($todosLasAreas as $a) {
                echo "<option value='".$a->id_area."'>".$a->area."</option>";
            }
        }
     }

    public function actionPiso($id)
    {
        if($id != null){
            $area = Area::findOne($id);
            $piso = Piso::findOne($area->idpiso);
            echo "<option value='".$piso->id_piso."'>".$piso->piso."</option>";

        }else{
            $todosLosPisos = Piso::find()->all();
            echo "<option value=''>Selecciona el piso.</option>";
            foreach ($todosLosPisos as $p) {
                echo "<option value='".$p->id_piso."'>".$p->piso."</option>";
            }
        }
    }

}
