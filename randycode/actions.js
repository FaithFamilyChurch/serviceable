$(document).ready(function(){

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
    $('.chat-overlay').toggleClass('hidden');
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
  });     
  
  $('.headerBar').dblclick(function(){
    $('.headerBar').toggleClass("collapsed");
    $('.workspace').toggleClass("menuBarCollapsed");
    $('.top-bar-area').toggleClass("menuBarCollapsed");
    $('.headerBarLock i').toggleClass("zmdi-lock-open");
    $('.headerBarLock i').toggleClass("zmdi-lock");
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