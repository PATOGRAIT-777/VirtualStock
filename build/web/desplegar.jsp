<%-- 
    Document   : desplegar
    Created on : 30/08/2021, 09:56:58 AM
    Author     : patog
--%>

<%@page import="conexion.base"%>
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
            String UsrName=request.getParameter("usr");
            String Nombre=request.getParameter("nom");
            String Pass=request.getParameter("pass");
            String apellido=request.getParameter("lsnom");
            String email=request.getParameter("email");
            String Edad=request.getParameter("age");
            String Telf=request.getParameter("tel");
            
            if(!UsrName.equals("") && !Nombre.equals("")&& !Pass.equals("")&& !apellido.equals("")&& !email.equals("")&& !Edad.equals("")&& !Telf.equals("")){
            
            base bd = new base();
            
            try{
            
                bd.conectar();
                
                String strQry = "insert into Users(usr_name, cliente_nombre, cliente_lastname, edad, email, pass, telefono) values ('"+UsrName+"', '"+Nombre+"','"+apellido+"', "+Edad+", '"+email+"','"+Pass+"' ,'"+Telf+"');";
                
                int resultadoInsert = bd.insertar(strQry);
                
                out.print("checar resultado de la base"+ resultadoInsert);
                
                }
                catch(Exception XD){
              
                    out.print(XD.getMessage());
                    
                    }
                    
            }
            
        %></s2><br>
        
        <s2><label>Nombre: <%out.println(Nombre);%></label></s2><br>
        
        <s2><label>Contraseña: <%out.println(Pass);%></label></s2><br>
       
        <s2><label> Edad: <%out.println(Edad);%></label></s2><br>
        
        <s2><label> Email: <%out.println(email);%></label></s2><br>
           
    </body>

</html>