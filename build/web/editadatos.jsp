<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Datos</h1>
        <form name="datosEdit" method="post" action="edita.jsp">
            <table border="1" widht="600">
                <tr bgcolor="#0027D8">
                    <th>Datos a modificar</th>                           
                </tr>
                <%
                    int id = Integer.parseInt(request.getParameter("idPer"));
                    base bd = new base();
                    try {
                        bd.conectar();
                        String strQry = "select * from Registro where id='"+ id +"'";
                        ResultSet rs = null;
                        rs = bd.consulta(strQry);
                        while (rs.next()) {
                %>
                    <tr>
                        <th>
                            <label for="TxtId">Código</label>
                            <input id="TxtId" type="text" name="TxtId" value="<%=rs.getString(1)%>" readonly="readonly"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label for="TxtNombre">Nombre</label>
                            <input id="TxtNombre" type="text" name="TxtNombre" value="<%=rs.getString(2)%>" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label for="TxtPaterno">Contraseña</label>
                            <input id="TxtPaterno" type="text" name="TxtPaterno" value="<%=rs.getString(3)%>" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label for="TxtMaterno">Edad</label>
                            <input id="TxtMaterno" type="text" name="TxtMaterno" value="<%=rs.getString(4)%>"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label for="TxtEdad">Email</label>
                            <input id="TxtEdad" type="text" name="TxtEdad" value="<%=rs.getString(5)%>" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <input id="BtnEditar" name="BtnEditar" type="submit" value="Actualizar Datos"/>
                        </th>
                    </tr>
                <%
                    }
                        } catch (Exception ex) {
                            out.print(ex.getMessage());
                        }
                %>    
            </table>
        </form>
    </body>
</html>