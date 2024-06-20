<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function index(){
        $trabajadores = DB::select("SELECT Trabajadores.ID_trabajador, Trabajadores.Cedula, Trabajadores.Nombre, 
                                    Expedicion.Lugar AS LugarExpedicion, 
                                    Cargo.Cargo AS Cargo,
                                    Trabajadores.ID_coordinacion,
                                    Trabajadores.ID_expedicion,
                                    Trabajadores.Correo,
                                    Trabajadores.ID_ubicacion,
                                    Trabajadores.Contraseña,
                                    Trabajadores.ID_cargo,
                                    Coordinadores.Nombre AS NombreCoordinador, 
                                    Ubicacion.Ubicacion AS Ubicacion,
                                    Trabajadores.Telefono
                                    FROM Trabajadores
                                    INNER JOIN Expedicion ON Trabajadores.ID_expedicion = Expedicion.ID_expedicion
                                    INNER JOIN Cargo ON Trabajadores.ID_cargo = Cargo.ID_cargo
                                    INNER JOIN Coordinadores ON Trabajadores.ID_coordinacion = Coordinadores.ID_coordinador
                                    INNER JOIN Ubicacion ON Trabajadores.ID_ubicacion = Ubicacion.ID_ubicacion
                                    ORDER BY Trabajadores.ID_trabajador DESC");
    
        $equipos = DB::select("SELECT Equipos.ID_equipo,Equipos.Estado,Equipos.Codigo,Equipos.Modelo,Equipos.Num_serie,
                                Equipos.Id_producto,Equipos.Procesador,Equipos.Ram,Equipos.Disco,Equipos.GPU_APU,Equipos.ID_licencia,
                                Equipos.Sistema_operativo,Equipos.Display,Equipos.Anydesk,Equipos.Clave_equipo,Equipos.ID_trabajador,
                                Equipos.ID_oficina,Equipos.ID_direccion,Equipos.ID_ubicacion,
                                Tipo.Modalidad AS Tipo,
                                Marca.Nombre AS Marca,
                                Licencia.Licencia AS Tipo_licencia,
                                Ubicacion.Ubicacion AS Ubicacion,
                                Oficinas.Oficina AS Oficina,
                                Direccion.Direccion AS Direccion,
                                Trabajadores.Nombre AS Nombre_trabajador
                                FROM Equipos
                                LEFT JOIN Tipo ON Equipos.ID_tipo = Tipo.ID_tipo
                                LEFT JOIN Marca ON Equipos.ID_marca = Marca.ID_marca
                                LEFT JOIN Licencia ON Equipos.ID_licencia = Licencia.ID_licencia
                                LEFT JOIN Ubicacion ON Equipos.ID_ubicacion = Ubicacion.ID_ubicacion
                                LEFT JOIN Oficinas ON Equipos.ID_oficina = Oficinas.ID_oficina
                                LEFT JOIN Direccion ON Equipos.ID_direccion = Direccion.ID_direccion
                                LEFT JOIN Trabajadores ON Equipos.ID_trabajador = Trabajadores.ID_trabajador
                                ORDER BY Equipos.ID_equipo DESC");
    
        $historico = DB::select("SELECT Historico.ID_historico, 
                                Historico.Historial_asignaciones, 
                                Historico.Procesos_a_ejecutar, 
                                Historico.Anotaciones, 
                                Historico.ID_equipo,
                                Equipos.Codigo AS Codigo

                                FROM Historico
                                LEFT JOIN Equipos ON Historico.ID_equipo = Equipos.ID_equipo
                                ORDER BY Historico.ID_historico DESC");

    
        $coordinador = DB::select("SELECT * FROM Coordinadores");
    
        $expedicion = DB::select("SELECT * FROM Expedicion ORDER BY ID_expedicion DESC");
    
        $cargo = DB::select("SELECT * FROM Cargo ORDER BY ID_cargo ASC");
    
        $oficina = DB::select("SELECT * FROM Oficinas ORDER BY ID_oficina ASC");
    
        $licencia = DB::select("SELECT * FROM Licencia ORDER BY ID_licencia ASC");
        
        $direccion = DB::select("SELECT * FROM Direccion ORDER BY ID_direccion ASC");
    
        $ubicacion = DB::select("SELECT * FROM Ubicacion ORDER BY ID_ubicacion ASC");

        return view('search')->with(compact('trabajadores', 'equipos', 'historico','coordinador','expedicion','cargo','oficina','licencia','direccion','ubicacion'));
    }

    //Funciones para buscar registros
    
        //función para buscar registros en la tabla trabajadores en la base de datos

        public function buscar(Request $request){
            // Obtener el texto de búsqueda desde la solicitud
            $texto = trim($request->get('texto'));
            
            // Consulta a la tabla de trabajadores

            $trabajadores = DB::select("SELECT Trabajadores.ID_trabajador, Trabajadores.Cedula, Trabajadores.Nombre, 
                                        Expedicion.Lugar AS LugarExpedicion, 
                                        Cargo.Cargo AS Cargo,
                                        Trabajadores.Correo,
                                        Trabajadores.ID_expedicion,
                                        Trabajadores.Contraseña,
                                        Trabajadores.ID_cargo,
                                        Trabajadores.ID_coordinacion,
                                        Trabajadores.ID_ubicacion,
                                        Coordinadores.Nombre AS NombreCoordinador, 
                                        Ubicacion.Ubicacion AS Ubicacion,
                                        Trabajadores.Telefono
                                        FROM Trabajadores
                                        INNER JOIN Expedicion ON Trabajadores.ID_expedicion = Expedicion.ID_expedicion
                                        INNER JOIN Cargo ON Trabajadores.ID_cargo = Cargo.ID_cargo
                                        INNER JOIN Coordinadores ON Trabajadores.ID_coordinacion = Coordinadores.ID_coordinador
                                        INNER JOIN Ubicacion ON Trabajadores.ID_ubicacion = Ubicacion.ID_ubicacion
                                        WHERE Trabajadores.ID_trabajador LIKE ? OR
                                            Trabajadores.Cedula LIKE ? OR
                                            Trabajadores.Nombre LIKE ?
                                        ORDER BY Trabajadores.ID_trabajador DESC", 
                                        ['%'.$texto.'%', '%'.$texto.'%', '%'.$texto.'%']);

            //Consulta a la tabla de equipos

            $equipos = DB::select("SELECT Equipos.ID_equipo,Equipos.Estado,Equipos.Codigo,Equipos.Modelo,Equipos.Num_serie,
                                        Equipos.Id_producto,Equipos.Procesador,Equipos.Ram,Equipos.Disco,Equipos.GPU_APU,Equipos.ID_licencia,
                                        Equipos.Sistema_operativo,Equipos.Display,Equipos.Anydesk,Equipos.Clave_equipo,Equipos.ID_trabajador,
                                        Equipos.ID_oficina,Equipos.ID_direccion,Equipos.ID_ubicacion,
                                        Tipo.Modalidad AS Tipo,
                                        Marca.Nombre AS Marca,
                                        Licencia.Licencia AS Tipo_licencia,
                                        Ubicacion.Ubicacion AS Ubicacion,
                                        Oficinas.Oficina AS Oficina,
                                        Direccion.Direccion AS Direccion,
                                        Trabajadores.Nombre AS Nombre_trabajador
                                        FROM Equipos
                                        LEFT JOIN Tipo ON Equipos.ID_tipo = Tipo.ID_tipo
                                        LEFT JOIN Marca ON Equipos.ID_marca = Marca.ID_marca
                                        LEFT JOIN Licencia ON Equipos.ID_licencia = Licencia.ID_licencia
                                        LEFT JOIN Ubicacion ON Equipos.ID_ubicacion = Ubicacion.ID_ubicacion
                                        LEFT JOIN Oficinas ON Equipos.ID_oficina = Oficinas.ID_oficina
                                        LEFT JOIN Direccion ON Equipos.ID_direccion = Direccion.ID_direccion
                                        LEFT JOIN Trabajadores ON Equipos.ID_trabajador = Trabajadores.ID_trabajador
                                        ORDER BY Equipos.ID_equipo DESC");
            
            $historico = DB::select("SELECT Historico.ID_historico, 
                                Historico.Historial_asignaciones, 
                                Historico.Procesos_a_ejecutar, 
                                Historico.Anotaciones, 
                                Historico.ID_equipo,
                                Equipos.Codigo AS Codigo

                                FROM Historico
                                LEFT JOIN Equipos ON Historico.ID_equipo = Equipos.ID_equipo
                                ORDER BY Historico.ID_historico DESC");

            // Obtener datos de las demás tablas

            $expedicion = DB::select("SELECT * FROM Expedicion ORDER BY ID_expedicion ASC");

            $coordinador = DB::select("SELECT * FROM Coordinadores");
            
            $cargo = DB::select("SELECT * FROM Cargo ORDER BY ID_cargo ASC");
        
            $oficina = DB::select("SELECT * FROM Oficinas ORDER BY ID_oficina ASC");
        
            $licencia = DB::select("SELECT * FROM Licencia ORDER BY ID_licencia ASC");
            
            $direccion = DB::select("SELECT * FROM Direccion ORDER BY ID_direccion ASC");
        
            $ubicacion = DB::select("SELECT * FROM Ubicacion ORDER BY ID_ubicacion ASC");
        
            // Retornar la vista con los datos de la búsqueda y el texto de búsqueda
            return view('search', compact('trabajadores','coordinador','expedicion','cargo','oficina','licencia','direccion','ubicacion','equipos','historico'));        
        }
        
        // función para buscar registros en la tabla equipos en la base de datos:

        public function buscar2(Request $request){
            // Obtener el texto de búsqueda desde la solicitud
            $texto = trim($request->get('texto'));
            
            // Realizar la consulta a la base de datos utilizando la consulta SQL

            $equipos = DB::select("SELECT Equipos.ID_equipo, Equipos.Estado, Equipos.Codigo, Equipos.ID_tipo, Equipos.ID_marca, Equipos.Modelo, Equipos.Num_serie,
                                Equipos.Id_producto, Equipos.Procesador, Equipos.Ram, Equipos.Disco, Equipos.GPU_APU, Equipos.ID_licencia, Equipos.Sistema_operativo,
                                Equipos.Display, Equipos.Anydesk, Equipos.ID_ubicacion, Equipos.ID_oficina, Equipos.ID_direccion, Equipos.Clave_equipo, Equipos.ID_trabajador,
                                Tipo.Modalidad AS Tipo,
                                Marca.Nombre AS Marca,
                                Licencia.Licencia AS Tipo_licencia,
                                Ubicacion.Ubicacion AS Ubicacion,
                                Oficinas.Oficina AS Oficina,
                                Direccion.Direccion AS Direccion,
                                Trabajadores.Nombre AS Nombre_trabajador
                                FROM Equipos
                                LEFT JOIN Tipo ON Equipos.ID_tipo = Tipo.ID_tipo
                                LEFT JOIN Marca ON Equipos.ID_marca = Marca.ID_marca
                                LEFT JOIN Licencia ON Equipos.ID_licencia = Licencia.ID_licencia
                                LEFT JOIN Ubicacion ON Equipos.ID_ubicacion = Ubicacion.ID_ubicacion
                                LEFT JOIN Oficinas ON Equipos.ID_oficina = Oficinas.ID_oficina
                                LEFT JOIN Direccion ON Equipos.ID_direccion = Direccion.ID_direccion
                                LEFT JOIN Trabajadores ON Equipos.ID_trabajador = Trabajadores.ID_trabajador
                                WHERE Equipos.ID_equipo LIKE ? OR
                                    Equipos.Codigo LIKE ?
                                ORDER BY Equipos.ID_equipo ASC", ['%'.$texto.'%', '%'.$texto.'%']);


            $trabajadores = DB::select("SELECT Trabajadores.ID_trabajador, Trabajadores.Cedula, Trabajadores.Nombre, 
                                Expedicion.Lugar AS LugarExpedicion, 
                                Cargo.Cargo AS Cargo,
                                Trabajadores.ID_coordinacion,
                                Trabajadores.ID_expedicion,
                                Trabajadores.Correo,
                                Trabajadores.ID_ubicacion,
                                Trabajadores.Contraseña,
                                Trabajadores.ID_cargo,
                                Coordinadores.Nombre AS NombreCoordinador, 
                                Ubicacion.Ubicacion AS Ubicacion,
                                Trabajadores.Telefono
                                FROM Trabajadores
                                INNER JOIN Expedicion ON Trabajadores.ID_expedicion = Expedicion.ID_expedicion
                                INNER JOIN Cargo ON Trabajadores.ID_cargo = Cargo.ID_cargo
                                INNER JOIN Coordinadores ON Trabajadores.ID_coordinacion = Coordinadores.ID_coordinador
                                INNER JOIN Ubicacion ON Trabajadores.ID_ubicacion = Ubicacion.ID_ubicacion
                                ORDER BY Trabajadores.ID_trabajador DESC");

            $historico = DB::select("SELECT Historico.ID_historico, 
                                Historico.Historial_asignaciones, 
                                Historico.Procesos_a_ejecutar, 
                                Historico.Anotaciones, 
                                Historico.ID_equipo,
                                Equipos.Codigo AS Codigo

                                FROM Historico
                                LEFT JOIN Equipos ON Historico.ID_equipo = Equipos.ID_equipo
                                ORDER BY Historico.ID_historico DESC");

            // Obtener los demás datos de las tablas 

            $expedicion = DB::select("SELECT * FROM Expedicion ORDER BY ID_expedicion DESC");
            
            $coordinador = DB::select("SELECT * FROM Coordinadores");

            $cargo = DB::select("SELECT * FROM Cargo ORDER BY ID_cargo ASC");

            $oficina = DB::select("SELECT * FROM Oficinas ORDER BY ID_oficina ASC");

            $licencia = DB::select("SELECT * FROM Licencia ORDER BY ID_licencia ASC");

            $direccion = DB::select("SELECT * FROM Direccion ORDER BY ID_direccion ASC");

            $ubicacion = DB::select("SELECT * FROM Ubicacion ORDER BY ID_ubicacion ASC");
            
            // Retornar la vista con los datos de la búsqueda y las listas necesarias
            return view('search', compact('equipos', 'expedicion', 'historico', 'coordinador', 'cargo', 'oficina', 'licencia', 'direccion', 'ubicacion','trabajadores'));        
        }
        
        //función para buscar registros en la tabla de historico en la base de datos:

        public function buscar3(Request $request){
            // Obtener el texto de búsqueda desde la solicitud
            $texto = trim($request->get('texto'));
            
            // Realizar la consulta a la base de datos utilizando la consulta SQL

            $historico = DB::select("SELECT Historico.ID_historico, 
                            Historico.Historial_asignaciones, 
                            Historico.Procesos_a_ejecutar, 
                            Historico.Anotaciones, 
                            Historico.ID_equipo,
                            Equipos.Codigo AS Codigo
                            FROM Historico
                            LEFT JOIN Equipos ON Historico.ID_equipo = Equipos.ID_equipo
                            WHERE Historico.ID_historico LIKE ? OR
                              Historico.ID_equipo LIKE ? OR
                              Historico.Historial_asignaciones LIKE ? OR
                              Historico.Procesos_a_ejecutar LIKE ? OR
                              Historico.Anotaciones LIKE ? OR
                              Equipos.Codigo LIKE ?
                            ORDER BY Historico.ID_historico DESC", 
                            ['%'.$texto.'%', '%'.$texto.'%', '%'.$texto.'%', '%'.$texto.'%', '%'.$texto.'%', '%'.$texto.'%']);

            $trabajadores = DB::select("SELECT Trabajadores.ID_trabajador, Trabajadores.Cedula, Trabajadores.Nombre, 
                                    Expedicion.Lugar AS LugarExpedicion, 
                                    Cargo.Cargo AS Cargo,
                                    Trabajadores.ID_coordinacion,
                                    Trabajadores.ID_expedicion,
                                    Trabajadores.Correo,
                                    Trabajadores.ID_ubicacion,
                                    Trabajadores.Contraseña,
                                    Trabajadores.ID_cargo,
                                    Coordinadores.Nombre AS NombreCoordinador, 
                                    Ubicacion.Ubicacion AS Ubicacion,
                                    Trabajadores.Telefono
                                    FROM Trabajadores
                                    INNER JOIN Expedicion ON Trabajadores.ID_expedicion = Expedicion.ID_expedicion
                                    INNER JOIN Cargo ON Trabajadores.ID_cargo = Cargo.ID_cargo
                                    INNER JOIN Coordinadores ON Trabajadores.ID_coordinacion = Coordinadores.ID_coordinador
                                    INNER JOIN Ubicacion ON Trabajadores.ID_ubicacion = Ubicacion.ID_ubicacion
                                    ORDER BY Trabajadores.ID_trabajador DESC");

            $equipos = DB::select("SELECT Equipos.ID_equipo,Equipos.Estado,Equipos.Codigo,Equipos.Modelo,Equipos.Num_serie,
                                    Equipos.Id_producto,Equipos.Procesador,Equipos.Ram,Equipos.Disco,Equipos.GPU_APU,Equipos.ID_licencia,
                                    Equipos.Sistema_operativo,Equipos.Display,Equipos.Anydesk,Equipos.Clave_equipo,Equipos.ID_trabajador,
                                    Equipos.ID_oficina,Equipos.ID_direccion,Equipos.ID_ubicacion,
                                    Tipo.Modalidad AS Tipo,
                                    Marca.Nombre AS Marca,
                                    Licencia.Licencia AS Tipo_licencia,
                                    Ubicacion.Ubicacion AS Ubicacion,
                                    Oficinas.Oficina AS Oficina,
                                    Direccion.Direccion AS Direccion,
                                    Trabajadores.Nombre AS Nombre_trabajador
                                    FROM Equipos
                                    LEFT JOIN Tipo ON Equipos.ID_tipo = Tipo.ID_tipo
                                    LEFT JOIN Marca ON Equipos.ID_marca = Marca.ID_marca
                                    LEFT JOIN Licencia ON Equipos.ID_licencia = Licencia.ID_licencia
                                    LEFT JOIN Ubicacion ON Equipos.ID_ubicacion = Ubicacion.ID_ubicacion
                                    LEFT JOIN Oficinas ON Equipos.ID_oficina = Oficinas.ID_oficina
                                    LEFT JOIN Direccion ON Equipos.ID_direccion = Direccion.ID_direccion
                                    LEFT JOIN Trabajadores ON Equipos.ID_trabajador = Trabajadores.ID_trabajador
                                    ORDER BY Equipos.ID_equipo DESC");
        
            // Obtener las demás listas necesarias

            $coordinador = DB::select("SELECT * FROM Coordinadores");

            $cargo = DB::select("SELECT * FROM Cargo ORDER BY ID_cargo ASC");

            $oficina = DB::select("SELECT * FROM Oficinas ORDER BY ID_oficina ASC");

            $licencia = DB::select("SELECT * FROM Licencia ORDER BY ID_licencia ASC");

            $direccion = DB::select("SELECT * FROM Direccion ORDER BY ID_direccion ASC");

            $ubicacion = DB::select("SELECT * FROM Ubicacion ORDER BY ID_ubicacion ASC");
            
            $expedicion = DB::select("SELECT * FROM Expedicion ORDER BY ID_expedicion ASC");

            // Retornar la vista "Welcome" con los datos de la búsqueda y las listas necesarias
            return view('search', compact('historico', 'coordinador', 'cargo', 'oficina', 'licencia', 'direccion', 'ubicacion','expedicion','trabajadores','equipos'));        
        }
        
        //función para poder consultar a nivel general todas las tablas principales

        public function buscar4(Request $request){
            // Obtener el texto de búsqueda desde la solicitud
            $texto = trim($request->get('texto'));
            
            // Consulta a la tabla de trabajadores

            $trabajadores = DB::select("SELECT Trabajadores.*, 
                                            Expedicion.Lugar AS LugarExpedicion, 
                                            Cargo.Cargo AS Cargo,
                                            Coordinadores.Nombre AS NombreCoordinador, 
                                            Ubicacion.Ubicacion AS Ubicacion
                                        FROM Trabajadores
                                        INNER JOIN Expedicion ON Trabajadores.ID_expedicion = Expedicion.ID_expedicion
                                        INNER JOIN Cargo ON Trabajadores.ID_cargo = Cargo.ID_cargo
                                        INNER JOIN Coordinadores ON Trabajadores.ID_coordinacion = Coordinadores.ID_coordinador
                                        INNER JOIN Ubicacion ON Trabajadores.ID_ubicacion = Ubicacion.ID_ubicacion
                                        WHERE Trabajadores.Nombre LIKE ?
                                        ORDER BY Trabajadores.ID_trabajador DESC", 
                                        ['%'.$texto.'%']);
            
            // Inicializar $equipos y $historico como arreglos vacíos
            $equipos = [];
            $historico = [];
            
            // Verificar si se encontraron trabajadores en la búsqueda
            if (!empty($trabajadores)) {
                // Obtener el ID del primer trabajador encontrado
                $idTrabajador = $trabajadores[0]->ID_trabajador;
        
                // Consulta a la tabla de equipos filtrando por el ID del trabajador
                $equipos = DB::select("SELECT Equipos.*, 
                            Tipo.Modalidad AS Tipo,
                            Marca.Nombre AS Marca,
                            Licencia.Licencia AS Tipo_licencia,
                            Ubicacion.Ubicacion AS Ubicacion,
                            Oficinas.Oficina AS Oficina,
                            Direccion.Direccion AS Direccion,
                            Trabajadores.Nombre AS Nombre_trabajador
                        FROM Equipos
                        LEFT JOIN Tipo ON Equipos.ID_tipo = Tipo.ID_tipo
                        LEFT JOIN Marca ON Equipos.ID_marca = Marca.ID_marca
                        LEFT JOIN Licencia ON Equipos.ID_licencia = Licencia.ID_licencia
                        LEFT JOIN Ubicacion ON Equipos.ID_ubicacion = Ubicacion.ID_ubicacion
                        LEFT JOIN Oficinas ON Equipos.ID_oficina = Oficinas.ID_oficina
                        LEFT JOIN Direccion ON Equipos.ID_direccion = Direccion.ID_direccion
                        LEFT JOIN Trabajadores ON Equipos.ID_trabajador = Trabajadores.ID_trabajador
                        WHERE Equipos.ID_trabajador = ?
                        ORDER BY Equipos.ID_equipo DESC", 
                        [$idTrabajador]);
        
                // Verificar si se encontraron equipos antes de consultar el historial
                
                if (!empty($equipos)) {
                    // Consulta a la tabla de historial filtrando por el ID del equipo
                    $historico = DB::select("SELECT Historico.ID_historico, 
                                                    Historico.Historial_asignaciones, 
                                                    Historico.Procesos_a_ejecutar, 
                                                    Historico.Anotaciones, 
                                                    Historico.ID_equipo,
                                                    Equipos.Codigo AS Codigo
                                             FROM Historico
                                             LEFT JOIN Equipos ON Historico.ID_equipo = Equipos.ID_equipo
                                             WHERE Historico.ID_equipo = ? 
                                             ORDER BY Historico.ID_historico DESC", 
                                             [$equipos[0]->ID_equipo]);
                }                
            }
        
            // Consulta a las demás tablas
            $expedicion = DB::select("SELECT * FROM Expedicion ORDER BY ID_expedicion ASC");

            $coordinador = DB::select("SELECT * FROM Coordinadores");

            $cargo = DB::select("SELECT * FROM Cargo ORDER BY ID_cargo ASC");

            $oficina = DB::select("SELECT * FROM Oficinas ORDER BY ID_oficina ASC");

            $licencia = DB::select("SELECT * FROM Licencia ORDER BY ID_licencia ASC");

            $direccion = DB::select("SELECT * FROM Direccion ORDER BY ID_direccion ASC");

            $ubicacion = DB::select("SELECT * FROM Ubicacion ORDER BY ID_ubicacion ASC");
        
            // Retornar la vista con los datos de la búsqueda y los datos originales
            return view('search', compact('historico', 'coordinador', 'cargo', 'oficina', 'licencia', 'direccion', 'ubicacion', 'expedicion', 'trabajadores', 'equipos'));
        } 



    // Funciones para actualizar un registro en las diferentes tablas de la BDD:

        //función para actualizar un registro de la tabla trabajadores en la base de datos

        public function update(Request $request){
            try {
                // Realizar la actualización del registro en la tabla "trabajadores" con los datos recibidos
                $sql = DB::update("UPDATE Trabajadores SET Nombre=?, Cedula=?, ID_expedicion=?, Correo=?, ID_ubicacion=?, ID_cargo=?, Telefono=?, ID_coordinacion=?, Contraseña=?  WHERE ID_trabajador=?",[
                    $request->nombre,
                    $request->cedula,
                    $request->ID_expedicion,
                    $request->correo,
                    $request->ubicacion,
                    $request->cargo,
                    $request->telefono,
                    $request->coordinador_id,
                    $request->contraseña,
                    $request->id,
                ]);
        
                // Verificar si la actualización fue exitosa y redirigir con un mensaje apropiado
                if ($sql) {
                    return back()->with("Correcto", "Trabajador correctamente modificado");
                } else {
                    return back()->with("Incorrecto", "Error al modificar");
                }
            } catch (\Throwable $th) {
                // Capturar cualquier excepción ocurrida durante la actualización
                return back()->with("Incorrecto", "Error al modificar: " . $th->getMessage());
            }
        }
    
        // función para actualizar un registro de la tabla equipos en la base de datos:

        public function update2(Request $request){
            try {
                // Realizar la actualización del registro en la tabla "equipos" con los datos recibidos
                $sql = DB::update("UPDATE Equipos SET Estado=?, Codigo=?, Ram=?, Disco=?, Anydesk=?, Sistema_operativo=?, ID_licencia=?, ID_ubicacion=?, ID_oficina=?, ID_direccion=?, Clave_equipo=?, ID_trabajador=? WHERE ID_equipo=?",[
                    $request->estado,
                    $request->codigo,
                    $request->ram,
                    $request->disco_duro,
                    $request->anydesk,
                    $request->tipo_sistema,
                    $request->licencia,
                    $request->ubicacion,
                    $request->oficina,
                    $request->direccion,
                    $request->clave_equipo,
                    $request->trabajador_id,
                    $request->id,
                ]);
        
                // Verificar si la actualización fue exitosa y redirigir con un mensaje apropiado
                if ($sql) {
                    return back()->with("Correcto", "Equipo correctamente modificado");
                } else {
                    return back()->with("Incorrecto", "Error al modificar");
                }
            } catch (\Throwable $th) {
                // Capturar cualquier excepción ocurrida durante la actualización
                return back()->with("Incorrecto", "Error al modificar: " . $th->getMessage());
            }
        }
        
        //función para actualizar un registro de la tabla de historico en la base de datos:
        
        public function update3(Request $request){
            try {
                // Realizar la actualización del registro en la tabla "Historico" con los datos recibidos
                $sql = DB::update("UPDATE Historico SET Historial_asignaciones=?, Procesos_a_ejecutar=?, Anotaciones=? 
                    WHERE ID_historico=?", [
                        $request->historial_asignacion,
                        $request->procesos_ejecutar,
                        $request->anotaciones,
                        $request->id,
                ]);
                
                // Verificar si la actualización fue exitosa y redirigir con un mensaje apropiado
                if ($sql) {
                    return back()->with("Correcto", "Historial correctamente modificado");
                } else {
                    return back()->with("Incorrecto", "Error al modificar el historial");
                }
            } catch (\Throwable $th) {
                // Capturar cualquier excepción ocurrida durante la actualización
                return back()->with("Incorrecto", "Error al modificar el historial: " . $th->getMessage());
            }
        }

}