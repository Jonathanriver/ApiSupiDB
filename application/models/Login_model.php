<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model
{
     function __construct()
     {
          // Call the Model constructor
          parent::__construct();
     }

     //get the username & password from tbl_usrs
     function get_user($usr, $pwd)
     {
         
         
          $sql = "SELECT *
                FROM login.users
                INNER JOIN datos_basicos_users ON users.id = datos_basicos_users.users_id
                WHERE username='".$usr."' && password='". $pwd ."'";
          
          //print_r($sql);die;
          $query = $this->db->query($sql);
          while ($fila = $query->result_id->fetch_assoc())
          {
              //print_r($fila);die;
              return $fila;  
              
          }
           
           
           //die;
          
         
     }
}?>