@extends('layouts.app')

@section('content')
<div class="container">
    
    <div class="container">

        <!--Formulario principal, registro de los datos personales en la tabla Trabajadores-->
        <h3 class="fw-bold text-center">Registro</h3>

        <h4 class="fw-bold">Datos personales del trabajador:</h4>

        <div class="row justify-content-center" id="registro_trabajador">
            <form class="col-md-8" action="{{route("example-app.create")}}" method="post" style="width: 200vh;">
                @csrf
                <div class="row">

                    <!--campo para insertar la cedula-->

                    <div class="col-md-2">
                        <label for="cedula" class="form-label fw-bold">Cédula:</label>
                        <input type="text" id="cedula" name="cedula" class="form-control border-dark"  pattern="[0-9]+" title="Por favor ingresa solo números" required />
                    </div>

                    <!--lista desplegable para elegir el lugar de la expedicion de la cedula-->

                    <div class="col-md-3">
                        <label for="ID_expedicion" class="form-label fw-bold">Lugar de Expedición:</label>
                        <select name="ID_expedicion" id="ID_expedicion" class="form-select border-dark" required>
                                <option value=""></option>
                            @foreach ($expedicion as $expedicionB)
                                <option value="{{ $expedicionB->ID_expedicion }}">{{ $expedicionB->Lugar }}</option>
                            @endforeach
                        </select>
                    </div>

                    <!--campo para insertar el nombre-->

                    <div class="col-md-3">
                        <label for="nombre" class="form-label fw-bold">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" class="form-control border-dark" pattern="[a-zA-ZáéíóúÁÉÍÓÚüÜ\s]+" title="Por favor ingresa solo letras" required />
                    </div>

                    <!--lista desplegable para elegir a uno de los coordinadores-->

                    <div class="col-md-4">
                        <label for="coordinador_id" class="form-label fw-bold">Coordinador Asignado:</label>
                        <select name="coordinador_id" id="coordinador_id" class="form-select border-dark" required>
                                <option value=""></option>
                            @foreach ($coordinador as $coordinadorB)
                                <option value="{{ $coordinadorB->ID_coordinador }}">{{ $coordinadorB->Nombre }}</option>
                            @endforeach
                        </select>
                    </div>
                    
                    <!--lista desplegable para elegir uno de los cargos-->

                    <div class="col-md-6">
                        <label for="cargo" class="form-label fw-bold">Cargo Asignado:</label>
                        <select name="cargo" id="cargo" class="form-select border-dark" required>
                                <option value=""></option>
                            @foreach ($cargo as $cargoB)
                                <option value="{{ $cargoB->ID_cargo }}">{{ $cargoB->Cargo }}</option>
                            @endforeach
                        </select>
                    </div>

                    <!--campo para insertar la cuenta de correo electonico-->

                    <div class="col-md-3">
                        <label for="correo" class="form-label fw-bold">Correo:</label>
                        <input type="text" id="correo" name="correo" class="form-control border-dark" required />
                    </div>

                    <!--campo para insertar la contraseña de la cuenta-->

                    <div class="col-md-3">
                        <label for="contraseña" class="form-label fw-bold">Contraseña:</label>
                        <input type="text" id="contraseña" name="contraseña" class="form-control border-dark" required />
                    </div>

                    <!--campo para insertar el numero de telefono-->

                    <div class="col-md-2">
                        <label for="telefono" class="form-label fw-bold">Teléfono:</label>
                        <input type="text" id="telefono" name="telefono" class="form-control border-dark" required />
                    </div>

                    <!--lista desplegable para elegir la ubicacion-->

                    <div class="col-md-3">
                        <label for="ubicacion" class="form-label fw-bold">Ubicación:</label>
                        <select id="ubicacion" name="ubicacion" class="form-select border-dark" required>
                            <option value=""></option>
                            <option value="1">Bogotá</option>
                            <option value="2">Riohacha</option>
                            <option value="3">Neiva</option>
                            <option value="4">Vencia</option>
                            <option value="5">Valledupar </option>
                            <option value="6">Ibague</option>
                            <option value="7">Santa Marta</option>
                            <option value="8">Uribia</option>
                            <option value="9">Sogamoso</option>
                            <option value="10">Puente Nacional</option>
                            <option value="11">Tunja</option>
                            <option value="12">Villavicencio</option>
                        </select>                        
                    </div>
                    
                </div> 
                
                <!--Boton para enviar los datos del trabajador a la base de datos-->
                <div class="col-md-1">
                    <input type="submit" name="submit" value="Enviar" class="btn btn-lg btn-success mt-2 fw-bold boton_enviar" id="boton_enviar" />
                </div>

                <hr>
            </form>
        </div>

        <!--Formulario secundario para registrar datos del equipo en la tabla Equipos-->
                <div class="container">
                    <div class="row justify-content-center" id="registro_equipo">
                        <form class="col-md-8" action="{{route("example-app.create2")}}" method="post" style="width: 200vh;">
                            @csrf
                            <div class="row">

                                <h4 class="fw-bold">Datos del equipo:</h4>

                                <!--lista desplegable para elegir el estado de asignacion del equipo-->

                                <div class="col-md-2">
                                    <label for="estado" class="form-label fw-bold">Estado:</label>
                                    <select id="estado" name="estado" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="De baja">De baja</option>
                                        <option value="Disponible">Disponible</option>
                                        <option value="En garantia">En garantia</option>
                                        <option value="Ilocalizado">Ilocalizado</option>
                                        <option value="No aplica">No aplica</option>
                                        <option value="Pendiente">Pendiente</option>
                                        <option value="Asignado">Asignado</option>
                                    </select>                    
                                </div>

                                <!--campo para ingresar el codigo designado al equipo-->

                                <div class="col-md-2">
                                    <label for="codigo" class="form-label fw-bold">Código:</label>
                                    <input type="text" id="codigo" name="codigo" class="form-control border-dark" required />
                                </div>

                                <!--lista desplegable para elegir el tipo de computador (portatil,mesa,etc)-->

                                <div class="col-md-2">
                                    <label for="tipo_computador" class="form-label fw-bold">Tipo de Computador:</label>
                                    <select id="tipo_computador" name="tipo_computador" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="1">Mesa</option>
                                        <option value="2">Portatil</option>
                                        <option value="3">All in one</option>
                                        <option value="5">Personal</option>
                                    </select>
                                </div>

                                <!--lista desplegable para elegir la marca del equipo (HP,DELL,etc)-->
                
                                <div class="col-md-2">
                                    <label for="marca" class="form-label fw-bold">Marca:</label>
                                    <select id="marca" name="marca" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="1">Acer</option>
                                        <option value="2">Asus</option>
                                        <option value="3">Lenovo</option>
                                        <option value="4">Huawei</option>
                                        <option value="5">HP</option>
                                        <option value="6">Apple</option>
                                        <option value="7">Dell</option>
                                        <option value="8">Toshiba</option>
                                        <option value="9">Alienware</option>
                                    </select>
                                </div>

                                <!--campo para ingresar el modelo del equipo-->

                                <div class="col-md-4">
                                    <label for="modelo" class="form-label fw-bold">Modelo:</label>
                                    <input type="text" id="modelo" name="modelo" class="form-control border-dark" required />
                                </div>

                                <!--campo para ingresar el numero de serie del equipo-->

                                <div class="col-md-3">
                                    <label for="numero_serie" class="form-label fw-bold">Numero de Serie:</label>
                                    <input type="text" id="numero_serie" name="numero_serie" class="form-control border-dark" required />
                                </div>

                                <!--campo para ingresar el id del producto-->

                                <div class="col-md-3">
                                    <label for="id_producto" class="form-label fw-bold">Id Producto:</label>
                                    <input type="text" id="id_producto" name="id_producto" class="form-control border-dark" required />
                                </div>

                                <!--lista desplegable para ingresar el sistema operativo-->

                                <div class="col-md-2">
                                    <label for="tipo_sistema" class="form-label fw-bold">Sistema Operativo:</label>
                                    <select id="tipo_sistema" name="tipo_sistema" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="Windows10">Windows 10</option>
                                        <option value="Windows11">Windows 11</option>
                                        <option value="Windows12">Windows 12</option>
                                    </select>
                                </div>

                                <!--lista desplegable para ingresar la licencia (osea si tiene windows home, pro, etc)-->

                                <div class="col-md-3">
                                    <label for="licencia" class="form-label fw-bold">Licencia:</label>
                                    <select name="licencia" id="licencia" class="form-select border-dark text-white" required>
                                            <option value=""></option>
                                        @foreach ($licencia as $licenciaB)
                                            <option value="{{ $licenciaB->ID_licencia }}">{{ $licenciaB->Licencia }}</option>
                                        @endforeach
                                    </select>
                                </div> 

                                <!--lista deplegable para elegir la capacidad de la Ram-->

                                <div class="col-md-1">
                                    <label for="ram" class="form-label fw-bold">Ram:</label>
                                    <select id="ram" name="ram" class="form-select border-dark text-white" required>
                                        <option value=""></option>
                                        <option value="4GB">4GB</option>
                                        <option value="8GB">8GB</option>
                                        <option value="12GB">12GB</option>
                                        <option value="16GB">16GB</option>
                                        <option value="24GB">24GB</option>
                                        <option value="32GB">32GB</option>
                                        <option value="48GB">48GB</option>                            
                                        <option value="64GB">64GB</option>
                                    </select>
                                </div>

                                <!--campo para ingresar cual es el procesador-->

                                <div class="col-md-6">
                                    <label for="procesador" class="form-label fw-bold">Procesador:</label>
                                    <input type="text" id="procesador" name="procesador" class="form-control border-dark text-white" required />
                                </div>

                                <!--campo para ingresar la grafica o controlador grafico del equipo-->

                                <div class="col-md-6">
                                    <label for="gpu" class="form-label fw-bold">Gpu/Apu:</label>
                                    <input type="text" id="gpu" name="gpu" class="form-control border-dark" required />
                                </div>

                                <!--lista desplegable para elegir la pantalla del equipo-->

                                <div class="col-md-2">
                                    <label for="display" class="form-label fw-bold">Display:</label>
                                    <select id="display" name="display" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="16  FHD">16 FHD</option>
                                        <option value="14  HD">14 HD</option>
                                        <option value="15,6 FHD">15,6 FHD</option>
                                        <option value="14  IPS">14 IPS</option>
                                        <option value="14  HD Display">14 HD</option>
                                        <option value="17 ,3  FHD">17 ,3 FHD</option>
                                        <option value="15,6  HD">15,6 HD</option>
                                        <option value="14  FHD">14 FHD</option>
                                        <option value="14  HD">14 HD</option>
                                        <option value="15,6 LCD">15,6 LCD</option>
                                        <option value="14 FHD">14 FHD</option>
                                        <option value="15  Full HD">15 Full HD</option>
                                        <option value="15,6  FHD">15,6 FHD</option>
                                        <option value="14  FHD">14 FHD</option>
                                        <option value="15,6  HD">15,6 HD</option>
                                    </select>
                                </div>

                                <!--lista desplegable para elegir la cantidad de almacenamiento del disco duro-->

                                <div class="col-md-2">
                                    <label for="disco_duro" class="form-label fw-bold">Disco duro:</label>
                                    <select id="disco_duro" name="disco_duro" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="128GB">128 GB</option>
                                        <option value="250GB">250 GB</option>
                                        <option value="512GB">512 GB</option>
                                        <option value="1TB">1 TB</option>
                                        <option value="1TB+128GB">1 TB + 128 GB</option>
                                        <option value="1TB+250GB">1 TB + 250 GB</option>
                                        <option value="1TB+512GB">1 TB + 512 GB</option>
                                        <option value="1TB+1TB">1 TB + 1 TB</option>
                                        <option value="2TB">2 TB</option>
                                    </select>
                                </div>

                                <!--campo para ingresar el codigo del anydesk para conectarse-->

                                <div class="col-md-2">
                                    <label for="anydesk" class="form-label fw-bold">Anydesk:</label>
                                    <input type="text" id="anydesk" name="anydesk" class="form-control border-dark"  required />
                                </div>

                                <!--lista desplegable para elegir la ubicacion de donde se encuentra el equipo-->

                                <div class="col-md-2">
                                    <label for="ubicacion" class="form-label fw-bold">Ubicación:</label>
                                    <select id="ubicacion" name="ubicacion" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="1">Bogotá</option>
                                        <option value="2">Riohacha</option>
                                        <option value="3">Neiva</option>
                                        <option value="4">Vencia</option>
                                        <option value="5">Valledupar </option>
                                        <option value="6">Ibague</option>
                                        <option value="7">Santa Marta</option>
                                        <option value="8">Uribia</option>
                                        <option value="9">Sogamoso</option>
                                        <option value="10">Puente Nacional</option>
                                        <option value="11">Tunja</option>
                                        <option value="12">Villavicencio</option>
                                    </select>                        
                                </div>

                                <!--lista desplegable para elegir la oficina donde se encuentra-->

                                <div class="col-md-2">
                                    <label for="oficina" class="form-label fw-bold">Oficina:</label>
                                    <select id="oficina" name="oficina" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="1">Adm</option>
                                        <option value="2">Rio</option>
                                        <option value="3">Nei</option>
                                        <option value="4">Téc</option>
                                        <option value="5">Hof</option>
                                        <option value="6">Home_Office</option>
                                        <option value="8">Uri</option>
                                    </select>                        
                                </div>

                                <!--lista desplegable para elegir la direccion de la oficina (norte,sur,centro,local)-->

                                <div class="col-md-2">
                                    <label for="direccion" class="form-label fw-bold">Dirección:</label>
                                    <select id="direccion" name="direccion" class="form-select border-dark" required>
                                        <option value=""></option>
                                        <option value="1">Norte</option>
                                        <option value="2">Centro</option>
                                        <option value="3">Sur</option>
                                        <option value="4">Local</option>                            
                                    </select>                        
                                </div>
                                
                                <!--campo para la clave del equipo asignado-->

                                <div class="col-md-2">
                                    <label for="clave_equipo" class="form-label fw-bold">Clave:</label>
                                    <input type="text" id="clave_equipo" name="clave_equipo" class="form-control border-dark" required />
                                </div>

                                <!--campo para seleccionar el trabajador al cual esta asignado el equipo-->

                                <div class="col-md-4">
                                    <label for="trabajador_id" class="form-label fw-bold">Trabajador asignado:</label>
                                    <select name="trabajador_id" id="trabajador_id" class="form-select border-dark" required>
                                            <option value=""></option>
                                        @foreach ($trabajadores as $trabajador)
                                            <option value="{{ $trabajador->ID_trabajador }}">{{ $trabajador->Nombre }}</option>
                                        @endforeach
                                    </select>
                                </div>                                
                                
                                <!--Boton para enviar los datos-->

                                <div>
                                    <input type="submit" name="submit" value="Enviar" class="btn btn-lg btn-success mt-2 fw-bold boton_enviar" id="boton_enviar" />
                                </div>

                                <br><br><br>
                                <hr>
                            </div>
                        </form>
                    </div>
                </div>

        <!--Formulario terciario para registrar datos del historico del equipo en la tabla Historico-->

                <div class="container">
                    <div class="row justify-content-center" id="registro_historial">
                        <form class="col-md-1" action="{{route("example-app.create3")}}" method="post" style="width: 200vh;">
                            @csrf
                            <div class="row">

                                <h4 class="fw-bold">Historial:</h4>

                                <!--campo para elegir el equipo al que se le va a poner un historial-->

                                <div class="col-md-3">
                                    <label for="id_equipo" class="form-label fw-bold">Código del equipo:</label>
                                    <select name="id_equipo" id="id_equipo" class="form-select border-dark text-white" required>
                                            <option value=""></option>
                                        @foreach ($equipos as $equipo)
                                            <option value="{{ $equipo->ID_equipo }}">Codigo: {{ $equipo->Codigo }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                
                                <!--campo para ingresar el historial de asignacion-->

                                <div class="col-md-12">
                                    <label for="historial_asignacion" class="form-label fw-bold">Historial asignación:</label>
                                    <input type="text" id="historial_asignacion" name="historial_asignacion" class="form-control border-dark text-white" required />
                                </div>

                                <!--campo para ingresar los procesos a ejecutar del equipo-->

                                <div class="col-md-12">
                                    <label for="procesos_ejecutar" class="form-label fw-bold">Procesos a ejecutar:</label>
                                    <input type="text" id="procesos_ejecutar" name="procesos_ejecutar" class="form-control border-dark text-white" required />
                                </div>

                                <!--campo para inbgresar las anotaciones del equipo-->

                                <div class="col-md-12">
                                    <label for="anotaciones" class="form-label fw-bold">Anotaciones:</label>
                                    <textarea name="anotaciones" rows="3" class="form-control border-dark text-white"></textarea>
                                </div>

                            </div>
                            
                            <!--boton para enviar los datos del historial-->

                            <div>
                                <input type="submit" name="submit" value="Enviar" class="btn btn-lg btn-success mt-2 fw-bold boton_enviar" id="boton_enviar" />
                            </div>

                        </form>
                    </div>
                </div>
                
    </div>

</div>
@endsection