
<%@page import="conexion.base"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    String usr = request.getParameter("usr");
    String pswd = request.getParameter("pass");
    if (usr == null || usr.equals(""))
        usr="0";
    if(pswd == null)
        pswd ="0";
    else{
        if (pswd.equals(""))
            pswd = "0";
    }
    if(!usr.equals("0") && !pswd.equals("0")) {
        base bd = new base();
        bd.conectar();
        String strQry = "select * from Users where usr_name ='"+usr+"' and pass ='"+pswd+"'";
        ResultSet rsValidarUsr = bd.consulta (strQry);
        if (rsValidarUsr.next()){
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int idPersona = rsValidarUsr.getInt("id_cliente"); //valores de la base de datos
            String usuario = rsValidarUsr.getString("usr_name");
            miSessiondelUsuario.setAttribute("idPerI", new Integer(idPersona));
            miSessiondelUsuario.setAttribute("cliente_nombre", usuario);
            response.sendRedirect ("cliente.jsp");
        }
    }
%>
<html>    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Miscelanea Gayosso</title>
        <link rel="stylesheet" href="css/divs.css" type="text/css">
        <link rel="stylesheet" href="css/letras.css" type="text/css">
        <link rel="stylesheet" href="css/imagExtras.css" type="text/css">
    </head>
    <body>
        <div class="divsc">
        <s1>Usuario Desconocido</s1><br><br>
        <blockquote><img class="botn" src="img/gifs/maple.gif" alt="regalo"></blockquote><br><br>
        <blockquote><s3><a href="Ejecutar Este.html">Regresar</a> </s3><br><br></blockquote>
        </div>
    </body>
</html>