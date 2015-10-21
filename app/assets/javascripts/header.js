var Header = Header || {};

Header.Init = function(){
	DOM._headerNavIcon.click(Header.ToggleMenu);
}

Header.ToggleMenu = function(){
	Blocker.Toggle();
	var isOpen = DOM._headerNavMenu.hasClass("anim_roll_down");
	isOpen ? Header.CloseMenu() : Header.OpenMenu();

	DOM._headerNavIcon.toggleClass('open');
}
Header.OpenMenu = function(){
	var navMenu = DOM._headerNavMenu;
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();
}
Header.CloseMenu = function(){
	var navMenu = DOM._headerNavMenu;
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();

	DOM._headerNavIcon.removeClass('open');
}

Header.OnResize = function(){
	Header.CloseMenu();
}

// Header.Update = function(scrollCutoff){
// 	var scrollPosition = DOM._window.scrollTop();
// 	var headerBar = DOM._headerBar;
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