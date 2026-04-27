<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>

        <title>Convertidor Romano</title>

    </head>

    <body>

        <h2>Convertidor de Números Romanos</h2>

        <form action="<%= request.getContextPath() %>/ejercicio2" method="post">

            <h3>Decimal a Romano</h3>

            <input type="number" name="numero">

            <button type="submit" name="accion" value="romano">Convertir</button>

            <h3>Romano a Decimal</h3>

            <input type="text" name="romano">

            <button type="submit" name="accion" value="decimal">Convertir</button>

        </form>

        <hr>

        <%

            Object resultado = request.getAttribute("resultado");

            if (resultado != null) {

        %>

            <p>Resultado: <%= resultado %></p>

        <%
            }
        %>

    </body>

</html>

