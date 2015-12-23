var Header = Header || {};

Header.Init = function(){
	Header._bar = DOM._headerBar;
	Header._navIcon = DOM._headerNavIcon;
	Header._navMenu = DOM._headerNavMenu;

	Header._searchForm = DOM._headerSearchForm;
	Header._searchIcon = DOM._headerSearchIcon;
	Header._searchField = DOM._headerSearchField;

	Header._navIcon.click(Header.ToggleMenu);
	Header._searchIcon.click(Header.ToggleSearch);

	Header._searchField.keypress(function(e) {
	  if (e.which == 13) {
	  	Header._searchForm.submit();
	  	Header.CloseSearch();
	  }else if(e.which == 27) {
	  	Header.CloseSearch();
	  }
	});
	Header._searchField.focusout(Header.CloseSearch);
}

Header.Clear = function(){
	Header.CloseSearch();
	Header.CloseMenu();
}

Header.ToggleSearch = function(){
	var isOpen = !Header._searchField.hasClass("none");
	isOpen ? Header.CloseSearch() : Header.OpenSearch();
}

Header.OpenSearch = function(){
	Header.Clear();

	var searchField = Header._searchField;
	searchField.removeClass("none");
	searchField.focus();

	var searchIcon = Header._searchIcon;
	searchIcon.addClass("none");
}

Header.CloseSearch = function(){
	var searchField = Header._searchField;
	searchField.val('');
	searchField.addClass("none");

	var searchIcon = Header._searchIcon;
	searchIcon.removeClass("none");
}

Header.ToggleMenu = function(){
	var isOpen = Header._navMenu.hasClass("anim_roll_down");
	isOpen ? Header.CloseMenu() : Header.OpenMenu();
}
Header.OpenMenu = function(){
	Header.Clear();

	var navMenu = Header._navMenu;
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();

	Header._navIcon.addClass('open');
}
Header.CloseMenu = function(){
	var navMenu = Header._navMenu;
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();

	Header._navIcon.removeClass('open');
}

Header.OnResize = function(){
	Header.Clear();
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