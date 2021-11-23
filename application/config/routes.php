<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "Login";
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;

//Rutas Noticias

$route['tip']['get'] = 'tips/tips';
$route['tip/(:num)']['get'] = 'tips/find/$1';
$route['tip']['post'] = 'tips/index';
$route['tip/(:num)']['put'] = 'tips/index/$1';
$route['notitipias/(:num)']['delete'] = 'tips/index/$1';

//Rutas Tips

$route['noticias']['get'] = 'noticias/noticias';
$route['noticias/(:num)']['get'] = 'noticias/find/$1';
$route['noticias']['post'] = 'noticias/index';
$route['noticias/(:num)']['put'] = 'noticias/index/$1';
$route['noticias/(:num)']['delete'] = 'noticias/index/$1';


//Rutas Empresa

$route['empresa']['get'] = 'empresa/empresa';
$route['empresa/(:num)']['get'] = 'empresa/find/$1';
$route['empresa']['post'] = 'empresa/index';
$route['empresa']['put'] = 'empresa/index/$1';
$route['empresa/(:num)']['delete'] = 'empresa/index/$1';


//Rutas Usuario

$route['usuarios']['get'] = 'usuarios/usuarios';
$route['usuarios/(:num)']['get'] = 'usuarios/find/$1';
$route['usuarios']['post'] = 'usuarios/index';
$route['usuarios/(:num)']['put'] = 'usuarios/index/$1';
$route['usuarios/(:num)']['delete'] = 'usuarios/index/$1';


//Rutas Planes

$route['planes']['get'] = 'planes/planes';
$route['planes/(:num)']['get'] = 'planes/find/$id';
$route['planes']['post'] = 'planes/index';
$route['planes/(:num)']['put'] = 'planes/index/$id';
$route['planes/(:num)']['delete'] = 'planes/index/$id';


// Rutas mensaje familiar

$route['mensaje']['get'] = 'mensaje/index';
$route['mensaje/(:char)']['get'] = 'mensaje/find/$v';
$route['mensaje']['post'] = 'mensaje/index';
$route['mensaje/(:num)']['put'] = 'mensaje/index/$1';
$route['mensaje/(:num)']['delete'] = 'mensaje/index/$1';

// Ruta para subir archivos

$route['upload']['post'] = 'upload/index';

// Rutas sos

$route['sos']['get'] = 'sos/index';
$route['sos/(:char)']['get'] = 'sos/find/$v';
$route['sos']['post'] = 'sos/index';
$route['sos/(:num)']['put'] = 'sos/index/$1';
$route['sos/(:num)']['delete'] = 'sos/index/$1';
$route['sos/types']['get'] = 'sos/types';

// Rutas cultura naval

$route['cultura']['get'] = 'cultura/index';
$route['cultura/(:string)']['get'] = 'cultura/find/$l';
$route['cultura']['post'] = 'cultura/index';
$route['cultura/(:num)']['put'] = 'cultura/index/$1';
$route['cultura/(:num)']['delete'] = 'cultura/index/$1';

// Rutas usuarios

$route['usuarios']['get'] = 'usuarios/index';
$route['usuarios/(:string)']['get'] = 'usuarios/find/$l';
$route['usuarios']['post'] = 'usuarios/index';
$route['usuarios/(:num)']['put'] = 'usuarios/index/$1';
$route['usuarios/(:num)']['delete'] = 'usuarios/index/$1';

//Rutas login

$route['loginserv']['get'] = 'loginserv/index';
$route['loginserv/(:string)']['get'] = 'loginserv/find/$username';
$route['loginserv/(:char)']['get'] = 'loginserv/info/$id';
$route['loginserv']['post'] = 'loginserv/index';
$route['loginserv/(:num)']['put'] = 'loginserv/index/$1';
$route['loginserv/(:num)']['delete'] = 'loginserv/index/$1';


//$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
//$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8
/* End of file routes.php */
/* Location: ./application/config/routes.php */