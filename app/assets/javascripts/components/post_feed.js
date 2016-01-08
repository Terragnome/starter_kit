var PostFeed = PostFeed || {};

PostFeed.init = function(){
  PostFeed._loader = $("#post_feed_loader");
  PostFeed.enableScroll();
}

PostFeed.enableScroll = function(){
  Scroll.onScroll.callbacks.add(PostFeed.onScroll);
}
PostFeed.disableScroll = function(){
  Scroll.onScroll.callbacks.remove(PostFeed.onScroll);
}

PostFeed.onScroll = function(){
  if(DOM._sceneLoader.css("display") != "none") return;

  PostFeed._feed = $("#post_feed");
  var postFeed = PostFeed._feed;
  if(!postFeed || postFeed.length <= 0) return;
  postFeed = postFeed.first();

  var scrollPos = DOM._window.scrollTop();
  var scrollBottom = DOM._document.height() - DOM._window.outerHeight();

  var isPrev = false; // (scrollPos <= 0);
  var isNext = (scrollPos >= scrollBottom);
  if(!isPrev && !isNext) return;

  var urls = postFeed.find(".feed_list");
  if(isPrev){
    urls = urls.first();
    var prevUrl = urls.attr("prev_url");
    var prevAjax = urls.attr("prev_ajax");

    if(prevUrl){
      PostFeed.disableScroll();
      PostFeed.loadMore(
          prevUrl,
          prevAjax,
          "prev",
          true
      );
    }
  }else{
    urls = urls.last();
    var nextUrl = urls.attr("next_url");
    var nextUrlAjax = urls.attr("next_ajax");

    if(nextUrl){
      PostFeed.disableScroll();
      PostFeed.loadMore(
        nextUrl,
        nextUrlAjax,
        "next",
        true
      );
    }
  }
}

PostFeed.showLoader = function(){
  PostFeed._loader.show();
  PostFeed._loader.addClass('anim_fade_in');  
}

PostFeed.hideLoader = function(){
  PostFeed._loader.hide();
  PostFeed._loader.removeClass('anim_fade_in');
}

PostFeed.loadMore = function(nextUrl, nextUrlAjax, scroll, updateHistory){
  PostFeed.showLoader();

  $(".more_posts").hide();

	var request = $.ajax({
		type: "GET",
		url: nextUrlAjax,
		data: { "scroll": scroll },
		dataType: "script"
	})
  .done(function(data) {
  	if(updateHistory){
      history.scrollRestoration = 'manual';
      var stateData = {
        id: nextUrl,
        path: window.location.href,
        scrollTop: DOM.getPageTop()
      }
      history.pushState(stateData, '', nextUrl);
      history.scrollRestoration = 'auto';
    }

    var elems = $(".feed_list");
    var lastElem = elems.last();

    elems.each(function(i, elem){
    	if( $(elem)[0] != lastElem[0] ){
    		$(elem).find(".more_posts").remove();
    	}
    });

    if(scroll == "next"){
    }else if(scroll == "prev"){
      var firstFeedList = elems.first();
      if(updateHistory){
        Scroll.scrollTo($(firstFeedList).height());
      }
  	}

    Post.init(lastElem);
    lastElem.addClass('anim_fade_in');
  })
  .fail(function(data) {
  })
  .always(function(data) {
    PostFeed.hideLoader();
    $(".more_posts").show();
    PostFeed.enableScroll();
  });
}