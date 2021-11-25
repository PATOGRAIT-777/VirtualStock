<%@page import="conexion.base"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Persona</h1>
        <table border="1" widhth="600">
            <tr bgcolor="#0027D8">
                <th> Datos Persona:</th>
            </tr> 
        <%
            String nombre=request.getParameter("nombre");
            base bd = new base();
            try{
                bd.conectar();
                String strQry= "select * from Registro where nombre ='"+nombre+"'";
                ResultSet rs = null;
                    rs = bd.consulta(strQry);
                    while (rs.next()){
        %>
                        <tr>
                            <th> 
                                Codigo <%=rs.getString(1)%>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                Contraseña: <%=rs.getString(2)%>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                Nombre: <%=rs.getString(3)%>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                Puesto: <%=rs.getString(4)%>
                            </th>
                        </tr>
                        <tr>
                            <th> 
                                Sueldo: <%=rs.getString(5)%>
                            </th>
                        </tr>
        <%
                    }
                } catch (Exception ex){
                    out.print("No existe el registro");
                }
        %>
    </body>
</html>