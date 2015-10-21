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

	Application._window = $(window);
	Application._document = $(document);
	Application._body = $('body');
	Application._htmlBody = $('html, body');

	Application._blocker = $("#blocker");
	Application._headerBar = $("#header_bar");
	Application._headerTitle = $("#header_title");
	Application._headerNavIcon = $("#header_nav_icon");
	Application._headerNavMenu = $("#header_nav_menu");

	Application._document.off('page:loading').on('page:loading', Application.OnPageLoading);
	Application._document.off('page:redirected').on('page:redirected', Application.OnPageRedirected);
	Application._document.off('page:always').on('page:always', Application.OnPageAlways);
	Application._document.off('page:done').on('page:done', Application.OnPageDone);
	Application._document.off('page:fail').on('page:fail', Application.OnPageFail);

	Application.InitResize();
	Application.InitScroll(100);
	Application.autoPageScroll = null;

	Header.Init();
}

Application.StartScroll = function(pos){
	Application.StopScroll();

	var curScroll = Application._body.scrollTop();
	var distance = Math.abs(curScroll-pos);

	Application.autoPageScroll = Application._body.animate(
		{
			scrollTop: pos,
		},
		{
			duration: distance/3.5,
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

Application.GetBlocker = function(){ return Application._blocker; }
Application.ToggleBlocker = function(){ Application.SetBlockerDisplay(Application.GetBlocker(), (obj.css('display')=='none')); }
Application.SetBlockerDisplay = function(isOn){
	var blocker = Application.GetBlocker();
	if(isOn){
		Application._htmlBody.css('pointer-events', 'none');
		blocker.fadeIn('fast', function(){ Application.SetObjDisplay(blocker, true); });
	}else{
		blocker.fadeOut('fast', function(){ Application.SetObjDisplay(blocker, false); });
	}
}

Application.InitResize = function(){
	Application._window.resize(function (){
		Header.OnResize();
	});
}

var scrollTimeout;
Application.InitScroll = function(scrollTimeoutInterval){
	$(document).scroll(function(){
		Application.GreedyOnScroll();

    if(scrollTimeout){
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
	Application._htmlBody.off('scroll touchmove mousewheel');
}

Application.DisableManualScroll = function(){
	Application._htmlBody.on('scroll touchmove mousewheel', function(e){
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
	var scrollPosition = Application._window.scrollTop();
	var headerTitle = Application._headerTitle;

	if(scrollPosition > 0){
		headerTitle.addClass("anim_fade_out");
		headerTitle.removeClass("anim_fade_in");		
	}else{
		headerTitle.addClass("anim_fade_in");
		headerTitle.removeClass("anim_fade_out");
	}
}

// Application.UpdateHeaderBar = function(scrollCutoff){
// 	var scrollPosition = Application._window.scrollTop();
// 	var headerBar = Application._headerBar;
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