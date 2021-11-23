<?php
header("Access-Control-Allow-Origin: *");
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
include_once APPPATH . '/libraries/REST_Controller.php';
/* Heredamos de la clase CI_Controller */

class Roles extends REST_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Roles_model');
    }

    public function index_get() {
        $roles = $this->Roles_model->get();

        if (!is_null($roles)) {
            $this->response(array('response' => $roles), 200);
        } else {
            $this->response(array('error' => 'No hay Noticias para Mostrar....'), 404);
        }
    }
    public function find_get($id)
    {
        if (!$id) {
            $this->response(null, 400);
        }
        $roles = $this->Roles_model->get($id);
        if (!is_null($roles)) {
            $this->response(array('response' => $roles), 200);
        } else {
            $this->response(array('error' => 'Ciudad no encontrada...'), 404);
        }
    }
    public function index_post()
    {
        if (!$this->post('roles')) {
            $this->response(null, 400);
        }
        $id = $this->Roles_model->save($this->post('roles'));
        if (!is_null($id)) {
            $this->response(array('response' => $id), 200);
        } else {
            $this->response(array('error', 'Algo se ha roto en el servidor...'), 400);
        }
    }
    public function index_put()
    {
        if (!$this->put('roles')) {
            $this->response(null, 400);
        }
        $update = $this->Roles_model->update($this->put('roles'));
        if (!is_null($update)) {
            $this->response(array('response' => 'Noticia actualizada!'), 200);
        } else {
            $this->response(array('error', 'Algo se ha roto en el servidor...'), 400);
        }
    }
    public function index_delete($id)
    {
        if (!$id) {
            $this->response(null, 400);
        }
        $delete = $this->Roles_model->delete($id);
        if (!is_null($delete)) {
            $this->response(array('response' => 'Noticia eliminada!'), 200);
        } else {
            $this->response(array('error', 'Algo se ha roto en el servidor...'), 400);
        }
    }

}
