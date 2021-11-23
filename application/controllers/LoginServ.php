<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

header("Access-Control-Allow-Origin: *");
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
include_once APPPATH . '/libraries/REST_Controller.php';

class LoginServ extends REST_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('LoginServ_model');
    }

    public function Consultar_get($documento) {
        if (!$documento) {
            $this->response(null, 200);
        }


        $user = $this->LoginServ_model->ConsultarUsuario_get($documento);
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'Datos incorrectos...'), 200);
        }
    }

    public function find_get($userName, $contra) {

        if (!$userName) {
            $this->response(null, 200);
        }

        if (!$contra) {
            $this->response(null, 200);
        }

        $user = $this->LoginServ_model->get($userName, $contra);
        if (!is_null($user)) {
            $this->response(array('response' => $user), 200);
        } else {
            $this->response(array('error' => 'Datos incorrectos...'), 200);
        }
    }

}
