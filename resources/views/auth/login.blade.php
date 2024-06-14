@extends('layouts.app')

@section('content')

<!--Para el fondo-->
<link rel="stylesheet" href="{{ asset('css/Styles_fondo_movimiento_login.css') }}">

<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-8">

            <div class="card">

                <div class="card-header fw-bold" id="Encabezado_ingreso">{{ __('Ingreso') }}</div>

                <div class="card-body" id="fondo_ingreso">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <!--Campo para escribir el email-->

                        <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end fw-bold">{{ __('Cuenta') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                <!--Mensaje de error en caso de que la cuenta no exista-->

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>

                        <!--Campo para poder poner la contraseña-->

                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end fw-bold">{{ __('Contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>

                        <!-- Checkbox para recordar acceso  -->

                        <div class="row mb-3">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label fw-bold" for="remember">
                                        {{ __('Recuerdame') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!--Boton para mandar los datos a revisión-->

                        <div class="row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Ingresar') }}
                                </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
