<%-- 
    Document   : newjsp
    Created on : 4/08/2021, 03:41:32 PM
    Author     : patog
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%

    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idpersona = (Integer) (miSessiondelUsuario.getAttribute("idPerI") == null ? 0 : miSessiondelUsuario.getAttribute("idPerI"));

    if (idpersona<1){
        response.sendRedirect("iniciose.jsp");
    }

    String nombre="";
    base bd = new base();
    bd.conectar();
    String strQry = "Select * from cliente where id = '"+idpersona+"'";
    ResultSet rsDatosPer = bd.consulta(strQry);

    if(rsDatosPer.next()){

        nombre = rsDatosPer.getString(3);
    }

%>
<!DOCTYPE html>

<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/divs.css" type="text/css">
    <title>Reg@los</title>
    </head>
    <body>
        <div class="divsc">
            <p><s3>Bienvenido <%=nombre%></s3></p><br><br>
            <p><img class="imagg" src="img\saly.gif" alt="regalo"><br><br></p>
            <p><s1>Lista de deseados</s1><br>
            <s5>Por el momento se encuentra vacia</s5><br><br></p>
            <p><s2>Desea cerrar sesion precione el boton</s2></p><br><br><br>
            <p><a href="salir.jsp"><input type="button" class="botn" value="Cerrar Sesion"></a></p>
        </div>
    </body>
</html>
