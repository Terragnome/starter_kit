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

	$(document).off('page:loading').on('page:loading', Application.OnPageLoading);
	$(document).off('page:redirected').on('page:redirected', Application.OnPageRedirected);
	$(document).off('page:always').on('page:always', Application.OnPageAlways);
	$(document).off('page:done').on('page:done', Application.OnPageDone);
	$(document).off('page:fail').on('page:fail', Application.OnPageFail);

	Application.InitResize();
	Application.InitScroll(100);
	Application.autoPageScroll = null;

	Header.Init();
}

Application.StartScroll = function(pos){
	Application.StopScroll();

	var curScroll = $('body').scrollTop();
	var distance = Math.abs(curScroll-pos);

	Application.autoPageScroll = $('body').animate(
		{
			scrollTop: pos,
		},
		{
			duration: distance/2.5,
			start: Application.DisableManualScroll,
			always: Application.EnableManualScroll,
		}
	);
}

Application.StopScroll = function(){
	if(Application.autoPageScroll) Application.autoPageScroll.stop();
}

Application.OnPageLoading = function(e, target, render, url){}

Application.OnPageRedirected = function(e, target, render, url){}

Application.OnPageAlways = function(e, target, render, url){
	Application.StartScroll(370);
}

Application.OnPageDone = function(e, target, render, url){}
Application.OnPageFail = function(e, target, render, url){}

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

Application.InitResize = function(){
	$(window).resize(function (){
		Header.OnResize();
	});
}

var scrollTimeout;
Application.InitScroll = function(scrollTimeoutInterval){
	$(document).scroll(function(){
	    if(scrollTimeout){
	    		Application.GreedyOnScroll();
	        clearTimeout(scrollTimeout);
	        scrollTimeout = null;
	    }
	    scrollTimeout = setTimeout(Application.OnScroll, scrollTimeoutInterval);
	});
}

Application.GreedyOnScroll = function(){
	Application.UpdateTitle();
}

Application.EnableManualScroll = function(){
	$('html, body').off('scroll touchmove mousewheel');
}

Application.DisableManualScroll = function(){
	$('html, body').on('scroll touchmove mousewheel', function(e){
	  e.preventDefault();
	  e.stopPropagation();
	  return false;
	});
}

Application.OnScroll = function() {
	Application.StopScroll();

	// Application.UpdateHeaderBar(230);
	// PostFeed.OnScroll();
}

Application.UpdateTitle = function(){
	var scrollPosition = $(window).scrollTop();
	var headerTitle = $("#header_title");

	if(scrollPosition > 0){
		headerTitle.addClass("anim_fade_out");
		headerTitle.removeClass("anim_fade_in");		
	}else{
		headerTitle.addClass("anim_fade_in");
		headerTitle.removeClass("anim_fade_out");
	}
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