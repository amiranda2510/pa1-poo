<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Entradas Para el Teatro</h1>
        <form action="ejercicio5" method="POST" >
            <label>Seleccione el tipo de entrada</label>
            <select name="perfil">
                <option value="NINO">Niño</option>
                <option value="ADOLESCENTE">Adolescente</option>
                <option value="ADULTO">Adulto</option>
                <option value="MAYOR">Adulto Mayor</option>
            </select><br>
            
            <label>Ingrese la cantidad de entradas</label>
            <input type="text" name="txtNumEntradas" ><br>
            
            <label>Ingrese el día</label>
            <select name="dia">
                <option value="LUNES">Lunes</option>
                <option value="MARTES">Martes</option>
                <option value="MIERCOLES">Miercoles</option>
                <option value="JUEVES">Jueves</option>
                <option value="VIERNES">Viernes</option>
                <option value="SABADO">Sabado</option>
                <option value="DOMINGO">Domingo</option>
            </select><br><br>
            
            <button type="submit">Calcular Costo</button>
        </form>
        
        <hr>
        <h3>Datos ingresados:</h3>
        <p>Rango de edad seleccionado: <b>${resRangoEdad}</b></p>
        <p>Cantidad de entradas: <b>${resNumEntradas}</b></p>
        <p>Precio regular: <b>${resPrecioEntradas}</b></p>
        <p>Descuento aplicado: <b>${resDescuento}</b></p>
        <p>Precio Total a Pagar: <b>${resPrecioFinal}</b></p>
    </body>
</html>
