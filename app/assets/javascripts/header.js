var Header = Header || {};

Header.Init = function(url){
	Application._headerNavIcon.click(Header.ToggleMenu);
}

Header.ToggleMenu = function(){
	var isOpen = Application._headerNavMenu.hasClass("anim_roll_down");
	isOpen ? Header.CloseMenu() : Header.OpenMenu();

	Application._headerNavIcon.toggleClass('open');
}
Header.OpenMenu = function(){
	var navMenu = Application._headerNavMenu;
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();
}
Header.CloseMenu = function(){
	var navMenu = Application._headerNavMenu;
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();
}

Header.OnResize = function(){
	Header.CloseMenu();
}