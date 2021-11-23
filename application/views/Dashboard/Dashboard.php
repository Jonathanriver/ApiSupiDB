<?php 
$users = $this->session->all_userdata();

if($users['roles_id_roles']!= 2){
    echo '<script language="javascript">alert("Acceso Denegado"); location.href ="logout";</script>';
}
//print_r($users['roles_id_roles']);die;
?>
<html>
    <head>
        <title>DashBoard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <style>
            .contenedorHeader{
                text-align: center;
                background-color: rgba(37, 36, 39, 0.89);
                color:white;
                border: solid 0.5px white;
                /*height: 15%;*/
                font-size: 30px;
                vertical-align: middle;
            }
            .contenedorMenu{
                float: left;
                background-color: rgba(255, 255, 255, 0.651);
                padding:15px;
                border: solid 0.5px white;
                /*height: 100%;*/
            }
            .contenedroBotones{
                width: 100%;
                background-color: rgba(37, 36, 39, 0.89);
                border: solid 0.5px white;
                height: 30px;
                border-radius: 6px;
                vertical-align: middle;
                padding: 8px;
            }
            .opcionesMenu{
                color:white !important;
                vertical-align: middle;
                margin-top: 24px;
            }
            .bodyAdmins{
                background-color: #2479ff;
                background-image: url('../assets/uploads/imgProyect/Escogida.jpg');
                background-position: center;
                background-size: cover;
                background-attachment: fixed;
                background-repeat: no-repeat;
            }
            .textoInicial{
                font-size: 50px;
                font-family: arial;
            }
            .encabezado{
                padding-bottom: 23px;
            }
            a:hover{
                text-decoration: none;
            }
            .iframeContent{
                border: none;
                background-size: cover;
                background-color: rgba(255, 255, 255, 0.651);
                border: solid 0.5px white;
            }
        </style>
        
    </head>
    <body class="bodyAdmins">
        <div class="container-fluid encabezado">
            <div class="col-md-12 contenedorHeader">
                <div class="col-md-12">
                    <p class="textoInicial">Administrador</p>
                </div>
            </div>

        </div>
        <div class=" container-fluid">
            <div class="container-fluid col-md-3 contenedorMenu">
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdNoticias/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;NOTICIAS</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdMultimedia/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;MULTIMEDIA</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdSos/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;S.O.S</a>
                </div>
                <!--<div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="crdCategorias/administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;CATEGORIAS S.O.S</a>
                </div>-->
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdTips/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;TIP´S</a>
                </div>
                <!--<div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdEventos/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;EVENTOS</a>
                </div>-->
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdSecciones/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;SECCIÓN</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdMensajeFamilia/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;MENSAJES FAMILIARES</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdHistoria/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;CULTURA NAVAL</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdNaval/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;PERSONAJES HISTORICOS</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdNotificacion/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;NOTIFICACIONES</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdUsers/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;DATO DE USUARIOS</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdAcces/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;USUARIOS</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="/ArmadaAdmin/CrdStereo/Administracion" target="frame" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;EMISORAS ARMADA</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 contenedroBotones">
                    <a href="logout" class="opcionesMenu"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;&nbsp;CERRAR SESIÓN</a>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12" style="text-align: left;">
                    <img src="../assets/uploads/imgProyect/Escudo Armada negro.png" class="img-fluid imagenadmin"/>
                </div>

            </div>
            <div class="col-md-9 container-fluid" style="float: left;">
                <iframe width="100%" height="100%" class="iframeContent"  name="frame" ></iframe>
            </div>
        </div>
    </div>
</body>
</html>
