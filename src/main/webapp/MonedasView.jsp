
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <h1>Pregunta 3: Conversión de Monedas</h1>
        <hr>
        <form action="ejercicio3" method="POST">
            <label>Monto a convertir:</label><br>
            <input type="text" name="txtMonto" ><br><br>
            
            <label>De:</label>
            <select name="selDe">
                <option value="SOLES">Soles (PEN)</option>
                <option value="DOLARES">Dólares (USD)</option>
                <option value="EURO">Euros (EUR)</option>
            </select>
            
            <label>A:</label>
            <select name="selA">
                <option value="DOLARES">Dólares (USD)</option>
                <option value="SOLES">Soles (PEN)</option>
                <option value="EURO">Euros (EUR)</option>
            </select><br><br>
            
            <button type="submit">Convertir Ahora</button>
        </form>
        
        <hr>
        <h3>Resultado:</h3>
        <p>El monto convertido es: <b>${resMonedas}</b></p>
        
    </body>
</html>
