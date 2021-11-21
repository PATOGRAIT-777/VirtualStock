<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Principal.css">
        <title>JSP Page</title>
    </head>
    <body>
        <s2>Lista de personas</s2>
        <table border="1" >
            <tr>
                <th colspan="4"> Agregar persona</th>
                <th>
                    <a href="formulario.html"><img src="img/extras/agreg.png" widht="50" height="50"></a> 
                </th>
            </tr>
            <tr bgcolor="#0027D8">
                <th>Nombre</th>
                <th>Contrase&ntilde;a</th>
                <th>Edad</th>
                <th>Email</th>
            </tr>
            <%
            base bd = new base();
            try {
                bd.conectar();
                String strQry = "select * from Registro";
                ResultSet rs = null;
                int idPer;
                rs = bd.consulta(strQry);
                while (rs.next()){
                    idPer = Integer.parseInt(rs.getString(1));
            %>
                    <tr>
                        <th> <%=rs.getString(2)%></th>
                        <th> <%=rs.getString(3)%> </th>
                        <th> <%=rs.getString(4)%></th>
                        <th> <%=rs.getString(5)%></th>
                        <th>
                            <a href="editadatos.jsp?idPer=<%=idPer%>"><img src="img/extras/edit.png" widht="50" height="50"></a>
                            <a href="eliminar.jsp?idPer=<%=idPer%>"><img src="img/extras/quit.png" widht="50" height="50"></a>
                        </th>
                    </tr>
            <%
                }
                rs.close();
                bd.cierraConexion();
            } catch (Exception ex){
                out.print(ex.getMessage());
            }
            %>
        </table>
    </body>
</html>