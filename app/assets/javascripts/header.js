var Header = Header || {};

Header.Init = function(){
	Header._bar = DOM._headerBar;
	Header._navIcon = DOM._headerNavIcon;
	Header._navMenu = DOM._headerNavMenu;

	Header._navIcon.click(Header.ToggleMenu);
}

Header.ToggleMenu = function(){
	var isOpen = Header._navMenu.hasClass("anim_roll_down");
	isOpen ? Header.CloseMenu() : Header.OpenMenu();

	Header._navIcon.toggleClass('open');
}
Header.OpenMenu = function(){
	var navMenu = Header._navMenu;
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();
}
Header.CloseMenu = function(){
	var navMenu = Header._navMenu;
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();

	Header._navIcon.removeClass('open');
}

Header.OnResize = function(){
	Header.CloseMenu();
}

// Header.Update = function(scrollCutoff){
// 	var scrollPosition = DOM._window.scrollTop();
// 	var headerBar = Header._bar;
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