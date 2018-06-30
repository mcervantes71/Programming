<!DOCTYPE html>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<html>
    <head>
        <title>Solicitud de permiso</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container">
            <h1>Aprobar/Denegar</h1>

            <%
                String id = request.getParameter("id");

                out.println("<form action='comentario_guardar.jsp' method='POST'>" +
                    "<div class='form-group'>" +
                        "<label for='leave_request_id'>Id Solicitud</label>" +
                        "<input type='number' class='form-control' name='leave_request_id' value='" + id + "' readonly/>" +
                    "</div>" +
                    "<div class='form-group'>" +
                        "<label for='status'>Status</label>" +
                        "<select class='form-control' name='status'>" +
                            "<option value='1'>Aprobada</option>" +
                            "<option value='2'>Denegada</option>" +
                        "</select>" +
                    "</div>" +
                    "<div class='form-group'>" +
                        "<label for='comment'>Comentario</label>" +
                        "<textarea class='form-control' name='comment' rows='3' onkeyup='validar_texto(this.value)' ></textarea>" +
                    "</div>" +
                    "<button type='submit' class='btn btn-primary'>Guardar</button>" +
                    "<button type='submit' class='btn btn-danger' formaction='permisos.jsp' formmethod='POST'>Cancelar</button>" +
                "</form>");
            %>
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/app.js"></script>
        </div>
    </body>
</html>
