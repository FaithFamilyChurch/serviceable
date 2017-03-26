$(document).ready(function(){

  $(document).keyup(function(e) {
       if (e.keyCode == 27) { // escape key maps to keycode `27`
          $('.panel').removeClass('fullscreen');
          $('.top-bar-area').removeClass('hide');
          $('.headerBar').removeClass('hide');
      }
  });  
  
  $('.hide-news').click(function(){
    $('.news-notifications').toggleClass('hide');
    $('.this-week-schedule').toggleClass('news-hidden');
    $('.news-icon').toggleClass('hide');    
  });

  $('.news-icon').click(function(){
    $('.news-notifications').toggleClass('hide');
    $('.this-week-schedule').toggleClass('news-hidden');
    $('.news-icon').toggleClass('hide');    
  });  
  
  $('.chat-notification-icon').click(function(){
    $('.chat-overlay').toggleClass('invisible');
    $('.chat-notification-icon').toggleClass('open');
  });
  
  $('.panel-fullscreen').click(function(){
    $(this).closest('.panel').toggleClass('fullscreen');
    $('.top-bar-area').toggleClass('hide');
    $('.headerBar').toggleClass('hide');
  }); 
  
  $('.orderOfService .event').mouseup(function(){
    $('.orderOfService .event').removeClass('track-this');
    $(this).addClass('track-this');
  });  
  
  $('.toggle-oos-important').click(function(){
    $(this).toggleClass('fade');
    $('.important').toggleClass('hide');
  });  
  
  $('.toggle-oos-bookmark').click(function(){
    $(this).toggleClass('fade');
    $('.bookmark').toggleClass('hide');
  });  
  
  $('.toggle-oos-sound').click(function(){
    $(this).toggleClass('fade');
    $('.sound').toggleClass('hide');
  });  
  
  $('.toggle-oos-lights').click(function(){
    $(this).toggleClass('fade');
    $('.lights').toggleClass('hide');
  });
  
  $('.menu a').click(function(){
    $('.workspace').toggleClass('one');
    $('.workspace').toggleClass('two');
  }); 
  
  $('.test-loading-toggle').click(function(){
    $('.loading-overlay').fadeToggle("fast","linear");
    $('.loader').fadeToggle("fast","linear");
    $('.loader2').fadeToggle("fast","linear");
    $('.test-loading-toggle').fadeToggle("fast","linear");
  });   
  
  $('.loading-overlay').click(function(){
    $('.loading-overlay').fadeToggle("fast","linear");
    $('.loader').fadeToggle("fast","linear");
    $('.loader2').fadeToggle("fast","linear");
    $('.test-loading-toggle').fadeToggle("fast","linear");
  });   
  
  $('.panelsection-edit-songs').click(function(){
    $('.add-to-song-list').addClass("show");
    $('.modal-overlay').addClass("show");
  }); 
  
  $('.panelsection-edit-participants').click(function(){
    $('.add-edit-participants').addClass("show");
    $('.modal-overlay').addClass("show");
  }); 
  
  $('.panelsection-order-of-service').click(function(){
    $('.add-order-of-service').addClass("show");
  });    
  
  $('.close-subpanel').click(function(){
    $('.subPanel').removeClass("show");
    $('.modal-overlay').removeClass("show");
//     $('.headerBar').removeClass("collapsed");
//     $('.workspace').removeClass("menuBarCollapsed");
  });    
  
  $('.headerBarLock').click(function(){
    $('.headerBar').toggleClass("collapsed");
    $('.workspace').toggleClass("menuBarCollapsed");
    $('.top-bar-area').toggleClass("menuBarCollapsed");
    $('.headerBarLock i').toggleClass("zmdi-lock-open");
    $('.headerBarLock i').toggleClass("zmdi-lock");
    $('.top-bar-area').toggleClass("menuBarCollapsed");
    $('.chat-overlay').toggleClass("collapsed-menu");
  });     
  
  $('.headerBar').dblclick(function(){
    $('.headerBar').toggleClass("collapsed");
    $('.workspace').toggleClass("menuBarCollapsed");
    $('.top-bar-area').toggleClass("menuBarCollapsed");
    $('.headerBarLock i').toggleClass("zmdi-lock-open");
    $('.chat-overlay').toggleClass("collapsed-menu");
  });  
  
//   Textarea Resize

  jQuery.each(jQuery('textarea[data-autoresize]'), function() {
    var offset = this.offsetHeight - this.clientHeight;

    var resizeTextarea = function(el) {
        jQuery(el).css('height', 'auto').css('height', el.scrollHeight + offset);
    };
    jQuery(this).on('keyup input', function() { resizeTextarea(this); }).removeAttr('data-autoresize');
  });

  // Adds and removes body class depending on screen width.
  function screenClass() {
    if($('.workspace').innerWidth() < 1175) {
      $('.panel1').addClass('scale-step-1');
    } else {
      $('.panel1').removeClass('scale-step-1');
    }
  }

  // Fire.
  screenClass();

  // And recheck if window gets resized.
  $(window).bind('resize',function(){
    screenClass();
  });
  
});