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
            String desnom=request.getParameter("nom");
            String despass=request.getParameter("pass");
            String desedad=request.getParameter("edad");
            String desemail=request.getParameter("email");
            
            if(!desnom.equals("") && !despass.equals("")&& !desedad.equals("")&& !desemail.equals("")){
            
            base bd = new base();
            
            try{
            
                bd.conectar();
                
                String strQry = "insert into Registro(nombre, pass, edad, correo) values ('"+desnom+"','"+despass+"','"+desedad+"', '"+desemail+"');";
                
                int resultadoInsert = bd.insertar(strQry);
                
                out.print("checar resultado de la base"+ resultadoInsert);
                
                }
                catch(Exception XD){
              
                    out.print(XD.getMessage());
                    
                    }
                    
            }
            
        %></s2><br>
        
        <s2><label>Nombre: <%out.println(desnom);%></label></s2><br>
        
        <s2><label>Contraseña: <%out.println(despass);%></label></s2><br>
       
        <s2><label> Edad: <%out.println(desedad);%></label></s2><br>
        
        <s2><label> Email: <%out.println(desemail);%></label></s2><br>
           
    </body>

</html>