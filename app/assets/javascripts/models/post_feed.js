var PostFeed = PostFeed || {};

PostFeed.init = function(){
  PostFeed.isLoading = false;

  PostFeed._loader = $("#post_feed_loader");

  Scroll.onScroll.callbacks.add(PostFeed.onScroll);
}

PostFeed.onScroll = function(){
  PostFeed._feed = $("#post_feed");

  var postFeed = $(PostFeed._feed);
  if(!postFeed || postFeed.length <= 0) return;
  postFeed = postFeed.first();

  var scrollPos = DOM._window.scrollTop();
  var scrollBottom = DOM._document.height() - DOM._window.outerHeight();

  if(!PostFeed.isLoading && postFeed.length){
    var isPrev = false; // (scrollPos <= 0);
    var isNext = (scrollPos >= scrollBottom);

    if(isPrev || isNext){
      PostFeed.isLoading = true;

      var urls = postFeed.find(".feed_list");
      if(isPrev){
        urls = urls.first();
        var prevUrl = urls.attr("prev_url");
        var prevAjax = urls.attr("prev_ajax");
        if(prevUrl){
          PostFeed.loadMore(
              prevUrl,
              prevAjax,
              "prev",
              true
          );
        }else{
          PostFeed.isLoading = false;
        }
      }else{
        urls = urls.last();
        var nextUrl = urls.attr("next_url");
        var nextUrlAjax = urls.attr("next_ajax");

        if(nextUrl){
          PostFeed.loadMore(
            nextUrl,
            nextUrlAjax,
            "next",
            true
          );
        }else{
          PostFeed.isLoading = false;
        }
      }
    }
  }
}

PostFeed.loadMore = function(nextUrl, nextUrlAjax, scroll, updateHistory){
  PostFeed._loader.show();
  $(".more_posts").hide();

	var request = $.ajax({
		type: "GET",
		url: nextUrlAjax,
		data: { "scroll": scroll },
		dataType: "script"
	})
  .done(function(data) {
  	if(updateHistory) history.pushState({id: nextUrl}, '', nextUrl);

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
        Scroll.autoScrollTo($(firstFeedList).height());
      }
  	}
  })
  .fail(function(data) {
  })
  .always(function(data) {
    PostFeed._loader.hide();
    $(".more_posts").show();

    PostFeed.isLoading = false;
  });
}