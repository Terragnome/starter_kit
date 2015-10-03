var PostFeed = PostFeed || {};

PostFeed.Init = function(){}

PostFeed.OnScroll = function(){
	var postFeed = $("#post_feed_list");

	var scrollPos = $("body").scrollTop();
	var scrollBottom = $(document).height()-$(window).outerHeight();

	if(!PostFeed.isLoading){
		var isPrev = scrollPos == 0;
		var isNext = scrollPos >= scrollBottom ;

		if(isPrev || isNext){
			PostFeed.isLoading = true

			var urls = $(".feed_list_urls")
			if(isPrev){
				urls = urls.first();
				PostFeed.LoadMore(
					urls.attr("prev_url"),
					urls.attr("prev_ajax")
				);
			}else{
				urls = urls.last();
				PostFeed.LoadMore(
					urls.attr("next_url"),
					urls.attr("next_ajax")
				);
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
            return data;

            // $('html,body').scrollTop(scrollTo);
	    })
	    .fail(function(data) {})
	    .always(function(data) {
            PostFeed.isLoading = false;
	    });
}