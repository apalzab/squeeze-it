$(".squeezes.new, .squeezes.edit").ready(function() {
   $('.lights span').click(function() {
      if ( $(this).attr('class') == 'off' ) {
        $(this).removeClass('off');
        $(this).addClass('on');
        $('body').css('background', 'rgba(0,0,0,.8)');
      } else {
        $(this).removeClass('on');
        $(this).addClass('off');
        $('body').css('background', 'white');
      }
   });
});
