<%-- 
    Document   : productos
    Created on : 31 mar 2022, 15:19:30
    Author     : XNigh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user scalable=no, initial-scale=1.0, minium-scale=1.0, maximum-scale=1.0" >
        <link rel="stylesheet" href="css/divs.css" type="text/css">
        <link rel="stylesheet" href="css/letras.css" type="text/css">
        <link rel="stylesheet" href="css/imgExtras.css" type="text/css">
        <link rel="stylesheet" href="css/carrusel.css" type="text/css">
        <script language="JavaScript" type="text/JavaScript"></script>
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script>
            $(function(){
            $('#login').click(function(){
               $(this).next('#login-content').slideToggle();
               $(this).toggleClass('active');          
               });
            });
	    </script>
        <script src="js/carrusel.js"></script>
    </head>
    <body>
        <h1>Productos</h1>
        <div class="contenedor">
            <div class="backbutton">
                &#60
            </div>
            <div class="nextbutton">
                &#62
            </div>

            <img src="img/productos/1.jpg" alt="product" id="product" height="" width="">
            
        </div>
    </body>
</html>
