var Scroll=Scroll||{},scrollTimeout;Scroll.Init=function(l){Scroll.autoScroll=null,$(document).scroll(function(){scrollTimeout&&(clearTimeout(scrollTimeout),scrollTimeout=null),scrollTimeout=setTimeout(Scroll.OnScroll,l)})},Scroll.OnScroll=function(){},Scroll.AutoScrollTo=function(l){Scroll.autoScroll&&Scroll.autoScroll.stop(),DOM._body.scrollTop(l)},Scroll.EnableManual=function(){DOM._htmlBody.off("scroll touchmove mousewheel"),Input.EnablePointerEvents()},Scroll.DisableManual=function(){DOM._htmlBody.on("scroll touchmove mousewheel",function(l){return l.preventDefault(),l.stopPropagation(),!1}),Input.DisablePointerEvents()};