<%@page import="conexion.base"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Verificador.VerifcadorEmail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/letras.css" type="text/css">
    </head>
    <body><s2>
        <%
            VerifcadorEmail  VE= new VerifcadorEmail();
            String verificador = VE.Vry();
            String UsrName=request.getParameter("usr");
            String Nombre=request.getParameter("nom");
            String Pass=request.getParameter("pass");
            String apellido=request.getParameter("lsnom");
            String emailUsr=request.getParameter("email");
            String Edad=request.getParameter("age");
            String Telf=request.getParameter("tel");
            int activate = 0;
            String Identifier = request.getParameter("Identifier");
            if(!UsrName.equals("") && !Nombre.equals("")&& !Pass.equals("")&& !apellido.equals("")&& !emailUsr.equals("")&& !Edad.equals("")&& !Telf.equals("")&& !Identifier.equals("") && !verificador.equals("")){
                base bd = new base();
                try{
                    bd.conectar();
                    String emailVry= "select * from Users where email = '"+emailUsr+"' ";
                    ResultSet emailVerifier = bd.consulta(emailVry);
                    if(emailVerifier.next())
                        response.sendRedirect("Resgistro Fallido.jsp");
                    String strQry = "insert into Users(usr_name, usuario_nombre, usuario_lastname, edad, email, pass, telefono, identificador, activacion, verificador)"
                            + " values ('"+UsrName+"', '"+Nombre+"','"+apellido+"', "+Edad+", '"+emailUsr+"','"+Pass+"','"+Telf+"', '"+Identifier+"', "+activate+", '"+verificador+"');";
                    int resultadoInsert = bd.insertar(strQry);
                    if(resultadoInsert==1)
                        out.print(verificador);
                    }
                    catch(Exception XD){
                        out.print(XD.getMessage());
                    }
                }
            
        %>
        </s2><br>
        <s2><label>Nombre: <%out.println(Nombre);%></label></s2><br>
        <s2><label>Contraseña: <%out.println(Pass);%></label></s2><br>
        <s2><label> Edad: <%out.println(Edad);%></label></s2><br>
        <s2><label> Email: <%out.println(emailUsr);%></label></s2><br>
    </body>
</html>