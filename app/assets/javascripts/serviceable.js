

$(document).ready(function(){

	$('.chat-notification-icon').click(function(){
		$('.chat-notification-icon').toggleClass('active');
		$('.right-sidebar').toggleClass('hidden');
		$('.workspace').toggleClass('wide');
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

	//   Textarea Resize
	jQuery.each(jQuery('textarea[data-autoresize]'), function() {
		var offset = this.offsetHeight - this.clientHeight;
		var resizeTextarea = function(el) {
			jQuery(el).css('height', 'auto').css('height', el.scrollHeight + offset);
		};
		jQuery(this).on('keyup input', function() { resizeTextarea(this); }).removeAttr('data-autoresize');
	});

	// Fire.
	screenClass();

	// And recheck if window gets resized.
	$(window).on('resize',function(){
		screenClass();
	});
});

// Adds and removes body class depending on screen width.
function screenClass() {
	if($('.workspace').innerWidth() < 1175) {
		$('.panel1').addClass('scale-step-1');
	} else {
		$('.panel1').removeClass('scale-step-1');
	}
}
