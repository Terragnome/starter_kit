var Header = Header || {};

Header.Init = function(url){
	$(".nav_menu_button").click(Header.ToggleMenu);
	Header.isMenuOpen = false;

	$(".nav_menu").find("a").click(Header.CloseMenu);
}

Header.ToggleMenu = function(){
	Header.isMenuOpen ? Header.CloseMenu() : Header.OpenMenu();
	Header.isMenuOpen = !Header.isMenuOpen;
}
Header.OpenMenu = function(){
	var navMenu = $(".nav_menu");
	if( !navMenu.hasClass("anim_roll_down") ){
		navMenu.show();
		navMenu.addClass("anim_roll_down");
		navMenu.removeClass("anim_roll_up");
	}
}
Header.CloseMenu = function(){
	var navMenu = $(".nav_menu");
	if( !navMenu.hasClass("anim_roll_up") ){
		navMenu.removeClass("anim_roll_down");
		navMenu.addClass("anim_roll_up");
		navMenu.hide();
		// navMenu.one("transitionend", navMenu.hide);
	}
}