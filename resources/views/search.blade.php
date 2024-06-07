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

    <div class="container mt-4">
        <hr>

        <h3 class="fw-bold text-center">Tablas</h3>

        <div class="row">

            <!--Tabla de trabajadores-->
            
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

</div>
@endsection