// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require wiselinks
//= require_tree .

var Application = Application || {};

Application.Init = function(){
	window.wiselinks = new Wiselinks($('#scene_body'));
	$(document).ajaxStart(Application.OnAjaxStart);
	$(document).ajaxComplete(Application.OnAjaxComplete);
	Application.InitResize();
	Application.InitScroll(100);
	Header.Init();
}

Application.ToggleObjDisplay = function(obj){ Application.SetObjDisplay(obj, (obj.css('display')=='none')); }
Application.SetObjDisplay = function(obj, isOn){
	if(obj != null){
		if(isOn){
			obj.css('display', 'block');
		}else{
			obj.css('display', 'none');
		}
	}
}

Application.GetBlocker = function(){ return $('#blocker'); }
Application.ToggleBlocker = function(){ Application.SetBlockerDisplay(Application.GetBlocker(), (obj.css('display')=='none')); }
Application.SetBlockerDisplay = function(isOn){
	var blocker = Application.GetBlocker();
	if(isOn){
		$('html,body').css('pointer-events', 'none');
		blocker.fadeIn('fast', function(){ Application.SetObjDisplay(blocker, true); });
	}else{
		blocker.fadeOut('fast', function(){ Application.SetObjDisplay(blocker, false); });
	}
}

Application.OnAjaxStart = function(){
	// $('#scene_content').animate({opacity: 0.1}, 100);
}
Application.OnAjaxComplete = function(){
	$('html, body').animate({
		scrollTop: 0
	}, 125);

	// $('#scene_content').css('opacity', 0.1);
	// $('#scene_content').animate({opacity: 1}, 100);
	// FB.XFBML.parse();
}

Application.InitResize = function(){
	$(window).resize(function (){
		Header.OnResize();
	});
}

var scrollTimeout;
Application.InitScroll = function(scrollTimeoutInterval){
	$(document).scroll(function (){
	    if(scrollTimeout){
	        clearTimeout(scrollTimeout);
	        scrollTimeout = null;
	    }
	    scrollTimeout = setTimeout(Application.OnScroll, scrollTimeoutInterval);
	});

}

Application.OnScroll = function () {
	// Application.UpdateHeaderBar(230);
	// PostFeed.OnScroll();
}

// Application.UpdateHeaderBar = function(scrollCutoff){
// 	var scrollPosition = $(window).scrollTop();
// 	var headerBar = $("#header_bar");
// 	if(scrollPosition >= scrollCutoff){
// 		if( !headerBar.hasClass("anim_roll_down") ){
// 			headerBar.show();
// 			headerBar.addClass("anim_roll_down");
// 			headerBar.removeClass("anim_roll_up");
// 		}
// 	}else{
// 		if( !headerBar.hasClass("anim_roll_up") ){
// 			headerBar.addClass("anim_roll_up");
// 			headerBar.removeClass("anim_roll_down");
// 		}
// 	}
// }

$(Application.Init);