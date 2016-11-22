$(document).ready(function(){
  $('.chat-notification-icon').click(function(){
    $('.chat-notification-icon').toggleClass('active');
    $('.right-sidebar').toggleClass('hidden');
    $('.workspace').toggleClass('wide');
  });
  

    $('.workspace').toggleClass('one');
    $('.workspace').toggleClass('two');
  }); 
  });

    $('.loading-overlay').fadeToggle("fast","linear");
    $('.loader').fadeToggle("fast","linear");
    $('.loader2').fadeToggle("fast","linear");
    $('.test-loading-toggle').fadeToggle("fast","linear");
  });   
  });

    $('.loading-overlay').fadeToggle("fast","linear");
    $('.loader').fadeToggle("fast","linear");
    $('.loader2').fadeToggle("fast","linear");
    $('.test-loading-toggle').fadeToggle("fast","linear");
  });    
  });


  
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
  

