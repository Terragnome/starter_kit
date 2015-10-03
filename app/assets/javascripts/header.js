var Header = Header || {};

Header.Init = function(url){
	$(".nav_menu_button").click(Header.ToggleMenu);
	Header.isMenuOpen = false;
	$("#header_bar").find(".nav_button").click(Header.CloseMenu);
}

Header.ToggleMenu = function(){
	Header.isMenuOpen ? Header.CloseMenu() : Header.OpenMenu();
	Header.isMenuOpen = !Header.isMenuOpen;
}
Header.OpenMenu = function(){
	var navMenu = $(".nav_menu");
	if( navMenu && !navMenu.hasClass("anim_roll_down") ){
		navMenu.addClass("anim_roll_down");
	}
	navMenu.show();
}
Header.CloseMenu = function(){
	var navMenu = $(".nav_menu");
	if( navMenu && navMenu.hasClass("anim_roll_down") ){
		navMenu.removeClass("anim_roll_down");
	}
	navMenu.hide();
}

Header.OnResize = function(){
	Header.CloseMenu();
}