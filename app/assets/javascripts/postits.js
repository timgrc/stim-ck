$(function() {
  $(".postit").draggable({
    stop: function() {
      $.ajax({
        type: "PATCH",
        url: "postits/" + $(this).data('id'),
        data: {
          "postit": {
            "position_top": $(this).position().top,
            "position_left": $(this).position().left
          }
        },
        dataType: 'json',
        success: function(data) {
        }
      });
    }
  });

  setTimeout(function(){
     window.location.reload(1);
  }, 10000);
});
