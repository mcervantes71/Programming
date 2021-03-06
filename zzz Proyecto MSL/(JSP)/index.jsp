<!DOCTYPE html>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<html>
    <head>
        <title>Empleados</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="permisos.jsp">Permisos</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" action="empleado_buscar.jsp">
                    <input class="form-control mr-sm-2" type="number" name="id" placeholder="Buscar # Empleado">
                </form>
            </div>
        </nav>
        <div class="container">
            <h1>Empleados</h1>

            <form action="formulario_empleado.html">
                <button type="submit" class="btn btn-primary">Nuevo</button>
            </form>
            <%
                try
                {
                    String conexionURL = "jdbc:mysql://localhost:3306/hr";
                    String user = "Admin";
                    String password = "123456";

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conexion = DriverManager.getConnection(conexionURL, user, password);

                    String  comando = "SELECT *" +
                                      "FROM Employees";

                    Statement declaracion =  conexion.createStatement();

                    ResultSet resultado = declaracion.executeQuery(comando);

                    out.println("<table class='table'>" +
                                     "<thead>" +
                                         "<tr>" +
                                             "<th scope='col'>Id</th>" +
                                             "<th scope='col'>Nombre</th>" +
                                             "<th scope='col'>Apellido</th>" +
                                             "<th scope='col'>Correo</th>" +
                                             "<th scope='col'></th>" +
                                             "<th scope='col'></th>" +
                                         "</tr>" +
                                    "</thead>" +
                                    "<tbody>");

                    while(resultado.next())
                    {
                        out.println("<tr>" +
                                "<td scope='row'>" + resultado.getInt("employee_id") + "</td>" +
                                "<td>" + resultado.getString("first_name") + "</td>" +
                                "<td>" + resultado.getString("last_name") + "</td>" +
                                "<td>" + resultado.getString("email") + "</td>" +
                                "<td><a href='formulario_empleado_modificar.jsp?id=" + resultado.getInt("employee_id") + "' alt='Modificar Empleado' title='Modificar Empleado'>Modificar</a></td>" +
                                "<td><a href='empleado_borrar.jsp?id=" + resultado.getInt("employee_id") + "' alt='Borrar Empleado' title='Borrar Empleado'>Borrar</a></td>" + "</tr>" );
                    }

                    out.println("</tbody></table>");

                    declaracion.close();
                    conexion.close();
                }
                catch(SQLException e)
                {
                    out.println("Error: " + e.getMessage());
                }

            %>
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
        </div>
    </body>
</html>
