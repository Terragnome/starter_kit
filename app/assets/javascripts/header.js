var Header = Header || {};

Header.Init = function(url){
	$("#nav_icon").click(Header.ToggleMenu);
	$("#header_bar").find(".nav_button").click(Header.CloseMenu);
}

Header.ToggleMenu = function(){
	var isOpen = $(".nav_menu").hasClass("anim_roll_down");
	isOpen ? Header.CloseMenu() : Header.OpenMenu();

	$("#nav_icon").toggleClass('open');
}
Header.OpenMenu = function(){
	var navMenu = $(".nav_menu");
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();
}
Header.CloseMenu = function(){
	var navMenu = $(".nav_menu");
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();
}

Header.OnResize = function(){
	Header.CloseMenu();
}