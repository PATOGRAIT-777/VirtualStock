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