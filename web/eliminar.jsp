<%-- 
    Document   : eliminar
    Created on : 4/08/2021, 03:41:32 PM
    Author     : patogr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="conexion.base"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
        int id =Integer.parseInt(request.getParameter("idPer"));
        
            base bd = new base();
            try {
            bd.conectar();
            String strQry = "delete from Registro where id='"+id+"'";
            int resultadoBorra = bd.borrar(strQry);
            request.getRequestDispatcher("listado.jsp").forward(request, response);
            }
            catch (Exception e){
            out.print(e.getMessage());
            }
         %>
    </body>
</html>
