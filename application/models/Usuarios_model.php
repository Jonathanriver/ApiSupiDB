<?php

class Usuarios_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get($usuario = null, $clave = null) {

        $sql = "SELECT *
        FROM usuarios
        WHERE email= '" . $usuario. "' AND clave='".$clave."'";

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_id->fetch_assoc()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    
    public function Users_get($documento = null) {
        $sql = "SELECT *
                FROM usuarios
                WHERE documento=" . $documento;

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_id->fetch_assoc()) {
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

    private function _setUser($user) {
        return array(
            'nombre' => $user['nombre'],
            'apellido' => $user['apellido'],
            'fecha_nacimiento' => $user['fecha_nacimiento'],
            'depExpedicion' => $user['depExpedicion'],
            'ciudadExpe' => $user['ciudadExpe'],
            // 'direccion' => $user['direccion'],
            'telefono' => $user['telefono'],
            'email' => $user['email'],
            'celular' => $user['celular'],
            'UsuarioSena' => $user['UsuarioSena'],
            'empresaTrabajo' => $user['empresaTrabajo'],
            'lugarTrabajo' => $user['lugarTrabajo'],
            'tipoVinc' => $user['tipoVinc'],
            'centroForm' => $user['centroForm'],
            'grupoSang' => $user['grupoSang'],
            'estrato' => $user['estrato'],
            'etnias' => $user['etnias'],
            'eps' => $user['eps'],
            'clave' => $user['clave'],
            // 'edad' => $user['edad'],
            'tipo_documento' => $user['tipo_documento'],
            'documento' => $user['documento'],
            'nivel_academico' => $user['nivel_academico'],
            'ciudad_recidencia' => $user['ciudad_recidencia'],
            'departamento' => $user['departamento'],
            'institucion_perteneciente' => $user['institucion_perteneciente'],
            'nit' => $user['nit'],
            'sede' => $user['sede'],
            'Rol_idRol' => $user['Rol_idRol']
        );
    }

}
