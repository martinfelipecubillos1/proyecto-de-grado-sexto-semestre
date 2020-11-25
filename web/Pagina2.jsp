<%@page import="Controlador.PdfVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">  
      <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
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
        <%
            Integer dato = 0;
            try {
                PdfVO pdf = (PdfVO) request.getAttribute("row");
                dato = pdf.getCodigopdf();
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
            boolean icono = false;
            try {
                icono = (Boolean) request.getAttribute("row2");
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
        %>

        <form name="formpdf" action="ControllerPdf" method="post" enctype="multipart/form-data">
            <div class="container">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="table-primary">
                            <th>Nombre</th>
                            <th>Campo</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                            <td>
                                <label for="id">Nombre del archivo: </label>
                            </td>  
                            <td>
                                <input type="text" name="txtname" value="<c:out value="${row.nombrepdf}" />" />
                            </td>
                        </tr>
                        <tr class="alt">
                            <td>
                                <label for="id">Seleccionar PDF: *</label>
                                <%
                                    if (icono) {
                                %>
                                <a href="pdf?id=<%out.print(dato); %>" target="_blank"> Ver Pdf</a>
                                <%
                                    } else {
                                        out.print("No hay Pdf");
                                    }
                                %>
                            </td>  
                            <td>
                                <input type="file" name="fichero" value="" class="btn"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center"><input type="submit" value="Enviar Archivo" name="submit" id="btn" class="btn"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 
    </body>
</html>
