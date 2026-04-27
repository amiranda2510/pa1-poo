<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page2</title>
    </head>
    <body>
        <% String figura = (String) session.getAttribute("figura"); %>
        <form action="ejercicio4" method="POST">
            <h1>Figuras Geométricas </h1>
            <h2>Elige la figura que desees resolver:</h2>
            <button type="submit" name="btnFigura" value="1">Cuadrado</button>
            <button type="submit" name="btnFigura" value="2">Rectángulo</button>
            <button type="submit" name="btnFigura" value="3">Triángulo</button>
            <button type="submit" name="btnFigura" value="4">Rombo</button>
            <button type="submit" name="btnFigura" value="5">Trapecio</button>
            <br/>
            <br/>
            
            <% if ("1".equals(figura)) { %>
                <label>Lado:</label>
                <input type="text" name="inValor1"/><br/>
            <% } else if ("2".equals(figura)) { %>
                <label>Base:</label>
                <input type="text" name="inValor1"/><br/>
                <label>Altura:</label>
                <input type="text" name="inValor2"/><br/>
            <% } else if ("3".equals(figura)) { %>
                <label>Base:</label>
                <input type="text" name="inValor1"/><br/>
                <label>Altura:</label>
                <input type="text" name="inValor2"/><br/>
                <label>Lado 1:</label>
                <input type="text" name="inValor3"/><br/>
            <% } else if ("4".equals(figura)) { %>
                <label>Diagonal mayor:</label>
                <input type="text" name="inValor1"/><br/>
                <label>Diagonal menor:</label>
                <input type="text" name="inValor2"/><br/>
                <label>Lado 1:</label>
                <input type="text" name="inValor3"/><br/>
                <label>Lado 2:</label>
                <input type="text" name="inValor4"/><br/>
            <% } else if ("5".equals(figura)) { %>
                <label>Base mayor:</label>
                <input type="text" name="inValor1"/><br/>
                <label>Base menor:</label>
                <input type="text" name="inValor2"/><br/>
                <label>Altura:</label>
                <input type="text" name="inValor3"/><br/>
                <label>Lado 1:</label>
                <input type="text" name="inValor4"/><br/>
            <% } %>
            <label>Área: ${sResponse}</label>
            <br/>
            <label>Perímetro: ${sResponse2}</label>
            <br/>
            <button type="submit">Calcular</button>
        </form>
    </body>
</html>
