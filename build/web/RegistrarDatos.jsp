<%-- 
    Document   : RegistrarDatos
    Created on : 15/06/2023, 5:03:39 PM
    Author     : oscar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body{
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
        </style>
        <title>Registrar Datos</title>
    </head>
    <body>
        <h1 class="text-center m-3">Registrar Datos</h1>

        <div class="d-flex mt-3 p-1">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=RegistrarDatos" method="post">
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" value="${usuario.getRut()}" name="txtUser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <input type="text" value="${usuario.getNombres()}" name="txtNom" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Rut</label>
                            <input type="text" value="${usuario.getUser()}" name="txtRut" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info mt-2 text-white bg-dark" style="border: none;">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success mt-2">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Usuario</th>
                            <th>Nombres</th>
                            <th>Rut</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="us" items="${usuarios}">
                            <tr>
                                <td>${us.getId()}</td>
                                <td>${us.getRut()}</td>
                                <td>${us.getNombres()}</td>
                                <td>${us.getUser()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=RegistrarDatos&accion=Editar&id=${us.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=RegistrarDatos&accion=Delete&id=${us.getId()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
