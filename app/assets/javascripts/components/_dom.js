var DOM = DOM || {};

DOM.init = function(){
  DOM._window = $(window);
  DOM._document = $(document);
  DOM._htmlBody = $('html, body');
  DOM._html = $('html');
  DOM._body = $('body');

  DOM._appDescription = $('#app_description');

  DOM._blocker = $('#blocker');

  DOM._header = $('#header');
  DOM._headerBar = $('#header_bar');
  DOM._headerTitle = $('#header_title');
  DOM._headerSearch = $('#header_search');
  DOM._headerNav = $('#header_nav');
  DOM._headerNavIcon = $('#header_nav_icon');
  DOM._headerNavMenu = $('#header_nav_menu');
  DOM._headerSearchForm = $('#header_search_form');
  DOM._headerSearchIcon = $('#header_search_icon');
  DOM._headerSearchField = $('#header_search_field');

  DOM._scene = $('#scene');
  DOM._sceneLoader = $('#scene_loader');
  DOM._sceneBody = $('#scene_body');
}

DOM.toggleDisplay = function(obj){
  DOM.setDisplay(obj, (obj.css('display')=='none'));
}

DOM.setDisplay = function(obj, isOn){
  if(obj != null){
    if(isOn){
      obj.css('display', 'block');
    }else{
      obj.css('display', 'none');
    }
  }
}
