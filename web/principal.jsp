<%-- 
    Document   : principal
    Created on : 17/11/2020, 11:54:25 a. m.
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <a style="color:white" class="navbar-toogler"></a>
            <div class="dropdown">
                <a style="color: white" class="nav-link dropdown-toggle"data-toggle="dropdown" >Cerrar sesion</a>
                <div class="dropdown-menu text-center">
                    <a>${nom}</a><br>
                    <div class="dropdown-divider"></div>
                    <a href  = "index.jsp"class="dropdown-item">salir</a>
                </div>
            </div>
        </nav>
        <div class="container mt-4">
            <h1>Bienvenido</h1><br>
            <h1>DOCENTE <strong> Usuario: ${nom}</strong></h1>
            
        </div><br>
        <div class="container">
            
            <table class="table table-bordered table-hover">
                
                <tr class="table-primary">
                    <th>CURSOS</th>
                    <th>TAREAS</th>
                </tr>
                <tr>
                    <td>CURSO 6</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr>
                <tr>
                    <td>CURSO 7</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr>
                <tr>
                    <td>CURSO 8</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr>
                <tr>
                    <td>CURSO 9</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr>
                <tr>
                    <td>CURSO 10</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr>
                <tr>
                    <td>CURSO 11</td>
                    <td>
                        <a class="btn btn-success" href="Controlator?accion=listar">lista</a>
                    </td>
                </tr> 
            </table>
            <div class="container">
                <table class="table table-bordered table-hover">
                    <th>
            <form action="Pagina1.jsp">
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Subir Trabajo">
            </form>
                    </th>
                </table>
            </div>
        </div>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
