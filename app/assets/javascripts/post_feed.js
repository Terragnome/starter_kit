var PostFeed = PostFeed || {};

PostFeed.Init = function(ajaxUrl, url){
	PostFeed.nextAjaxUrl = ajaxUrl;
	PostFeed.nextUrl = url;
}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");
	if(postFeed.length > 0){
		var scrollPos = $("body").scrollTop();
		var scrollBottom = $(document).height()-$(window).outerHeight();

		if(PostFeed.nextAjaxUrl && !PostFeed.isLoading && scrollPos >= scrollBottom){
			PostFeed.isLoading = true
			PostFeed.LoadMore(PostFeed.nextAjaxUrl, PostFeed.nextUrl);
            PostFeed.nextAjaxUrl = null;
            PostFeed.nextUrl = null;
		}
	}
}

PostFeed.LoadMore = function(nextAjaxUrl, nextUrl){
	var request = $.ajax({
		type: "GET",
		url: nextAjaxUrl,
		dataType: "script"
	})
        .done(function(data) {
        	history.pushState({id: nextUrl}, '', nextUrl);
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