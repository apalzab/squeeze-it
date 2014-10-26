$(".squeezes.new, .squeezes.edit").ready(function() {
   $('.lights span').click(function() {
      if ( $(this).attr('class') == 'off' ) {
        $(this).text('Turn on the lights');
        $(this).removeClass('off');
        $(this).addClass('on');
        $('body').css('background', 'rgba(0,0,0,.8)');
        $('#squeeze_title').addClass('dark');
        $('.actions .save').addClass('dark');
      } else {
        $(this).removeClass('on');
        $(this).addClass('off');
        $(this).text('Turn off the lights');
        $('body').css('background', 'white');
        $('#squeeze_title').removeClass('dark');
        $('.actions .save').removeClass('dark');
      }
   });
});
