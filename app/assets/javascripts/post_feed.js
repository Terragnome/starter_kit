var PostFeed = PostFeed || {};

PostFeed.Init = function(url){
	PostFeed.nextUrl = url;
}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");
	if(postFeed.length > 0){
		var scrollPos = $("body").scrollTop();
		var scrollBottom = $(document).height()-$(window).outerHeight();

		if(PostFeed.nextUrl && !PostFeed.isLoading && scrollPos >= scrollBottom){
			PostFeed.isLoading = true
			PostFeed.LoadMore(PostFeed.nextUrl);
            PostFeed.nextUrl = null;
		}
	}
}

PostFeed.LoadMore = function(nextUrl){
	var request = $.ajax({
		type: "GET",
		url: nextUrl,
		dataType: "script"
	})
        .done(function(data) {
	  	    var elems = $(".post_feed_instructions");
            var numElems = elems.length;
            elems.each(function(index, elem){
                if(index+2 <= numElems){
                    elem.parentNode.removeChild(elem);
                }
            });
	    })
	    .fail(function(data) {})
	    .always(function(data) {
            PostFeed.isLoading = false;
	    });
}