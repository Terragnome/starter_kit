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
//= require lib/typeahead.bundle.min
//= require_tree ./core
//= require_tree ./components
//= require_tree .

var Application = Application || {};

Application.init = function(){
	console.log("APPLICATION");

	$.turbo.use('pjax:start', 'pjax:end');

  history.scrollRestoration = 'manual';

	window.wiselinks = new Wiselinks($('#scene_body'));

	DOM.init();
	Input.init();
	Scroll.init(250);
	Blocker.init(DOM._blocker);
	Header.init();

	Application.sceneTop = DOM._scene.css('top');

	DOM._document.off('page:loading').on('page:loading', Application.onPageLoading);
	DOM._document.off('page:redirected').on('page:redirected', Application.onPageRedirected);
	DOM._document.off('page:always').on('page:always', Application.onPageAlways);
	DOM._document.off('page:done').on('page:done', Application.onPageDone);
	DOM._document.off('page:fail').on('page:fail', Application.onPageFail);
	DOM._window.resize(Header.onResize);

	$.holdReady(false);
}

Application.updateDescription = function(m){
	DOM._appDescription.content(m);
}

Application.onPageLoading = function(e, target, render, url){
	Application.showLoader();
	Header.closeMenu();
	Scroll.scrollTo(0);
}
Application.onPageRedirected = function(e, target, render, url){}
Application.onPageDone = function(e, target, render, url){}
Application.onPageFail = function(e, target, render, url){}
Application.onPageAlways = function(e, target, render, url){
	Application.hideLoader();
	Scroll.scrollTo(DOM.getPageTop());	
}

Application.showLoader = function(){
	DOM._sceneLoader.show();
	DOM._scene.css('top', 0);
	DOM._sceneBody.hide();
	DOM._header.hide();
}

Application.hideLoader = function(){
	DOM._sceneLoader.hide();
	DOM._scene.css('top', Application.sceneTop);
	DOM._sceneBody.show();
	DOM._sceneBody.addClass("anim_fade_in");
	DOM._header.show();
}

$(Application.init);