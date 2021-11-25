<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    miSessiondelUsuario.invalidate();
    response.sendRedirect("formulario.html");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Miscelanea Gayosso</title>
    </head>
    <body>
    </body>
</html>

