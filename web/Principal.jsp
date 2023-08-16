<%-- 
    Document   : Principal
    Created on : 14/06/2023, 12:18:00 AM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <title>Principal</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Controlador?menu=Inicio">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Controlador?menu=RegistrarDatos&accion=Listar" target="myFrame">Registrar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Controlador?menu=AcercaDe" target="myFrame">Nosotros</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown link
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
        
    </div>

    <!--boton para salir-->
    <div style="margin-right: 1%" class="dropdown">
        <button class="btn btn-secondary bg-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
          ${usuario.getNombres()}
        </button>
        <ul class="dropdown-menu text-center">
          <li><a class="dropdown-item" href="#">
                  <img class="p-0" src="img/user.png" alt="50" width="50"/>
              </a>
          </li>
          
          <li><a class="dropdown-item" href="#">${usuario.getNombres()}</a></li>
          <div class="dropdown-divider"></div>
          <form action="Validar" method="post">
              <input type="submit" name="accion" value="Salir" class="dropdown-item">
          </form>
        </ul>
      </div>
  </div>
</nav>

    <!--Ingreso de datos del crud-->
    <div class="m-3" style="height: 90vh;">
      <iframe class="frame" name="myFrame" style="height: 100%; width: 100%; font-family: sans-serif; border: none"></iframe>
    </div>

  </body>
</html>
