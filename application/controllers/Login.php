<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->helper('html');
        $this->load->database();
        $this->load->library('form_validation');
        //load the login model
        $this->load->model('Login_model');
    }

    public function index() {

        $this->session->set_userdata('Inactivo');
        //get the posted values
        $username = $this->input->post("txt_username");
        $password = $this->input->post("txt_password");
        //print_r($username);die;
        //set validations
        $this->form_validation->set_rules("txt_username", "Username", "trim|required");
        $this->form_validation->set_rules("txt_password", "Password", "trim|required");

        if ($this->form_validation->run() == FALSE) {
            //validation fails
            //
            $this->load->view('Login_view');
        } else {
            //validation succeeds
            if ($this->input->post('btn_login') == "Ingresar") {

                //check if username and password is correct
                $usr_result = $this->Login_model->get_user($username, $password);
                //print_r($usr_result['roles_id_roles']);die;
                if ($usr_result > 0) { //active user record is present
                    //set the session variables
                    $sessiondata = array(
                        'username' => $username,
                        'loginuser' => TRUE,
                        'password' => $password
                    );
                    
                    $this->session->set_userdata($usr_result);
                    
                    $this->load->view("Dashboard/Dashboard");
                } else {
                    $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Datos Invalidos!</div>');
                    redirect('Login');
                }
            } else {
                //print_r($password); die;
                redirect('Login');
            }
        }
    }

    function logout() {
        $this->session->sess_destroy();

        redirect('Login');
    }

}
