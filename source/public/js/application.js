$(document).ready(function(){
    $('#get_color').click(function(event){
      event.preventDefault();
        $.post('/color', function(response){
          $("#color_me li:nth-child(" + response.cell +")").css( "background-color", response.color );
        }, 'json');
    });
});

