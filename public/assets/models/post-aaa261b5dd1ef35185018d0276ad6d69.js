var Post=Post||{};Post.Init=function(){$(".post_actions").each(function(t,n){$(n).find(".icon_button").each(function(t,n){$(n).click(function(){Post.Share(n)})})})},Post.Share=function(t){console.log("BLAH");var n=$(t).attr("external_url");n&&window.open(n);var o=$(t).attr("share_url");if(o){$.ajax({type:"PUT",url:o,dataType:"script"}).done(function(n){n&&$(t).text(n)}).fail(function(){}).always(function(){})}};