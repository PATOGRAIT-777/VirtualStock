<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Principal.css">
        <title>JSP Page</title>
    </head>
    <body>
    <s1>Buscar personas</s1><br>
    <s2>
        Escribe los datos de la persona a buscar
    </s2>
    <br>
    <form name="datosBuscar" method="post" action="consul.jsp">
        <table border="1" widhth="600">
            <tr bgcolor="#0027D8">
                <th><s2>Datos</s2></th>
            </tr>
            <form action="consul.jsp" method="POST" name="inSes"> 
            <tr>
                <th> <label for="Nombre"><s2> Nombre:</s2></label>
                    <input id="Nombre" type="text" name="nombre" required>
                </th>
            </tr>
            <tr>
                <th>
                    <input id="Buscar" type="submit" value="Buscar">
                <th>
            </tr>
        </table>
        </form>
    </body>
</html>