var PostFeed = PostFeed || {};

PostFeed.Init = function(url){
	PostFeed.nextUrl = url;
}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");
	if(postFeed.length > 0){
		var scrollPos = $("body").scrollTop();
		var scrollBottom = $(document).height()-$(window).outerHeight();

		if(!PostFeed.isLoading && scrollPos >= scrollBottom){
			PostFeed.isLoading = true
			PostFeed.LoadMore();
		}
	}
}

PostFeed.LoadMore = function(){
	var request = $.ajax({
		type: "GET",
		url: PostFeed.nextUrl,
		dataType: "script"
	})
	  .done(function(data) {})
	  .fail(function(data) {})
	  .always(function(data) {
	  	PostFeed.isLoading = false;
	  });
}