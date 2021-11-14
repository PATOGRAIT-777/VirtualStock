<%-- 
    Document   : newjsp
    Created on : 4/08/2021, 03:41:32 PM
    Author     : patog
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    miSessiondelUsuario.invalidate();
    response.sendRedirect("Ejecutar Este.html");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PezKBonis S.A.</title>
    </head>
    <body>
    </body>
</html>

