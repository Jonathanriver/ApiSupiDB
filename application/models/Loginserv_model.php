<?php

class LoginServ_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }
    
    
    public function ConsultarUsuario_get($documento){
        $sql = "SELECT *
                FROM usuarios
                WHERE documento='" . $documento . "'";

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_id->fetch_assoc()) {
            //print_r($fila);die;
            return $fila;
        }
    }

    public function get($username = null, $contra = null) {

        /*   if (!is_null($username) || !is_null($contra)) {
          $query = $this->db->select('*')->from('usuarios')->where('username', $username, 'clave', $contra)->get();

          if ($query->num_rows() === 1) {
          return $query->row_array();
          }
          return null;
          }

          return null; */

        $sql = "SELECT *
                FROM users
                WHERE documento='" . $username . "' and clave='" . $contra."'";

        //print_r($sql);die;
        $query = $this->db->query($sql);
        //print_r($query);
        while ($fila = $query->result_id->fetch_all()) {
            //print_r($fila);die;
            return $fila;
        }
    }

}
