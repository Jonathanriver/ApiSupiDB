<?php

class Proyectos_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get($id = null) {

        if (!is_null($id)) {
            $query = $this->db->select('*')->from('usuarios')->where('idusuarios', $id)->get();
            if ($query->num_rows() === 1) {
                return $query->row_array();
            }
            return null;
        }
        $query = $this->db->select('*')->from('usuarios')->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return null;
    }

    public function UsersProyect_get($id_user = null) {
        $sql = "SELECT * 
                FROM users 
                INNER JOIN model_has_roles 
                INNER JOIN roles
                ON roles.id=model_has_roles.role_id
                ON users.id = model_has_roles.model_id 
                WHERE users.id=" . $id_user;

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_id->fetch_assoc()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    public function Users_get($id = null) {
        $sql = "SELECT *
                FROM usuarios
                WHERE idusuarios=" . $id;

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_array()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    public function UsersxEmpresa_get($id = null) {
        $sql = "SELECT *
                FROM usuarios
                WHERE empresa_idempresa=" . $id . " AND perfil_idPerfil=4";

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_array()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    public function UsersxEmpresaCoach_get($id = null) {
        $sql = "SELECT *
                FROM usuarios
                WHERE empresa_idempresa=" . $id . " AND perfil_idPerfil=3";

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_array()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    public function save($user) {

        //print_r($user);die;
        $res = $this->db->set($this->_setUser($user))->insert('usuarios');
//print_r($res);die;
        if ($res > 0) {
            $data = $this->db->insert_id();
            print_r($data);
            die;
            //echo json_encode($data);
            //return ;
            //return true;
        } else {
            $data = 0;
            echo json_encode($data);
            //return false;
        }
    }

    //Servicio actualizacion usuarios
    public function ActualizarUser_get($cedula) {
        ini_set("display_erros", 1);
        $curl = curl_init();
        $usuario = "adlive";
        $password = "adlive";
        $codificado = base64_encode($usuario . ":" . $password);
        $parametros["accion"] = 8;
        $parametros["token"] = md5(35411);
        $parametros["parametros"] = array("identificacion" => $cedula);
        header('Content-Type: application/JSON; charset=utf-8');
        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://api.psigmaonline.com/",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_POST => true,
            //CURLOPT_SSL_VERIFYHOST=>0,
            CURLOPT_TIMEOUT => 10,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($parametros),
            CURLOPT_HTTPHEADER => array(
                "Authorization: Basic $codificado",
                "Content-Language:es",
                "Content-Type: application/json"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        $header = curl_getinfo($curl);
        curl_close($curl);
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            header('Content-Type: application/JSON; charset=utf-8');
            return $response;
        }
    }

    //Servicio Cargar Demograficas usuarios
    public function CargarDenmograUser_get($cedula) {
        ini_set("display_erros", 1);
        $curl = curl_init();
        $usuario = "adlive";
        $password = "adlive";
        $codificado = base64_encode($usuario . ":" . $password);
        $parametros["accion"] = 6;
        $parametros["token"] = md5(35411);
        $parametros["parametros"] = array("id_programacion" => $cedula);
        header('Content-Type: application/JSON; charset=utf-8');
        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://api.psigmaonline.com/",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_POST => true,
            //CURLOPT_SSL_VERIFYHOST=>0,
            CURLOPT_TIMEOUT => 10,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($parametros),
            CURLOPT_HTTPHEADER => array(
                "Authorization: Basic $codificado",
                "Content-Language:es",
                "Content-Type: application/json"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        $header = curl_getinfo($curl);
        curl_close($curl);
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            header('Content-Type: application/JSON; charset=utf-8');
            return $response;
        }
    }

    private function _setUser($user) {
        return array(
            'nombre' => $user['nombre'],
            'direccion' => $user['direccion'],
            'telefono' => $user['telefono'],
            'email' => $user['email'],
            'edad' => $user['edad'],
            'tipo_doc' => $user['tipo_doc'],
            'documento' => $user['documento'],
            'fecha_nacimiento' => $user['fecha_nacimiento'],
            'roles_idroles' => $user['roles_idroles'],
            'perfil_idPerfil' => $user['perfil_idPerfil'],
            'dependencia_iddependencia' => $user['dependencia_iddependencia'],
            'gerarquico_idgerarquico' => $user['gerarquico_idgerarquico'],
            'avatar' => $user['avatar']
        );
    }

}
