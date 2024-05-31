<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Eiatec</title>

    <!--Iconos-->
    <script src="https://kit.fontawesome.com/2460b47c04.js" crossorigin="anonymous"></script>

    <!-- Fuentes -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <!--Css-->
    <link rel="stylesheet" href="{{ asset('css/Styles_navar.css') }}">
    <link rel="stylesheet" href="{{ asset('css/Styles_tablas.css') }}">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

    <!--Icono empresarial-->
    <link rel="icon" href="{{ asset('img/Icono_logo.png.') }}" type="image/x-icon">

</head>

<body>
    <div id="app">

        <!--Navbar a nivel general -->

        <nav class="navbar navbar-expand-md shadow-sm">
            <div class="container">

                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{ asset('img/Logo_eiatec.png') }}" alt="Logo">
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- lado izquierdo del navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!--lado derecho del navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- links de acceso -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item" id="boton_navegacion">
                                    <a class="nav-link fw-bold" href="{{ route('login') }}">{{ __('Iniciar Sesión') }}
                                    
                                        <i class="fa-solid fa-user"></i>

                                    </a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item" id="boton_registro">
                                    <a class="nav-link fw-bold" href="{{ route('register') }}">{{ __('Registrarse') }}
                                    
                                        <i class="fa-solid fa-user-plus"></i>

                                    </a>
                                </li>
                            @endif
                        @else

                            <!--Sitio del boton del usuario despues de inicar-->
                            
                            <li class="nav-item dropdown">

                                <!--Boton barra desplegable-->

                                <a id="navbarDropdown" class="nav-link dropdown-toggle fw-bold" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}

                                    <i class="fa-solid fa-user-large"></i>

                                </a>

                                <!--Opcion para cerrar seción-->

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Cerrar Sesión') }}

                                        <i class="fa-solid fa-user-large-slash"></i>

                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
    <script src='https://unpkg.com/feather-icons'></script>
</body>
</html>