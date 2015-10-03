var PostFeed = PostFeed || {};

PostFeed.Init = function(){
	PostFeed.UpdateSpacers();

	var urls = $(".feed_list_urls").first();

	var prevUrl = urls.attr("prev_url");
	var prevAjax = urls.attr("prev_ajax");
	PostFeed.LoadMore(
		prevUrl,
		prevAjax,
		"prev",
		false
	);

	var nextUrl = urls.attr("next_url");
	var nextAjax = urls.attr("next_ajax");
	if(nextUrl){
		PostFeed.LoadMore(
			nextUrl,
			nextAjax,
			"next",
			false
		);
	}
}

PostFeed.UpdateSpacers = function(){
    var spacers = $("#post_feed_list").find(".spacer");
    spacers.show();
    spacers.last().hide();
}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");

	var scrollPos = $(window).scrollTop();
	var scrollBottom = $(document).height()-$(window).outerHeight();

	// console.log(scrollPos);
	// var bbox = $("#post_feed_list").get(0).getBoundingClientRect();
	// console.log( "TOP: "+bbox.top );
	// console.log( "BOTTOM: "+bbox.bottom );

	if(!PostFeed.isLoading && postFeed.length){
		var isPrev = (scrollPos <= 0);
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
				var nextAjax = urls.attr("next_ajax");
				if(nextUrl){
					PostFeed.LoadMore(
						nextUrl,
						nextAjax,
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

PostFeed.LoadMore = function(nextUrl, nextUrlAjax, scroll, updateHistory){
	var request = $.ajax({
		type: "GET",
		url: nextUrlAjax,
		data: { "scroll": scroll },
		dataType: "script"
	})
        .done(function(data) {
        	if(updateHistory) history.pushState({id: nextUrl}, '', nextUrl);

	  	    var elems = $(".feed_list");
	  	    var lastElem = $(".feed_list").last();

            elems.each(function(i, elem){
            	if( $(elem)[0] != lastElem[0] ){
            		$(elem).find(".more_posts").remove();
            	}
            });

            // Only show spacers between entries
            PostFeed.UpdateSpacers();

            if(scroll == "prev"){
	            var firstFeedList = $(".feed_list").first();
	            $(window).scrollTop($(firstFeedList).height());
	    	}
	    })
	    .fail(function(data) {
	    })
	    .always(function(data) {
            PostFeed.isLoading = false;
	    });
}