<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
//$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

//We get a performance increase by specifying the default
//route since we don't have to scan directories.


$routes->get('/', 'Home::index');
$routes->get('principal', 'Home::index');
$routes->get('quienes_somos', 'Home::quienes_somos');
$routes->get('acerca_de', 'Home::acerca_de');
$routes->get('registro', 'Home::registro');
$routes->get('login', 'Home::login');
$routes->get('elim', 'Home::elim');
$routes->get('actuali', 'Home::actuali');




$routes->get('/add','Home::add');
$routes->get('/listado', 'Home::listado');
$routes->get('/listado1', 'Home::listado1');

$routes->post('/edit','Home::update');

$routes->get('carrito', 'Home::carrito');
$routes->get('carrito2', 'Home::carrito2');
$routes->get('carrito3', 'Home::carrito3');
$routes->get('carrito4', 'Home::carrito4');
$routes->get('carrito_cliente', 'Home::carrito_cliente');
$routes->post('/edit','Home::edit');
$routes->get('/edit/(:num)', 'Home::edit/$1');
$routes->get('/delete','Home::delete');
$routes->get('/delete/(:num)','Home::delete/$1');


/*rutas dek Registro de Usuarios*/
$routes->get('/registro','usuario_controller::create');
$routes->post('/enviar-form','usuario_controller::formValidation');
$routes->put('/edit','Home::update');


/*
/*rutas del login*/
$routes->get('/login', 'login_controller');
$routes->post('/enviarlogin', 'login_controller::auth');
$routes->get('/panel', 'Panel_controller::index',['filter' => 'auth']);
$routes->get('/logout', 'login_controller::logout');
$routes->post('/Home/store','Home::add');



//$routes->get('/updateDatos','Home::updateDatos');
//$routes->post('/update/(:num)', 'Home::update/$1');
//$routes->get('/edit', 'Home:edit');
#$routes->get('/listado', 'inicio');
#$routes->get('/edit', 'inicio');




/*

 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
