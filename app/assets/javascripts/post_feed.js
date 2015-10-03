var PostFeed = PostFeed || {};

PostFeed.Init = function(){
	PostFeed.UpdateSpacers();
}

PostFeed.UpdateSpacers = function(){
    var spacers = $("#post_feed_list").find(".spacer");
    spacers.show();
    spacers.last().hide();
}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");

	var scrollPos = $("body").scrollTop();
	var scrollBottom = $(document).height()-$(window).outerHeight();

	if(!PostFeed.isLoading && postFeed.length){
		var isPrev = (scrollPos == 0);
		var isNext = (scrollPos >= scrollBottom);

		if(isPrev || isNext){
			PostFeed.isLoading = true

			var urls = $(".feed_list_urls")
			if(isPrev){
				urls = urls.first();
				var prevUrl = urls.attr("prev_url");
				var prevAjax = urls.attr("prev_ajax");
				if(prevUrl){
					PostFeed.LoadMore(
						prevUrl,
						prevAjax
					);
				}
			}else{
				urls = urls.last();
				var nextUrl = urls.attr("next_url");
				var nextAjax = urls.attr("next_ajax");
				if(nextUrl){
					PostFeed.LoadMore(
						nextUrl,
						nextAjax
					);
				}
			}
	    }
	}
}

PostFeed.LoadMore = function(nextUrl, nextUrlAjax){
	var request = $.ajax({
		type: "GET",
		url: nextUrlAjax,
		dataType: "script"
	})
        .done(function(data) {
        	history.pushState({id: nextUrl}, '', nextUrl);

	  	    var elems = $(".more_posts");
	  	    var lastElem = $(".more_posts").last();

            elems.each(function(index, elem){
            	if( $(elem)[0] != lastElem[0] ) elem.parentNode.removeChild(elem);
            });

            PostFeed.UpdateSpacers();

            // $('html,body').scrollTop(scrollTo);
	    })
	    .fail(function(data) {})
	    .always(function(data) {
            PostFeed.isLoading = false;
	    });
}