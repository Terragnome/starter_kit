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

	DOM.Init();
	DOM._document.off('page:loading').on('page:loading', Application.OnPageLoading);
	DOM._document.off('page:redirected').on('page:redirected', Application.OnPageRedirected);
	DOM._document.off('page:always').on('page:always', Application.OnPageAlways);
	DOM._document.off('page:done').on('page:done', Application.OnPageDone);
	DOM._document.off('page:fail').on('page:fail', Application.OnPageFail);

	Input.Init();
	Scroll.Init(250);
	Blocker.Init(DOM._blocker);
	Header.Init();

	Application.InitResize();
	Application.sceneTop = DOM._scene.css('top');

	Post.Init();
	PostFeed.Init();
}

Application.OnPageLoading = function(e, target, render, url){
	DOM._sceneLoader.show();
	DOM._scene.css('top', 0);
	DOM._sceneBody.hide();
	DOM._header.hide();

	Header.CloseMenu();
	Scroll.AutoScrollTo(0);
}
Application.OnPageRedirected = function(e, target, render, url){}
Application.OnPageDone = function(e, target, render, url){}
Application.OnPageFail = function(e, target, render, url){}
Application.OnPageAlways = function(e, target, render, url){
	DOM._sceneLoader.hide();
	DOM._scene.css('top', Application.sceneTop);
	DOM._sceneBody.show();
	DOM._header.show();

	var scrollPos = DOM._header.offset().top+DOM._header.height()-DOM._headerBar.height();
	Scroll.AutoScrollTo(scrollPos);
}

Application.InitResize = function(){
	DOM._window.resize(function (){
		Header.OnResize();
	});
}

Application.UpdateDescription = function(m){
	DOM._appDescription.content(m);
}

$(Application.Init);