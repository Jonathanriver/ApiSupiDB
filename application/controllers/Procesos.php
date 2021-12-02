<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
include_once APPPATH . '/libraries/REST_Controller.php';
/* Heredamos de la clase CI_Controller */

class Procesos extends REST_Controller {

    public function __construct() {
        parent::__construct();
            $this->load->model('Procesos_model');
    }

    public function index_get() {
        $user = $this->Procesos_model->get();

        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'No hay Noticias para Mostrar....'), 404);
        }
    }

    //Funcion que consulta el usuario como talento
    public function BucarProyectos_get() {
        
        $user = $this->Procesos_model->ListaProyect_get();
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'No hay data correspondiente'), 404);
        }
    }
    
    //Funcion que consulta el usuario como talento
    public function BucarGestors_get($id) {
        
        $user = $this->Procesos_model->ListaGestores_get($id);
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'No hay data correspondiente'), 404);
        }
    }
    
    
    public function BucarGestor_get($id) {
        
        $user = $this->Procesos_model->DataGestor_get($id);
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'No hay data correspondiente'), 404);
        }
    }
    

    public function find_get($id) {
        if (!$id) {
            $this->response(null, 400);
        }
        $user = $this->Procesos_model->get($id);
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'Nada'), 404);
        }
    }

    public function guardar_get() {
        //$id = $_GET['Registrar_user_model'];
        $id = $this->Procesos_model->save($this->get());
        //print($od);
    }
    
    public function guardarGestor_get() {
        //$id = $_GET['Registrar_user_model'];
        $id = $this->Procesos_model->guardar($this->get());
        //print($od);
    }
    

    public function index_put() {
        if (!$this->put('noticias')) {
            $this->response(null, 400);
        }
        $update = $this->Procesos_model->update($this->put('user'));
        if (!is_null($update)) {
            $this->response(array('response' => 'Noticia actualizada!'), 200);
        } else {
            $this->response(array('error', 'Algo se ha roto en el servidor...'), 400);
        }
    }

    public function index_delete($id) {
        if (!$id) {
            $this->response(null, 400);
        }
        $delete = $this->Procesos_model->delete($id);
        if (!is_null($delete)) {
            $this->response(array('response' => 'Noticia eliminada!'), 200);
        } else {
            $this->response(array('error', 'Algo se ha roto en el servidor...'), 400);
        }
    }

}
