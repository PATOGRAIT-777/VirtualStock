<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    int idpersona = (Integer) (miSessiondelUsuario.getAttribute("idPerI") == null ? 0 : miSessiondelUsuario.getAttribute("idPerI"));
    int identifier = (Integer)(miSessiondelUsuario.getAttribute("identifier") == null ? 0 : miSessiondelUsuario.getAttribute("identifier"));
    String nombre = "";
    if (identifier == 0){
        if (idpersona<1)
            response.sendRedirect("formulario.jsp");
        base bd = new base();
        bd.conectar();
        String strQry = "Select * from Users where id_usuario = '"+idpersona+"'";
        ResultSet rsDatosPer = bd.consulta(strQry);
        if(rsDatosPer.next())
            nombre = rsDatosPer.getString(2);
    }
    else
        response.sendRedirect("admin.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/divs.css" type="text/css">
    <link rel="stylesheet" href="css/letras.css" type="text/css">
    <link rel="stylesheet" href="css/imagExtras.css" type="text/css">
    <title>Reg@los</title>
    </head>
    <body>
        <div class="cuerpo4">
            <p><s3>Bienvenido <%=nombre%> eres CLIENTE</s3></p><br><br>
            <p><img class="imagg" src="img/gifs/saly.gif" alt="regalo"><br><br></p>
            <p><s1>Lista de deseados</s1><br>
            <s5>Por el momento se encuentra vacia</s5><br><br></p>
            <p><s2>Desea cerrar sesion presione el boton</s2></p><br><br><br>
            <p><a href="salir.jsp"><input type="button" class="forms" value="Cerrar Sesion"></a></p>
        </div>
    </body>
</html>