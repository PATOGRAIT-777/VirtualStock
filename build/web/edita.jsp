<%-- 
    Document   : edita
    Created on : 4/08/2021, 03:41:32 PM
    Author     : patogr
--%>
<%@page import="conexion.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            int id = Integer.parseInt(request.getParameter("TxtId"));
            String nombre = request.getParameter("TxtNombre");
            String paterno = request.getParameter("TxtPaterno");
            String materno = request.getParameter("TxtMaterno");
            String edad = request.getParameter("TxtEdad");

            base bd = new base();

            try {
                bd.conectar();
                String strQry = "update Registro set nombre='"+nombre+"', pass='"+paterno+"', edad='"+materno+"', correo='"+edad+"' where id='"+id+"'";
                bd.edita(strQry);
                
                request.getRequestDispatcher("listado.jsp").forward(request, response);
            
            } catch (Exception ex) {

            }
        %>
    </body>
</html>
