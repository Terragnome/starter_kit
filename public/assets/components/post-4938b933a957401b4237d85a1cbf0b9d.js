var Post=Post||{};Post.init=function(t){var n=t?$(t).find(".post_actions"):$(".post_actions");n.each(function(t,n){$(n).find(".icon_button").each(function(t,n){$(n).unbind("click"),$(n).click(function(){Post.share(n)})})})},Post.share=function(t){var n=$(t).attr("external_url");n&&window.open(n);var i=$(t).attr("share_url");if(i){$.ajax({type:"PUT",url:i,dataType:"script"}).done(function(n){n&&$(t).text(n)}).fail(function(){}).always(function(){})}};