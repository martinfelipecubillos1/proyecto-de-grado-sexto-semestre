<%-- 
    Document   : listar
    Created on : 22/11/2020, 01:34:35 PM
    Author     : Javier
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Controlador.Persona"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.PersonaDAO"%>
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
            <div class="container">
                  <table class="table table-bordered table-hover">
            <thead>
                <tr class="table-primary">
                    <th>ID ESTUDIANTE</th>
                    <th>PRIMER NOMBRE</th>
                    <th>SEGUNDO NOMBRE</th>
                    <th>PRIMER APELLIDO</th>
                    <th>SEGUNDO APELLIDO</th>
          
                </tr>
            </thead>
            <%
                PersonaDAO dao= new PersonaDAO();
                List<Persona>list=dao.listar();
                Iterator<Persona>iter=list.iterator();
                Persona per=null;
                while(iter.hasNext())
                {
                    per=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=per.getId_estudiante()%></td>
                    <td><%=per.getPrimer_nombre()%></td>
                    <td><%=per.getSegundo_nombre()%></td>
                    <td><%=per.getPrimer_apellido()%></td>
                    <td><%=per.getSegundo_apellido()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>      
            </div>
        
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
