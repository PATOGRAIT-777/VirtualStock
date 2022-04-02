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
            String nombre=request.getParameter("nombre");
            String tipo=request.getParameter("tipo");
            String precioC=request.getParameter("precioC");
            String precioV=request.getParameter("precioV");
            String marca=request.getParameter("marca");
            String modelo=request.getParameter("modelo");
            String unidades=request.getParameter("unidades");
            String lote=request.getParameter("lote");
            String fecha=request.getParameter("fecha");

        
            base bd = new base();
            try {
            bd.conectar();
            String strQry = "insert into productos (prod_name, clasificacion, precio_Compra, precio_Venta, marca, modelo, cantidad, lote, fecha_Cad)"
                    + " values('" + nombre + "', '" + tipo + "', '" + precioC + "', '" + precioV + "', '" + marca + "', '" + modelo + "', '" + unidades + "', '" + lote + "', '" + fecha + "');";
            int resultadoInserta = bd.insertar(strQry);
            request.getRequestDispatcher("listado.jsp").forward(request, response);
            }
            catch (Exception e){
            out.print(e.getMessage());
            }
         %>
    </body>
</html>