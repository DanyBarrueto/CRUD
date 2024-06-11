<!-- resources/views/search.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    
    <!--Mensajes para notificar si el registro se guardo o actualizo bien o si llego a fallar durante el proceso-->
    @if (session("Correcto"))
    <div class="alert alert-success fw-bold fs-5 ">{{session("Correcto")}}</div>
    @endif

    @if (session("Incorrecto"))
    <div class="alert alert-danger fw-bold fs-5">{{session("Incorrecto")}}</div>
    @endif

    <h3 class="fw-bold text-center">Consultas,Tablas y Edición</h3>

    <!--Tabla de trabajadores-->
    <div class="container mt-4">

        <div class="row">

            <div class="col-md-12">

                <h4 class="mt-3 fw-bold" >Tabla de Trabajadores</h4>

                <!--Aca se declara la parte para permitir las busquedas en la tabla de trabajadores-->
                
                <div class="row">
                    <div class="col-xl-12">
                        <form action="{{route('example-app.buscar')}}" method="GET">
                            <div class="form-row align-items-center">
                
                                <div class="col-auto my-1">
                                    <div class="btn-group">
                                        <input type="text" class="form-control" name="texto" value="Nombre o Cedula" onfocus="this.value='';">
                                        
                                        <button type="submit" class="btn btn-success fw-bold" id="boton_buscar">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>
                                        
                                        <a href="{{ route('search') }}" class="btn btn-warning fw-bold" id="boton_limpiar">
                                            <i class="fa-solid fa-brush"></i>
                                        </a>

                                    </div>
                                </div>                                
                            </div>
                        </form>
                    </div>
                </div>

                <!--Encabezado de la tabla para los datos de la BDD-->

                <div class="table-responsive overflow-auto" id="tabla_usuarios">
                    <table class="table table-light">
                        <thead class="table-success table-responsive">

                        <tr>
                            <th>#</th>
                            <th>Cédula</th>
                            <th>Expedición</th>
                            <th>Nombre</th>
                            <th>Cargo</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                            <th>Ubicación</th>
                            <th>Teléfono</th>
                            <th>Coordinador</th>
                            <th>Editar</th>
                        </tr>

                        </thead>

                        <tbody>
                            
                            <!--Conexion con BDD para permitir mostrar los datos registrados
                                en la tabla recien creada-->
                            @foreach ($trabajadores as $item)
                            <tr>
                                <td>{{$item->ID_trabajador}}</td>
                                <td>{{$item->Cedula}}</td>
                                <td>{{$item->LugarExpedicion}}</td>
                                <td>{{$item->Nombre}}</td>
                                <td>{{$item->Cargo}}</td>
                                <td>{{$item->Correo}}</td>
                                <td>{{$item->Contraseña}}</td>
                                <td>{{$item->Ubicacion}}</td>
                                <td>{{$item->Telefono}}</td>
                                <td>{{$item->NombreCoordinador}}</td>
                                <td>
                                    <a href="" data-bs-toggle="modal" data-bs-target="#modalEditarTrabajador{{$item->ID_trabajador}}" class="btn btn-warning btn-sm"><i class="fa-solid fa-pen-nib fa-beat"></i></a>
                                </td>
                            </tr>

                            <!-- Modal para modificar los datos de los registros de la BDD-->

                                <div class="modal fade" id="modalEditarTrabajador{{$item->ID_trabajador}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                    <div class="modal-dialog modal-xl modal-lg">
                                        <div class="modal-content" >

                                            <div class="modal-header " style="background-color: #f79a0e;">

                                            <h1 class="modal-title fs-3 fw-bold" id="exampleModalLabel">Modificar datos</h1>

                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body" style="background-color: #f2f2f2;">
                                                <form class="col-md-8" action="{{ route('example-app.update') }}" method="post">

                                                    <!--Para proteger contra ataques CSRF-->
                                                    @csrf

                                                    <div class="row">

                                                    <!--Desde aca se editan los datos personales del trabajador-->

                                                        <h2 class="fw-bold">
                                                            Datos personales:
                                                        </h2>

                                                        <!--campo para mostrar el ID del registro (pero este esta bloqueado para su edición)-->

                                                        <div class="col-md-1" id="bloqueado">
                                                            <label for="id" class="form-label fw-bold">ID</label>
                                                            <input type="text" id="id" name="id" class="form-control border-dark" value="{{$item->ID_trabajador}}" readonly >
                                                        </div>

                                                        <!--campo para editar la cedula-->

                                                        <div class="col-md-2">
                                                            <label for="cedula" class="form-label fw-bold">Cédula:</label>
                                                            <input type="text" id="cedula" name="cedula" class="form-control border-dark" value="{{$item->Cedula}}"/>
                                                        </div>

                                                        <!--lista desplegable para editar el sitio de expedicion-->

                                                        <div class="col-md-4">
                                                            <label for="ID_expedicion" class="form-label fw-bold">Lugar de expedición:</label>
                                                            <select name="ID_expedicion" id="ID_expedicion" class="form-select border-dark" required>
                                                                    <option value=""></option>
                                                                @foreach ($expedicion as $expedicionB)
                                                                    <option value="{{ $expedicionB->ID_expedicion }}" @if ($expedicionB->ID_expedicion == $item->ID_expedicion) selected @endif>{{ $expedicionB->Lugar }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--campo para editar el nombre -->

                                                        <div class="col-md-5">
                                                            <label for="nombre" class="form-label fw-bold">Nombre:</label>
                                                            <input type="text" id="nombre" name="nombre" class="form-control border-dark" value="{{$item->Nombre}}" pattern="[a-zA-ZáéíóúÁÉÍÓÚüÜ\s]+" title="Por favor ingresa solo letras" />
                                                        </div>

                                                        <!--campo para editar el cargo del trabajador-->
                                                        
                                                        <div class="col-md-5">
                                                            <label for="cargo" class="form-label fw-bold">Cargo asignado:</label>
                                                            <select name="cargo" id="cargo" class="form-select border-dark">
                                                                <option value=""></option>
                                                                @foreach ($cargo as $cargoB)
                                                                    <option value="{{ $cargoB->ID_cargo }}" @if ($cargoB->ID_cargo == $item->ID_cargo) selected @endif>{{ $cargoB->Cargo }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--campo para editar el coordinador -->

                                                        <div class="col-md-4">
                                                            <label for="coordinador_id" class="form-label fw-bold">Coordinador asignado:</label>
                                                            <select name="coordinador_id" id="coordinador_id" class="form-select border-dark">
                                                                    <option value=""></option>
                                                                @foreach ($coordinador as $coordinadorB)
                                                                    <option value="{{ $coordinadorB->ID_coordinador }}" @if ($coordinadorB->ID_coordinador == $item->ID_coordinacion) selected @endif>{{ $coordinadorB->Nombre }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--campo para editar la ubicacion-->

                                                        <div class="col-md-3">
                                                            <label for="ubicacion" class="form-label fw-bold">Ubicación:</label>
                                                            <select name="ubicacion" id="ubicacion" class="form-select border-dark">
                                                                <option value=""></option>
                                                                @foreach ($ubicacion as $ubicacionB)
                                                                    <option value="{{ $ubicacionB->ID_ubicacion }}" @if ($ubicacionB->ID_ubicacion == $item->ID_ubicacion) selected @endif>{{ $ubicacionB->Ubicacion }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--campo para editar la cuenta de correo electonico-->

                                                        <div class="col-md-4">
                                                            <label for="correo" class="form-label fw-bold">Correo:</label>
                                                            <input type="text" id="correo" name="correo" class="form-control border-dark" value="{{$item->Correo}}" />
                                                        </div>

                                                        <!--campo para editar la contraseña de la cuenta-->

                                                        <div class="col-md-3">
                                                            <label for="contraseña" class="form-label fw-bold">Contraseña:</label>
                                                            <input type="text" id="contraseña" name="contraseña" class="form-control border-dark" value="{{$item->Contraseña}}"  />
                                                        </div>

                                                        <!--campo para editar el telefono-->

                                                        <div class="col-md-2">
                                                            <label for="telefono" class="form-label fw-bold">Teléfono:</label>
                                                            <input type="text" id="telefono" name="telefono" class="form-control border-dark" value="{{$item->Telefono}}" />
                                                        </div>

                                                        <br><br>

                                                        <!--campo de los botones para cerrar la pestaña emergente o para poder guardar los cambios en los datos -->

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger fw-bold" data-bs-dismiss="modal" id="boton_cerrar">Cerrar</button>
                                                            <button type="submit" class="btn btn-success fw-bold" id="boton_guardar_cambios" >Guardar cambios</button>
                                                        </div>
                                                    </div>           
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        
                        </tbody>
                    </table>
                    
                    </div>

                </div>
            </div>
    </div>

    <!--Tabla de equipos-->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12">
                <h4 class="mt-3 fw-bold" >Tabla de Equipos</h4>

                <!--Aca se declara la parte para permitir las busquedas en la tabla de equipos-->
                <div class="row">
                    <div class="col-xl-12">
                        <form action="{{route('example-app.buscar2')}}" method="GET">
                            <div class="form-row align-items-center">
                
                                <div class="col-auto my-1">
                                    <div class="btn-group">
                                        <input type="text" class="form-control" name="texto" value="Id o codigo del equipo" onfocus="this.value='';">
                                        
                                        <button type="submit" class="btn btn-success fw-bold" id="boton_buscar">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>
                                        
                                        <a href="{{ route('search') }}" class="btn btn-warning fw-bold" id="boton_limpiar">
                                            <i class="fa-solid fa-brush"></i>
                                        </a>

                                    </div>
                                </div>                                
                            </div>
                        </form>
                    </div>
                </div>

                <!--Encabezado de la tabla para los datos de la BDD-->
                <div class="table-responsive overflow-auto" id="tabla_equipo">
                    <table class="table table-light">
                        <thead class="table-success table-responsive ">
                        <tr>
                            <th>#</th>
                            <th>Estado</th>
                            <th>Codigo</th>
                            <th>Tipo</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Numero de serie</th>
                            <th>Id del producto</th>
                            <th>Procesador</th>
                            <th>Ram</th>
                            <th>Disco</th>
                            <th>GPU/APU</th>
                            <th>Sistema operativo</th>
                            <th>Licencia</th>
                            <th>Display</th>
                            <th>Anydesk</th>
                            <th>Ubicación</th>
                            <th>Oficina</th>
                            <th>Dirección</th>
                            <th>Clave</th>
                            <th>Trabajador</th>
                            <th>Editar</th>
                        </tr>
                        </thead>
                        <tbody>
                            
                            <!--Conexion con BDD para permitir mostrar los datos registrados
                                en la tabla recien creada-->
                            @foreach ($equipos as $item)
                            <tr>
                                <td>{{$item->ID_equipo}}</td>
                                <td>{{$item->Estado}}</td>
                                <td>{{$item->Codigo}}</td>
                                <td>{{$item->Tipo}}</td>
                                <td>{{$item->Marca}}</td>
                                <td>{{$item->Modelo}}</td>
                                <td>{{$item->Num_serie}}</td>
                                <td>{{$item->Id_producto}}</td>
                                <td>{{$item->Procesador}}</td>
                                <td>{{$item->Ram}}</td>
                                <td>{{$item->Disco}}</td>
                                <td>{{$item->GPU_APU}}</td>
                                <td>{{$item->Sistema_operativo}}</td>
                                <td>{{$item->Tipo_licencia}}</td>
                                <td>{{$item->Display}}</td>
                                <td>{{$item->Anydesk}}</td>
                                <td>{{$item->Ubicacion}}</td>
                                <td>{{$item->Oficina}}</td>
                                <td>{{$item->Direccion}}</td>
                                <td>{{$item->Clave_equipo}}</td>
                                <td>{{$item->Nombre_trabajador}}</td>
                                <td>
                                    <a href="" data-bs-toggle="modal" data-bs-target="#modalEditarEquipos{{$item->ID_equipo}}" class="btn btn-warning btn-sm"><i class="fa-solid fa-pen-nib fa-beat"></i></a>
                                </td>
                            </tr>
                            
                            <!-- Modal para modificar los datos de los registros de la BDD-->

                                <div class="modal fade" id="modalEditarEquipos{{$item->ID_equipo}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                    <div class="modal-dialog modal-xl modal-lg">
                                        <div class="modal-content" >
                                            <div class="modal-header " style="background-color: #3ccaca;">
                                            <h1 class="modal-title fs-3 fw-bold" id="exampleModalLabel">Modificar datos</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body" style="background-color: #f2f2f2;">
                                                <form class="col-md-8" action="{{ route('example-app.update2') }}" method="post">

                                                    <!--Para proteger contra ataques CSRF-->
                                                    @csrf

                                                    <div class="row">

                                                    <!--Desde aca se editan los datos personales del trabajador-->

                                                        <h2 class="fw-bold">Datos del equipo:</h2>

                                                        <!--campo para mostrar el ID del registro (NO es editable)-->

                                                        <div class="col-md-1">
                                                            <label for="id" class="form-label fw-bold">ID:</label>
                                                            <input type="text" id="id" name="id" class="form-control border-dark text-white text-center" style="background-color:  #ff3333;" value="{{$item->ID_equipo}}" readonly >
                                                        </div>

                                                        <!--campo para editar el estado del equipo-->

                                                        <div class="col-md-2">
                                                            <label for="estado" class="form-label fw-bold">Estado:</label>
                                                            <select id="estado" name="estado" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                <option value="Pendiente" {{ $item->Estado == 'Pendiente' ? 'selected' : '' }}>Pendiente</option>
                                                                <option value="De_baja" {{ $item->Estado == 'De_baja' ? 'selected' : '' }}>De baja</option>
                                                                <option value="Disponible" {{ $item->Estado == 'Disponible' ? 'selected' : '' }}>Disponible</option>
                                                                <option value="En_garantia" {{ $item->Estado == 'En_garantia' ? 'selected' : '' }}>En garantia</option>
                                                                <option value="Ilocalizado" {{ $item->Estado == 'Ilocalizado' ? 'selected' : '' }}>Ilocalizado</option>
                                                                <option value="No_aplica" {{ $item->Estado == 'No_aplica' ? 'selected' : '' }}>No aplica</option>
                                                                <option value="Pendiente" {{ $item->Estado == 'Pendiente' ? 'selected' : '' }}>Pendiente</option>
                                                            </select>                    
                                                        </div>                                                        

                                                        <!--campo para editar el codigo designado al equipo-->

                                                        <div class="col-md-2">
                                                            <label for="codigo" class="form-label fw-bold">Codigo:</label>
                                                            <input type="text" id="codigo" name="codigo" class="form-control border-dark text-white text-center" style="background-color: #33ccff;" value="{{$item->Codigo}}"  />
                                                        </div>

                                                        <!--campo para editar la cantidad de ram del equipo-->

                                                        <div class="col-md-1">
                                                            <label for="ram" class="form-label fw-bold">Ram:</label>
                                                            <select id="ram" name="ram" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                <option value="4GB" {{ $item->Ram == '4GB' ? 'selected' : '' }}>4GB</option>
                                                                <option value="8GB" {{ $item->Ram == '8GB' ? 'selected' : '' }}>8GB</option>
                                                                <option value="12GB" {{ $item->Ram == '12GB' ? 'selected' : '' }}>12GB</option>
                                                                <option value="16GB" {{ $item->Ram == '16GB' ? 'selected' : '' }}>16GB</option>
                                                                <option value="24GB" {{ $item->Ram == '24GB' ? 'selected' : '' }}>24GB</option>
                                                                <option value="32GB" {{ $item->Ram == '32GB' ? 'selected' : '' }}>32GB</option>
                                                                <option value="48GB" {{ $item->Ram == '48GB' ? 'selected' : '' }}>48GB</option>                            
                                                                <option value="64GB" {{ $item->Ram == '64GB' ? 'selected' : '' }}>64GB</option>
                                                            </select>
                                                        </div>                                                        

                                                        <!--lista desplegable para editar la cantidad de almacenamiento del disco duro-->

                                                        <div class="col-md-2">
                                                            <label for="disco_duro" class="form-label fw-bold">Disco duro:</label>
                                                            <select id="disco_duro" name="disco_duro" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                <option value="120GB" {{ $item->Disco == '120GB' ? 'selected' : '' }}>120 GB</option>
                                                                <option value="128GB" {{ $item->Disco == '128GB' ? 'selected' : '' }}>128 GB</option>
                                                                <option value="128GB+512GB" {{ $item->Disco == '128GB+512GB' ? 'selected' : '' }}>128 GB + 512 GB</option>
                                                                <option value="128GB+1TB" {{ $item->Disco == '128GB+1TB' ? 'selected' : '' }}>128 GB + 1TB</option>
                                                                <option value="256GB" {{ $item->Disco == '256GB' ? 'selected' : '' }}>256 GB</option>
                                                                <option value="256GB+500GB" {{ $item->Disco == '256GB+500GB' ? 'selected' : '' }}>256 GB +500 GB</option>
                                                                <option value="256GB+1TB" {{ $item->Disco == '256GB+1TB' ? 'selected' : '' }}>256 GB +1 TB</option>
                                                                <option value="256GB+2TB" {{ $item->Disco == '256GB+2TB' ? 'selected' : '' }}>256 GB +2 TB</option>
                                                                <option value="500GB" {{ $item->Disco == '500GB' ? 'selected' : '' }}>500 GB</option>
                                                                <option value="512GB" {{ $item->Disco == '512GB' ? 'selected' : '' }}>512 GB</option>
                                                                <option value="610GB+283GB" {{ $item->Disco == '610GB+283GB' ? 'selected' : '' }}>1 TB + 128 GB</option>
                                                                <option value="650GB" {{ $item->Disco == '650GB' ? 'selected' : '' }}>650 GB</option>
                                                                <option value="1TB" {{ $item->Disco == '1TB' ? 'selected' : '' }}>1 TB</option>
                                                                <option value="1TB+128GB" {{ $item->Disco == '1TB+128GB' ? 'selected' : '' }}>1 TB + 128 GB</option>
                                                                <option value="1TB+250GB" {{ $item->Disco == '1TB+250GB' ? 'selected' : '' }}>1 TB + 250 GB</option>
                                                                <option value="1TB+512GB" {{ $item->Disco == '1TB+512GB' ? 'selected' : '' }}>1 TB + 512 GB</option>
                                                                <option value="1TB+1TB" {{ $item->Disco == '1TB+1TB' ? 'selected' : '' }}>1 TB + 1 TB</option>
                                                                <option value="2TB" {{ $item->Disco == '2TB' ? 'selected' : '' }}>2 TB</option>
                                                            </select>
                                                        </div>
                                                        
                                                        <!--campo para editar el codigo del anydesk para conectarse-->

                                                        <div class="col-md-2">
                                                            <label for="anydesk" class="form-label fw-bold">Anydesk:</label>
                                                            <input type="text" id="anydesk" name="anydesk" class="form-control text-center border-dark text-white" style="background-color: #33ccff;" value="{{$item->Anydesk}}" />
                                                        </div>

                                                        <!--lista desplegable para editar el sistema operativo-->

                                                        <div class="col-md-2">
                                                            <label for="tipo_sistema" class="form-label fw-bold">Sistema Operativo:</label>
                                                            <select id="tipo_sistema" name="tipo_sistema" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                <option value="Windows10" {{ $item->Sistema_operativo == 'Windows10' ? 'selected' : '' }}>Windows 10</option>
                                                                <option value="Windows11" {{ $item->Sistema_operativo == 'Windows11' ? 'selected' : '' }}>Windows 11</option>
                                                                <option value="Windows12" {{ $item->Sistema_operativo == 'Windows12' ? 'selected' : '' }}>Windows 12</option>
                                                            </select>
                                                        </div>                                                        

                                                        <!--lista desplegable para editar la licensia (osea si tiene windows home, pro, etc)-->

                                                        <div class="col-md-3">
                                                            <label for="licencia" class="form-label fw-bold">Licencia:</label>
                                                            <select name="licencia" id="licencia" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                @foreach ($licencia as $licenciaB)
                                                                    <option value="{{ $licenciaB->ID_licencia }}" @if ($licenciaB->ID_licencia == $item->ID_licencia) selected @endif>{{ $licenciaB->Licencia }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                                                                            
                                                        <!--campo para editar la ubicacion-->

                                                        <div class="col-md-3">
                                                            <label for="ubicacion" class="form-label fw-bold">Ubicación:</label>
                                                            <select name="ubicacion" id="ubicacion" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                @foreach ($ubicacion as $ubicacionB)
                                                                    <option value="{{ $ubicacionB->ID_ubicacion }}" @if ($ubicacionB->ID_ubicacion == $item->ID_ubicacion) selected @endif>{{ $ubicacionB->Ubicacion }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--lista desplegable para elegir la oficina donde se encuentra-->

                                                        <div class="col-md-2">
                                                            <label for="oficina" class="form-label fw-bold">Oficina:</label>
                                                            <select name="oficina" id="oficina" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                @foreach ($oficina as $oficinaB)
                                                                    <option value="{{ $oficinaB->ID_oficina }}" @if ($oficinaB->ID_oficina == $item->ID_oficina) selected @endif>{{ $oficinaB->Oficina }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <!--lista desplegable para elegir la direccion de la oficina (norte,sur,centro,local)-->

                                                        <div class="col-md-2">
                                                            <label for="direccion" class="form-label fw-bold">Dirección:</label>
                                                            <select name="direccion" id="direccion" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                @foreach ($direccion as $direccionB)
                                                                    <option value="{{ $direccionB->ID_direccion }}" @if ($direccionB->ID_direccion == $item->ID_direccion) selected @endif>{{ $direccionB->Direccion }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        
                                                        <!--campo para la clave del equipo asignado-->

                                                        <div class="col-md-2">
                                                            <label for="clave_equipo" class="form-label fw-bold">Clave:</label>
                                                            <input type="text" id="clave_equipo" name="clave_equipo" class="form-control text-center border-dark text-white" style="background-color: #33ccff;" value="{{$item->Clave_equipo}}"  />
                                                        </div>

                                                        <!--campo para seleccionar el trabajador al cual esta asignado el equipo-->

                                                        <div class="col-md-4">
                                                            <label for="trabajador_id" class="form-label fw-bold">Trabajador asignado:</label>
                                                            <select name="trabajador_id" id="trabajador_id" class="form-select border-dark text-white" style="background-color: #33ccff;">
                                                                <option value=""></option>
                                                                @foreach ($trabajadores as $trabajador)
                                                                    <option value="{{ $trabajador->ID_trabajador }}" @if ($trabajador->ID_trabajador == $item->ID_trabajador) selected @endif>{{ $trabajador->Nombre }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <br><br>

                                                        <!--campo de los botones para cerrar la pestaña emergente o para poder guardar los cambios
                                                        en los datos -->

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger fw-bold" data-bs-dismiss="modal" id="boton_cerrar">Cerrar</button>
                                                            <button type="submit" class="btn btn-success fw-bold" id="boton_guardar_cambios" >Guardar cambios</button>
                                                        </div>
                                                    </div>           
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            @endforeach
                        
                        </tbody>
                    </table>
                    
                    </div>

                </div>
                </div>
    </div>

    <!--Tabla del historico-->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12">
                <h4 class="mt-3 fw-bold">Tabla de Historico</h4>

                <!--Aca se declara la parte para permitir las busquedas en la tabla de historico-->
                <div class="row">
                    <div class="col-xl-12">
                        <form action="{{route('example-app.buscar3')}}" method="GET">
                            <div class="form-row align-items-center">
                
                                <div class="col-auto my-1">
                                    <div class="btn-group">
                                        <input type="text" class="form-control" name="texto" value="id equipo o historico" onfocus="this.value='';">
                                        
                                        <button type="submit" class="btn btn-success fw-bold" id="boton_buscar">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>
                                        
                                        <a href="{{ route('search') }}" class="btn btn-warning fw-bold" id="boton_limpiar">
                                            <i class="fa-solid fa-brush"></i>
                                        </a>

                                    </div>
                                </div>                                
                            </div>
                        </form>
                    </div>
                </div>

                <!--Encabezado de la tabla para los datos de la BDD-->
                <div class="table-responsive overflow-auto" id="tabla_historico">
                    <table class="table table-light">
                        <thead class="table-success table-responsive ">
                        <tr>
                            <th>#</th>
                            <th># Equipo</th>
                            <th>Historial de asignaciones</th>
                            <th>Procesos a ejecutar</th>
                            <th>Anotaciones</th>
                            <th>Editar</th>
                        </tr>
                        </thead>
                        <tbody>
                            
                            <!--Conexion con BDD para permitir mostrar los datos registrados
                                en la tabla recien creada-->
                            @foreach ($historico as $item)
                            <tr>
                                <td>{{$item->ID_historico}}</td>
                                <td style="width: 7vw;">{{$item->ID_equipo}}</td>
                                <td>{{$item->Historial_asignaciones}}</td>
                                <td>{{$item->Procesos_a_ejecutar}}</td>
                                <td>{{$item->Anotaciones}}</td>
                                <td>
                                    <a href="" data-bs-toggle="modal" data-bs-target="#modalEditarHistorico{{$item->ID_historico}}" class="btn btn-warning btn-sm"><i class="fa-solid fa-pen-nib fa-beat"></i></a>
                                </td>
                            </tr>
                            <!-- Modal para modificar los datos de los registros de la BDD-->
                                <div class="modal fade" id="modalEditarHistorico{{$item->ID_historico}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                    <div class="modal-dialog modal-xl modal-lg">
                                        <div class="modal-content" >
                                            <div class="modal-header " style="background-color: #0dec63;">
                                            <h1 class="modal-title fs-3 fw-bold" id="exampleModalLabel">Modificar datos</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body" style="background-color: #f2f2f2;">
                                                <form class="col-md-8" action="{{ route('example-app.update3') }}" method="post">

                                                    <!--Para proteger contra ataques CSRF-->
                                                    @csrf

                                                    <div class="row">

                                                    <!--Desde aca se editan los datos personales del trabajador-->

                                                        <h2 class="fw-bold">Historial:</h2>

                                                        <!--campo para mostrar el ID del historico (NO es editable)-->

                                                        <div class="col-md-1">
                                                            <label for="ID_historico" class="form-label fw-bold">ID:</label>
                                                            <input type="text" id="id" name="id" class="form-control border-dark text-white text-center" style="background-color:  #ff3333;" value="{{$item->ID_historico}}" readonly >
                                                        </div>

                                                        <div class="col-md-2">
                                                            <label for="ID_equipo" class="form-label fw-bold">ID del equipo:</label>
                                                            <input type="text" id="id_equipo" name="id_equipo" class="form-control border-dark text-white text-center" style="background-color: #ff3333;" value="{{$item->ID_equipo}}" readonly/>
                                                        </div>
                        
                                                        <div class="col-md-12">
                                                            <label for="historial_asignacion" class="form-label fw-bold">Historial asignación:</label>
                                                            <input type="text" id="historial_asignacion" name="historial_asignacion" class="form-control border-dark text-white" style="background-color: #33ccff;" value="{{$item->Historial_asignaciones}}"/>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <label for="procesos_ejecutar" class="form-label fw-bold">Procesos a ejecutar:</label>
                                                            <input type="text" id="procesos_ejecutar" name="procesos_ejecutar" class="form-control border-dark text-white" style="background-color: #33ccff;" value="{{$item->Procesos_a_ejecutar}}"/>
                                                        </div>
                        
                                                        <div class="col-md-12">
                                                            <label for="anotaciones" class="form-label fw-bold">Anotaciones:</label>
                                                            <textarea name="anotaciones" rows="3" class="form-control border-dark text-white" style="background-color: #33ccff;">{{$item->Anotaciones}}</textarea>
                                                        </div>                                                        
                                                        
                                                        <br><br>

                                                        <!--campo de los botones para cerrar la pestaña emergente o para poder guardar los cambios
                                                        en los datos -->

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger fw-bold" data-bs-dismiss="modal" id="boton_cerrar">Cerrar</button>
                                                            <button type="submit" class="btn btn-success fw-bold" id="boton_guardar_cambios" >Guardar cambios</button>
                                                        </div>
                                                    </div>           
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        
                        </tbody>
                    </table>
                    
                    </div>

                </div>
                </div>
    </div>

</div>
@endsection