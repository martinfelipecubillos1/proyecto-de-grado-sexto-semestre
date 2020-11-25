<%-- 
    Document   : Pagina1
    Created on : 19/12/2017, 03:29:08 PM
    Author     : David
--%>


<%@page import="Controlador.PdfVO"%>
<%@page import="Controlador.PdfDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <center>
        <h1>Documentos </h1>
    </center>

    <%
        PdfDAO emp = new PdfDAO();
        PdfVO pdfvo = new PdfVO();
        ArrayList<PdfVO> listar = emp.Listar_PdfVO();
    %>

    <div class="container">
        <table class="table table-bordered table-hover" >
            <thead>
                <tr class="table-primary">
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Pdf</th>
                    <th></th>
                </tr>
            </thead>
            <tfoot>
                
            </tfoot>
            <tbody>
                <%if (listar.size() > 0) {
                        for (PdfVO listar2 : listar) {
                            pdfvo = listar2;
                %>
                <tr>
                    <td><%=pdfvo.getCodigopdf()%></td>
                    <td><%=pdfvo.getNombrepdf()%></td>
                    <td>
                        <%
                            if (pdfvo.getArchivopdf2() != null) {
                        %>
                        <a href="pdf?id=<%=pdfvo.getCodigopdf()%>" target="_blank"><img src="Imagen/mpdf.png" title="pdf"/></a>
                            <%
                                } else {
                                    out.print("Vacio");
                                }
                            %>
                    </td>
                    <td>
                        <a id="mostrar" href="ControllerPdf?action=insert&id=<%=pdfvo.getCodigopdf()%>"> <img src="Imagen/nuevo.png" title="Nuevo registro"/></a>-
                        <a href="ControllerPdf?action=edit&id=<%=pdfvo.getCodigopdf()%>"> <img src="Imagen/editar.png" title="Modificar"/></a>-
                        <a href="ControllerPdf?action=delete&id=<%=pdfvo.getCodigopdf()%>"> <img src="Imagen/delete.png" title="Eliminar"/></a>
                    </td>
                </tr>
                <%}
                    }%>
            </tbody>
        </table>
    </div>
                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 
</body>
</html>
