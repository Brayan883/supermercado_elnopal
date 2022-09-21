// $(document).ready(function(){
//   $("#myInput").on("keyup", function() {
//     let value = $(this).val().toLowerCase();
//     $(".myDIV .blog-inner").filter(function() {
//       console.log($(this));
//      let campos_agregar = $(this).text().toLowerCase().indexOf(value) > -1;
//      console.log(campos_agregar);
//       if(campos_agregar === false){
//           document.getElementById('alerta_busqueda').style = 'display:block !important;'
//       }else{
//         document.getElementById('alerta_busqueda').style = 'display:none !important; '
//         console.log(campos_agregar);
//       }
//       $(this).toggle(campos_agregar)
//     });
//   });
// });

$(document).ready(function(){
  $('#myInput').keyup(function(){
     var nombres = $('.nombres');
     var buscando = $(this).val();
     var item='';
     for( var i = 0; i < nombres.length; i++ ){
         item = $(nombres[i]).html().toLowerCase();
          for(var x = 0; x < item.length; x++ ){
              if( buscando.length == 0 || item.indexOf( buscando ) > -1 ){
                  $(nombres[i]).parents('.myDIV .card').show()
                  console.log(item.indexOf( buscando ) > -1 );
                  document.getElementById('alerta_busqueda').style = 'display:none !important; '
              }else{
                  $(nombres[i]).parents('.myDIV .card').hide()
                  console.log(item.indexOf( buscando ) > -1);
                  document.getElementById('alerta_busqueda').style = 'display:block !important;'
              }
          }
     }
  });
});