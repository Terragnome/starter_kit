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
//= rewuire lib.typeahead.bundle.min
//= require_tree .

var Application = Application || {};

Application.init = function(){
	$.turbo.use('pjax:start', 'pjax:end');

	window.wiselinks = new Wiselinks($('#scene_body'));

	DOM.init();
	DOM._document.off('page:loading').on('page:loading', Application.onPageLoading);
	DOM._document.off('page:redirected').on('page:redirected', Application.onPageRedirected);
	DOM._document.off('page:always').on('page:always', Application.onPageAlways);
	DOM._document.off('page:done').on('page:done', Application.onPageDone);
	DOM._document.off('page:fail').on('page:fail', Application.onPageFail);

	Input.init();
	Scroll.init(250);
	Blocker.init(DOM._blocker);
	Header.init();

	Application.initResize();
	Application.sceneTop = DOM._scene.css('top');

	PostFeed.init();
	Post.init($("body"));
}

Application.onPageLoading = function(e, target, render, url){
	Application.showLoader();
	Header.closeMenu();
	Scroll.autoScrollTo(0);
}
Application.onPageRedirected = function(e, target, render, url){}
Application.onPageDone = function(e, target, render, url){}
Application.onPageFail = function(e, target, render, url){}
Application.onPageAlways = function(e, target, render, url){
	Application.hideLoader();

	Scroll.autoScrollTo(
		DOM._header.offset().top+DOM._header.height()-DOM._headerBar.height()
	);
}

Application.initResize = function(){
	DOM._window.resize(Header.onResize);
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
	DOM._header.show();
}

Application.updateDescription = function(m){
	DOM._appDescription.content(m);
}

$(Application.init);