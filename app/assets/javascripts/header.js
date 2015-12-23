var Header = Header || {};

Header.Init = function(){
	Header._bar = DOM._headerBar;
	Header._nav = DOM._headerNav;
	Header._navIcon = DOM._headerNavIcon;
	Header._navMenu = DOM._headerNavMenu;

	Header._search = DOM._headerSearch;
	Header._searchForm = DOM._headerSearchForm;
	Header._searchIcon = DOM._headerSearchIcon;
	Header._searchField = DOM._headerSearchField;

	Header._navIcon.click(Header.ToggleMenu);
	Header._searchIcon.click(Header.ToggleSearch);

	Header._searchField.keypress(function(e) {
	  if (e.which == 13) {
	  	Header._searchForm.submit(function(e){
	  		e.preventDefault();

	  		Application.ShowLoader();
	  		$.ajax({
          url: $(this).attr('action'),
          type: $(this).attr('method'),
          data: $(this).serialize(),
          success: function(response){
            console.log( response );
          },
          complete: Application.HideLoader
	  		});

	  		return false;
	  	});

	  	Header.CloseSearch();
	  }else if(e.which == 27) {
	  	Header.CloseSearch();
	  }
	});
	// Header._searchField.focusout(Header.CloseSearch);
}

Header.Clear = function(){
	Header.CloseSearch();
	Header.CloseMenu();
}

Header.ToggleSearch = function(){
	var isOpen = !Header._search.hasClass("none");
	isOpen ? Header.CloseSearch() : Header.OpenSearch();
}

Header.OpenSearch = function(){
	Header._searchField.val('');

	Header.Clear();
	Header._nav.addClass('none');
	Header._search.removeClass('none');

	var searchField = Header._searchField;
	searchField.focus();
}

Header.CloseSearch = function(){
	Header._search
	Header._search.addClass('none');
	Header._nav.removeClass('none');
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