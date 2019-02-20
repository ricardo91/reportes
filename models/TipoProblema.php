<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipo_problema".
 *
 * @property integer $id_tipo_problema
 * @property string $tipo_problema
 * @property string $descripcionTP
 */
class TipoProblema extends \yii\db\ActiveRecord
{
    public static $tiposProblemas = array('1' => 'Hardware', '2' => 'Software', '3' => 'Sistema');
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tipo_problema';
    }

    /**
     * @inheritdoc
     */
   public function rules()
    {
        return [
            [['tipo_problema', 'descripcionTP'], 'required'],
            [['tipo_problema', 'descripcionTP'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_tipo_problema' => 'Id Tipo de Problema',
            'tipo_problema' => 'Tipo de Problema',
            'descripcionTP' => 'Descripción'
        ];
    }

    public static function getProblema($key=null){
            
        /*if($key == 0){
            return '(no definido)';
        }else{*/
            $result = TipoProblema::find()->where(['id_tipo_problema' => $key])->one();
            //if($result->tipo_problema != null || $result->descripcionTP != null)
            return $result->tipo_problema.' - '.$result->descripcionTP;
        //}
    }

    /*public static function getProblemas(){
            $result = TipoProblema::find();
            return $result->tipo_problema.' - '.$result->descripcionTP;
    }*/

    public static function getTiposDeProblema($key=null){
        //$tiposProbl = TipoProblema::findBySql('SELECT * FROM tipo_problema');
        ///////$tiposProbl = TipoProblema::find()->asArray()->all();
        /////var_dump($tiposProbl[0]);
        ///////$tipos = array();
       
        //if($key!==null){
            
        /*for($i=0;$i<count($tiposProbl);$i++):
            if($tiposProbl[$i]->$id_tipo_problema === 1)
                $tipos[] = $tiposProbl[$i];
        endfor;*/

        /*for($row=0;$row<count($tiposProbl);$row++):
            for($col=0;$col<count($tiposProbl[$row]);$col++):
                if($tiposProbl[$row][$col]->$id_tipo_problema === 1)
                    $tipos[] = $tiposProbl[$row][$col];
            endfor;
        endfor;*/

        /////return $tipos;

        /*if($key!==null)
            return self::$tiposProblemas[$key];
        return self::$tiposProblemas;*/

        if($key!==null){
            //$post = Yii::$app->db->createCommand('SELECT * FROM tipo_problema WHERE id_tipo_problema='.$key)->queryAll();
            $post = TipoProblema::find()->where(['id_tipo_problema' => $key])->one();
        }else{
            //$post = TipoProblema::findBySql('SELECT * FROM reportes.tipo_problema');
            $post = TipoProblema::find()->all();
            //$post = Yii::$app->db->createCommand('SELECT * FROM tipo_problema')->queryOne();
        }
        //var_dump(TipoProblema::find()->where(['id_tipo_problema' => 1])->all());
        //var_dump($post);
        return $post;
    }

}
