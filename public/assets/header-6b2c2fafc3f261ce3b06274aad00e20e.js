var Header=Header||{};Header.Init=function(){Header._bar=DOM._headerBar,Header._nav=DOM._headerNav,Header._navIcon=DOM._headerNavIcon,Header._navMenu=DOM._headerNavMenu,Header._search=DOM._headerSearch,Header._searchForm=DOM._headerSearchForm,Header._searchIcon=DOM._headerSearchIcon,Header._searchField=DOM._headerSearchField,Header._navIcon.click(Header.ToggleMenu),Header._searchIcon.click(Header.ToggleSearch),Header._searchField.keypress(function(e){13==e.which?(Header._searchForm.submit(function(e){e.preventDefault(),Application.OnPageLoading();var a="&ajax=true";return $.ajax({url:$(this).attr("action"),type:$(this).attr("method"),data:$(this).serialize()+a,success:function(e){var r=this.url.replace(a,"");history.pushState({id:r},"",r),$("#scene_body").html(e)},complete:Application.OnPageAlways}),!1}),Header.CloseSearch()):27==e.which&&Header.CloseSearch()})},Header.Clear=function(){Header.CloseSearch(),Header.CloseMenu()},Header.ToggleSearch=function(){var e=!Header._search.hasClass("none");e?Header.CloseSearch():Header.OpenSearch()},Header.OpenSearch=function(){Header._searchField.val(""),Header.Clear(),Header._nav.addClass("none"),Header._search.removeClass("none");var e=Header._searchField;e.focus()},Header.CloseSearch=function(){Header._search,Header._search.addClass("none"),Header._nav.removeClass("none")},Header.ToggleMenu=function(){var e=Header._navMenu.hasClass("anim_roll_down");e?Header.CloseMenu():Header.OpenMenu()},Header.OpenMenu=function(){Header.Clear();var e=Header._navMenu;e.toggleClass("anim_roll_down"),e.toggleClass("anim_fade_in"),e.show(),Header._navIcon.addClass("open")},Header.CloseMenu=function(){var e=Header._navMenu;e.removeClass("anim_roll_down"),e.removeClass("anim_fade_in"),e.hide(),Header._navIcon.removeClass("open")},Header.OnResize=function(){Header.Clear()};