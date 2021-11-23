<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <!--link the bootstrap css file-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

        <style type="text/css">
            .colbox {
                margin-left: 0px;
                margin-right: 0px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid" style="background-color: #333333;color: white;border:solid 0.5px white;">
            <div class="row">
                <div class="col-lg-12 col-sm-12" style="text-align: center;">
                    <h1>MODULO ADMINISTRADOR</h1>
                </div>
            </div>
        </div>
        <div class="clearfix"><br/><br/></div>
        <div class="container" style="width: 40%">
            <div class="row">
                <div class="col-lg-12 col-sm-12 well">
                    <?php
                    $attributes = array("class" => "form-horizontal", "id" => "loginform", "name" => "loginform");
                    echo form_open("Login/index", $attributes);
                    ?>
                    <fieldset>
                        <legend style="text-align: center;background-color: #333333;color: white;border:solid 0.5px white;">INGRESO</legend>
                        <div class="form-group">
                            <div class="col-lg-12" style="text-align: center;">
                                <img src="assets/uploads/imgProyect/Escudo Armada negro.png" class="img-fluid" style="width: 30%;height:20%;"/>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon" for="txt_username"><i class="glyphicon glyphicon-user" aria-hidden="tsrue"></i></span>
                            <input type="text" class="form-control" id="txt_username" name="txt_username" placeholder="Email" value="<?php echo set_value('txt_username'); ?>" />
                            <span class="text-danger"><?php echo form_error('txt_username'); ?></span>
                        </div>
                        <div class="clearfix"><br/></div>
                        <div class="input-group">
                            <span class="input-group-addon" for="txt_password"><i class="glyphicon glyphicon-lock" aria-hidden="tsrue"></i></span>
                            <input type="password" class="form-control" id="txt_password" name="txt_password" placeholder="Contraseña"  value="<?php echo set_value('txt_password'); ?>" />
                            <span class="text-danger"><?php echo form_error('txt_password'); ?></span>
                        </div>
                        <div class="clearfix"><br/></div>
                        <div class="form-group">
                            <div class="col-lg-12 col-sm-12 text-center">
                                <input id="btn_login" name="btn_login" type="submit" class="btn btn-default" value="Ingresar" style="background-color: #333333;color: white;border:solid 0.5px white;"/>
                                <input id="btn_cancel" name="btn_cancel" type="reset" class="btn btn-default" value="Cancelar" style="background-color: #333333;color: white;border:solid 0.5px white;"/>
                            </div>
                        </div>
                    </fieldset>
                    <?php echo form_close(); ?>
                    <?php echo $this->session->flashdata('msg'); ?>
                </div>
            </div>
        </div>

        <!--load jQuery library-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!--load bootstrap.js-->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>