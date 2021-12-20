// agregar charla
function agregar_charla(nombre, dia, horario) {
    
    var charla = new Array()
    charla.push(nombre, dia, horario)
  
    var data_act = JSON.stringify(charla)
      
      $.ajax({
          
          type: "POST",
          url: "php/agregar_charla.php",
          data: {
              "data_act": data_act,
          },
          dataType: 'json',
      })
  
      $.mobile.navigate('#home')
}
  

// borrar una sola charla
function borrar_charla(id) {

    $.ajax({
          
          type: "POST",
          url: "php/borrar_charla.php",
          data: {
              
              "id": id,
          },
          success: function() {
            alert("Charla eliminada")
        },
      })
  
    $.mobile.navigate('#home')
}



// borrar todas las charlas
$("#btn-eliminar-todo").click(function() {

   $.ajax({
       
       url: "php/borrar.php",
       dataType: 'json',
   });

   $.mobile.navigate('#home')
})
/* -------------------------------------------------------------------------- */

$(document).ready(function() {

    // mostrar artistas
    $.getJSON("php/mostrar_art.php", mostrar_db_artistas)
    
    function mostrar_db_artistas(artistas) {
        
        $.each(artistas, function(k, val) {
            
            var list_art = $('<li class="ui-li-has-thumb"></li>');
            var enlace_art = $('<a href="#artista'+val.id+'" class="ui-btn"></a>')
            enlace_art.append('<img src="img/artistas 80x80/'+val.nombre+'.jpg" alt="'+val.nombre+'">')
            enlace_art.append('<h3 class="titulo">'+val.nombre+'</h3>')
            enlace_art.append('<p>Argentino</p>')
            list_art.append(enlace_art)
            $('#list-artistas').append(list_art)

            var cont_page = $('<div data-role="page" id="artista'+val.id+'" data-theme="a"></div>')
            cont_page.append ('<div data-role="header" data-position="fixed" data-tap-toggle="false">' 
                                + '<a href="#" data-icon="back" data-iconpos="notext" data-rel="back">volver</a>' 
                                + '<h1 class="nombre-art">'+val.nombre+'</h1></div>')

            var info_page = $('<div role="main" class="artista"></div>')
            info_page.append('<img src="img/artistas/'+val.nombre+'.jpg" alt="'+val.nombre+'" width="100%">')

            var cont_texto = $('<div class="cont-texto"></div>')
            cont_texto.append('<h2>Biografía</h2>')
            cont_texto.append('<p>'+val.biografia+'</p>')

            var cont_dato = $('<div class="datos"></div>')
            cont_dato.append('<div class="dir">'
                            + '<h3>Fecha</h3><p class="fecha">'+val.fecha+'</p><p class="hora">'+val.horario+'</p>'
                            + '</div>')
            cont_texto.append(cont_dato)

            var btn_agregar_charla = document.createElement("button")
            btn_agregar_charla.innerText = "Guardar charla"
            btn_agregar_charla.addEventListener("click", (e) => {

              agregar_charla(val.nombre, val.fecha, val.horario) 
            })

            cont_page.append(info_page)


            cont_page.append(cont_texto)
            cont_page.append(btn_agregar_charla)
            cont_page.append(armar_footer())
            
            $(document.body).append(cont_page) 
        });
    }
    
    // mostrar galerías
    $.getJSON("php/mostrar_gal.php", mostrar_db_galerias)

    function mostrar_db_galerias(galerias) {

        $.each(galerias, function(k, valor){

            var list_art = $('<li class="ui-li-has-thumb"></li>')
            var enlace_art = $('<a href="#galeria'+valor.id+'" class="ui-btn"></a>')
            enlace_art.append('<img src="img/galerias 80x80/'+valor.nombre+'.jpg" alt="'+valor.nombre+'"></img>')
            enlace_art.append('<h3 class="titulo">'+valor.nombre+'</h3>')
            list_art.append(enlace_art)
            $('#list-galerias').append(list_art)

            var cont_page = $('<div data-role="page" id="galeria'+valor.id+'" data-theme="a"></div>')
            cont_page.append ('<div data-role="header" data-position="fixed" data-tap-toggle="false">' 
                                + '<a href="#" data-icon="back" data-iconpos="notext" data-rel="back">volver</a>' 
                                + '<h1 class="nombre-art">'+valor.nombre+'</h1></div>')

            var info_page = $('<div role="main" class="artista"></div>')
            info_page.append('<img src="img/galerias/'+valor.nombre+'.jpg" alt="'+valor.nombre+'" width="100%">')

            var cont_texto = $('<div class="cont-texto"></div>')
            cont_texto.append('<h2>Información</h2>')
            cont_texto.append('<p>'+valor.descripcion+'</p>')

            var cont_dato = $('<div class="datos"></div>')
            cont_dato.append('<div class="dir"><h3>Dirección</h3><p>'+valor.direccion+'</p></div>'
                            + '<div class="stand"><h3>Stand</h3><p>'+valor.stand+'</p></div>')
            cont_texto.append(cont_dato)

            cont_page.append(info_page)
            cont_page.append(cont_texto)
            cont_page.append(armar_footer())
            
            $(document.body).append(cont_page) 
        });
    }

    // footer
    function armar_footer() {

        var footer = $('<div data-role="footer" data-position="fixed" class="botones" data-tap-toggle="false"></div>')
        var cont_footer = $('<div data-role="navbar" data-iconpos="top"></div>')
        cont_footer.append('<ul><li><a href="#home" data-icon="home">Home</a></li>'
                        + '<li><a href="#artistas" data-icon="user">Artistas</a></li>'
                        + '<li><a href="#charlas" data-icon="star" id="charlas">Mis charlas</a></li></ul>')
        footer.append(cont_footer)
        return footer
    }

    // mostrar charlas
    $.getJSON("php/mostrar_charlas.php", mostrar_db_charlas)

    function mostrar_db_charlas(charlas) {

        $.each(charlas, function(k, charla){

            var list_art = $('<li></li>')
            var enlace_art = $('<a href=""></a>')
            enlace_art.append('<img src="img/artistas 80x80/'+charla.nombre+'.jpg" alt="'+ charla.nombre +'">')
            enlace_art.append('<h3 class="titulo">'+charla.nombre+'</h3>')
            enlace_art.append('<p><b>Fecha: </b>'+charla.fecha+'</p><p><b>Horario: </b>'+charla.horario+'</p>')
            
            var btn_borrar_charla = document.createElement("button")
            btn_borrar_charla.innerText = "Borrar"
            btn_borrar_charla.addEventListener("click", (e) => {

              borrar_charla(charla.id) 
            })

            enlace_art.append(btn_borrar_charla)
            list_art.append(enlace_art)
            $('#list-charlas').append(list_art)
        })
    }
})

