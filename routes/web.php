<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//ruta para crear nuevos registros en la tabla de trabajadores:
    Route::post('/registrar-producto-trabajador', [HomeController::class, "create"])->name("example-app.create");

    //ruta para crear nuevos registros en la BDD en la tabla de equipos:
    Route::post('/registrar-producto-equipo', [HomeController::class, "create2"])->name("example-app.create2");

    //ruta para crear nuevos registros en la BDD en la tabla de historico:
    Route::post('/registrar-producto-historico', [HomeController::class, "create3"])->name("example-app.create3");

//Rutas para poder modificar registros en las tablas principales de la base de datos

    //ruta para modificar registros de la BDD en la tabla trabajadores:
        
        Route::post('/modificar-producto-trabajador', [HomeController::class, "update"])->name("example-app.update");

        //ruta para modificar registros de la BDD en la tabla en la tabla equipos: 
    
        Route::post('/modificar-producto-equipo', [HomeController::class, "update2"])->name("example-app.update2");
    
        //ruta para modificar registros de la BDD en la tabla histórico 
    
        Route::post('/modificar-producto-historico', [HomeController::class, "update3"])->name("example-app.update3");
    
    
    
    //Rutas para poder buscar registros en las tablas:
    
        //ruta para buscar registros en la tabla de trabajadores en la BDD
    
        Route::get('/buscar-trabajador', [HomeController::class, 'buscar'])->name('example-app.buscar');
    
        //ruta para buscar registros en la tabla equipos en la BDD:
    
        Route::get('/buscar-equipo', [HomeController::class, 'buscar2'])->name('example-app.buscar2');
    
        //ruta para buscar registros en la tabla historico en la BDD:
    
        Route::get('/buscar-historico', [HomeController::class, 'buscar3'])->name('example-app.buscar3');
    
        //ruta para consultar la tablas de equipos y de trabajadores
        
        Route::get('/buscar-datos', [HomeController::class, 'buscar4'])->name('example-app.buscar4');
    
    
        
    //Rutas para descargar la base de datos entera o para descargar solo una tabla de la BDD
    
        //ruta para descargar los registros de la tabla de trabajadores
    
        Route::get('/descargar-datos', [HomeController::class, 'descargarDatos'])->name('descargar.datos');
    
        //ruta para descargar los registros de la tabla de equipos
        
        Route::get('/descargar-datos2', [HomeController::class, 'descargarDatos2'])->name('descargar.datos2');
    
        //ruta para descargar los registros de la tabla de historico
    
        Route::get('/descargar-datos3', [HomeController::class, 'descargarDatos3'])->name('descargar.datos3');
    
        //ruta para descargar toda la BDD 
    
        Route::get('/descargar-datos4', [HomeController::class, 'descargarDatos4'])->name('descargar.datos4');
