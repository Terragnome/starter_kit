var PostFeed = PostFeed || {};

PostFeed.Init = function(){
	PostFeed.UpdateSpacers();
}

PostFeed.UpdateSpacers = function(){
    var spacers = $("#post_feed_list").find(".spacer");
    spacers.last().hide();
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

            if(scroll == "next"){
            }else if(scroll == "prev"){
	            var firstFeedList = $(".feed_list").first();
	            if(updateHistory){
		            $(window).scrollTop($(firstFeedList).height());
		        }
	    	}
	    })
	    .fail(function(data) {
	    })
	    .always(function(data) {
            PostFeed.isLoading = false;
	    });
}