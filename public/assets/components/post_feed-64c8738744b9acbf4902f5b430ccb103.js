var PostFeed=PostFeed||{};PostFeed.init=function(){console.log("POST FEED"),PostFeed._loader=$("#post_feed_loader"),PostFeed.enableScroll()},PostFeed.enableScroll=function(){Scroll.onScroll.callbacks.add(PostFeed.onScroll)},PostFeed.disableScroll=function(){Scroll.onScroll.callbacks.remove(PostFeed.onScroll)},PostFeed.onScroll=function(){if("none"==DOM._sceneLoader.css("display")){PostFeed._feed=$("#post_feed");var e=PostFeed._feed;if(e&&!(e.length<=0)){e=e.first();var o=DOM._window.scrollTop(),t=DOM._document.height()-DOM._window.outerHeight(),d=!1,l=o>=t;if(d||l){var s=e.find(".feed_list");if(d){s=s.first();var a=s.attr("prev_url"),r=s.attr("prev_ajax");a&&(PostFeed.disableScroll(),PostFeed.loadMore(a,r,"prev",!0))}else{s=s.last();var n=s.attr("next_url"),i=s.attr("next_ajax");n&&(PostFeed.disableScroll(),PostFeed.loadMore(n,i,"next",!0))}}}}},PostFeed.showLoader=function(){PostFeed._loader.show(),PostFeed._loader.addClass("anim_fade_in")},PostFeed.hideLoader=function(){PostFeed._loader.hide(),PostFeed._loader.removeClass("anim_fade_in")},PostFeed.loadMore=function(e,o,t,d){PostFeed.showLoader(),$(".more_posts").hide();$.ajax({type:"GET",url:o,data:{scroll:t},dataType:"script"}).done(function(){d&&history.pushState({id:e},"",e);var o=$(".feed_list"),l=o.last();if(o.each(function(e,o){$(o)[0]!=l[0]&&$(o).find(".more_posts").remove()}),"next"==t);else if("prev"==t){var s=o.first();d&&Scroll.scrollTo($(s).height())}Post.init(l),l.addClass("anim_fade_in")}).fail(function(){}).always(function(){PostFeed.hideLoader(),$(".more_posts").show(),PostFeed.enableScroll()})};