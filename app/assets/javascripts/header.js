var Header = Header || {};

Header.Init = function(url){
	$(".nav_menu_button").click(Header.ToggleMenu);
	Header.isMenuOpen = false;
}

Header.ToggleMenu = function(){
	if(Header.isMenuOpen){
		Header.isMenuOpen = false;
		Header.CloseMenu();
	}else{
		Header.isMenuOpen = true;
		Header.OpenMenu();
	}
}
Header.OpenMenu = function(){
	$(".nav_menu").show();
}
Header.CloseMenu = function(){
	$(".nav_menu").hide();
}