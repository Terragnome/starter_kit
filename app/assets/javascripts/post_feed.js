var PostFeed = PostFeed || {};

PostFeed.Init = function(){
  PostFeed.isLoading = false;
}

// PostFeed.OnScroll = function(){
//   var postFeed = DOM._postFeedList;

//   var scrollPos = DOM._window.scrollTop();
//   var scrollBottom = DOM._document.height() - DOM._window.outerHeight();

//   if(!PostFeed.isLoading && postFeed.length){
//     var isPrev = false; // (scrollPos <= 0);
//     var isNext = (scrollPos >= scrollBottom);

//     if(isPrev || isNext){
//       PostFeed.isLoading = true;

//       var urls = DOM._postFeedList.find(".feed_list");
//       if(isPrev){
//         urls = urls.first();
//         var prevUrl = urls.attr("prev_url");
//         var prevAjax = urls.attr("prev_ajax");
//         if(prevUrl){
//           PostFeed.LoadMore(
//               prevUrl,
//               prevAjax,
//               "prev",
//               true
//           );
//         }else{
//           PostFeed.isLoading = false;
//         }
//       }else{
//         urls = urls.last();
//         var nextUrl = urls.attr("next_url");
//         var nextUrlAjax = urls.attr("next_ajax");

//         if(nextUrl){
//           PostFeed.LoadMore(
//             nextUrl,
//             nextUrlAjax,
//             "next",
//             true
//           );
//         }else{
//           PostFeed.isLoading = false;
//         }
//       }
//     }
//   }
// }

// PostFeed.LoadMore = function(nextUrl, nextUrlAjax, scroll, updateHistory){
//   console.log("nextUrl "+nextUrl);
//   console.log("nextAjax "+nextUrlAjax);

// 	var request = $.ajax({
// 		type: "GET",
// 		url: nextUrlAjax,
// 		data: { "scroll": scroll },
// 		dataType: "script"
// 	})
//   .done(function(data) {
//   	if(updateHistory) history.pushState({id: nextUrl}, '', nextUrl);

//     var elems = $(".feed_list");
//     var lastElem = elems.last();

//     elems.each(function(i, elem){
//     	if( $(elem)[0] != lastElem[0] ){
//     		$(elem).find(".more_posts").remove();
//     	}
//     });

//     if(scroll == "next"){
//     }else if(scroll == "prev"){
//       var firstFeedList = elems.first();
//       if(updateHistory){
//         DOM._window.scrollTop($(firstFeedList).height());
//       }
//   	}
//   })
//   .fail(function(data) {
//   })
//   .always(function(data) {
//     PostFeed.isLoading = false;
//   });
// }