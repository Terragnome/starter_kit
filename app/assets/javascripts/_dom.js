var DOM = DOM || {};

DOM.Init = function(){
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
  DOM._headerNavIcon = $('#header_nav_icon');
  DOM._headerNavMenu = $('#header_nav_menu');
  DOM._headerSearchBar = $('#header_search_bar');

  DOM._sceneLoader = $('#scene_loader');
  DOM._sceneBody = $('#scene_body');

  DOM._postFeedList = $('#post_feed_list');
}

DOM.ToggleDisplay = function(obj){
  DOM.SetDisplay(obj, (obj.css('display')=='none'));
}

DOM.SetDisplay = function(obj, isOn){
  if(obj != null){
    if(isOn){
      obj.css('display', 'block');
    }else{
      obj.css('display', 'none');
    }
  }
}
