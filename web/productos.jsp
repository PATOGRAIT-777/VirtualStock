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
        <script language="javascript">
            var images = ['img/temporada/ejemplo1.jpg', 'img/temporada/ejemplo2.jpg', 'img/temporada/ejemplo3.jpg'], cont = 0;

            function carrousel(contenedor){
                contenedor.addEventListener('click', e => {
            let back = contenedor.querySelector('.back');
                next = contenedor.querySelector('.next');
                img = contenedor.querySelector('img');
                tgt = e.target;

        if(tgt == back){
            if(cont > 0){
                img.src = images[cont - 1];
                cont--;
            } else {
                img.src = images[images.length - 1];
                cont = images.length - 1;
            }
        } else if(tgt == next){
            if(cont < images.length - 1){
                img.src = images[cont + 1];
                cont++;
            } else {
                img.src = images[0];
                cont = 0;
                }
            }
            });
        }
            document.addEventListener('DOMContentLoaded', () => {
            let contenedor = document.querySelector('.contenedor');
            carrousel(contenedor);
            });
        </script>
        //ligar las variables con la base de datos
        <script>
            const g = document.querySelector('g');
            g.onmouseover = logMouseOver;
            g.onmouseout = logMouseOut;

            function logMouseOver() {
            g.textContent = 'Agregar al carrito';
            g.textContent = 'Quedan ' + (contador) + ' productos';
            }

            function logMouseOut() {
            g.textContent = 'Precio ' + (precio);	
            g.textContent = 'Nombre ' + (nombre);
            g.textContent = 'Marca/Modelo ' + (marca);
            }
        </script>

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

        <div class="products">
            //Asigna la unidad replicar depende de la cantidad de productos que se quieran mostrar
            <div class="productounit">
                <button class="addcart">               
                    <img src="img/productos/1.jpg" alt="product" height="" width=""> </img>
                <g>
                    //Valores default
                    <m1>Precio</m1>
                    <br>
                    <m2>Nombre</m2>
                    <br>
                    <m3>Marca/Modelo</m3>
                </g>
                </button>
            </div>
        </div>
    </body>
</html>
