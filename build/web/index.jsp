<%-- 
    Document   : index
    Created on : 12/06/2023, 5:50:20 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link rel="stylesheet" href="style.css">-->                                                                                                                                                                             
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <title>Inicio</title>
    </head>
    <body>
        
        <div class="container mt-4 col-lg-4">
            
            <div class="card col-sm-10">
                
                <div class="card-body ">

                    <form action="Validar" method="post" class="form-sign">

                        <div class="form-group text-center">
                            <h2>Iniciar Sesión</h2>
                            <label>Bienvenidos</label>
                        </div>

                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtUser" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="password" name="txtPass" class="form-control" required>
                        </div>

                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-b mt-2">

                    </form>

                </div>
        
            </div>
    
        </div>
        
        
        
        
        <!--
        <div class="container-login">

            <div class="container-card">

                <div class="container-iniciar-sesion">Iniciar Sesión</div>
                
                <div class="container-label">
                    <label for="user">Usuario</label>
                    <input class="data-login" type="text" name="user" id="user" required>
                </div>

                <div class="container-label">
                    <label for="password">Contraseña</label>
                    <input class="data-login" type="password" name="password" id="password" required>
                </div>
                <div class="container-boton">
                    <input class="boton" type="button" value="Entrar">
                </div>

            </div>

        </div>
        -->

    </body>
</html>
