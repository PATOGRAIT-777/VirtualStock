<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script language="JavaScript" type="text/JavaScript">
            const imagenes = [{
            src: 'https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5937e90a5bafe882f5bc09e6/gatitos-cesta_0.jpg',
            alt: 'Gatitos, no se puede decir más',
            nombre: 'Artículo 1',
            precio: 52
          },{
            src: 'https://www.hola.com/imagenes/estar-bien/20180925130054/consejos-para-cuidar-a-un-gatito-recien-nacido-cs/0-601-526/cuidardgatito-t.jpg',
            alt: 'Gatitos, no se puede decir más',
            nombre: 'Artículo 2',
            precio: 82
          },{
            src: 'https://www.zooplus.es/magazine/wp-content/uploads/2018/04/fotolia_169457098.jpg',
            alt: 'Gatitos, no se puede decir más',
            nombre: 'Artículo 3',
            precio: 99
          },];

        function renderizarGaleria(imagenes) {
          let html = '';

          imagenes.forEach(function(imagen){
            html += ``;
          });
        </script>
    </head>
    <body>
        
        <div class="cuerpo1">
                <div id="galeria"><img src="${imagen.src}" alt="${imagen.alt}" width="200px" />
                <h3>${imagen.nombre}</h3>
                <p>${imagen.precio}€</p></div>
        </div>
              
              
    </body>
</html>
