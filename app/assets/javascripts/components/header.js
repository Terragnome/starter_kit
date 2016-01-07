var Header = Header || {};

Header.init = function(){
	Header._bar = DOM._headerBar;
	Header._nav = DOM._headerNav;
	Header._navIcon = DOM._headerNavIcon;
	Header._navMenu = DOM._headerNavMenu;

	Header._search = DOM._headerSearch;
	Header._searchForm = DOM._headerSearchForm;
	Header._searchIcon = DOM._headerSearchIcon;
	Header._searchField = DOM._headerSearchField;

	Header._navIcon.click(Header.toggleMenu);
	Header._searchIcon.click(Header.toggleSearch);

	Header._searchField.keypress(function(e) {
	  if (e.which == 13) {
	  	Header._searchForm.submit(function(e){
	  		e.preventDefault();

	  		Application.onPageLoading();

	  		var ajaxParam = "&ajax=true";
	  		$.ajax({
          url: $(this).attr('action'),
          type: $(this).attr('method'),
          data: $(this).serialize()+ajaxParam,
          success: function(response){
          	var nextUrl = this.url.replace(ajaxParam, "");
          	history.pushState({id: nextUrl}, '', nextUrl);
            $("#scene_body").html(response);
          },
          complete: Application.onPageAlways
	  		});

	  		return false;
	  	});

	  	Header.closeSearch();
	  }else if(e.which == 27) {
	  	Header.closeSearch();
	  }
	});
	Header._searchField.blur(Header.closeSearch);
}

Header.clear = function(){
	Header.closeSearch();
	Header.closeMenu();
}

Header.isSearchOpen = function(){
	return !Header._search.hasClass("none");
}

Header.toggleSearch = function(){
	var isOpen = Header.isSearchOpen();
	isOpen ? Header.closeSearch() : Header.openSearch();
}

Header.openSearch = function(){
	Header._searchField.val('');

	Header.clear();
	Header._nav.addClass('none');
	Header._search.removeClass('none');
	Header._searchForm.addClass('anim_fade_in');

	var searchField = Header._searchField;
	searchField.focus();
}

Header.closeSearch = function(){
	Header._search
	Header._search.addClass('none');
	Header._nav.removeClass('none');
}

Header.isMenuOpen = function(){
	return Header._navMenu.hasClass("anim_roll_down");
}

Header.toggleMenu = function(){
	var isOpen = Header.isMenuOpen();
	isOpen ? Header.closeMenu() : Header.openMenu();
}
Header.openMenu = function(){
	Header.clear();

	var navMenu = Header._navMenu;
	navMenu.toggleClass("anim_roll_down");
	navMenu.toggleClass("anim_fade_in");
	navMenu.show();

	Header._navIcon.addClass('open');
}
Header.closeMenu = function(){
	var navMenu = Header._navMenu;
	navMenu.removeClass("anim_roll_down");
	navMenu.removeClass("anim_fade_in");
	navMenu.hide();

	Header._navIcon.removeClass('open');
}

Header.onResize = function(){
	if(!Header.isSearchOpen()){
		Header.clear();
	}
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