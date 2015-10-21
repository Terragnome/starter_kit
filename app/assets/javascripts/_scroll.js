var Scroll = Scroll || {};

var scrollTimeout;
Scroll.Init = function(scrollTimeoutInterval){
  Scroll.autoScroll = null;

  $(document).scroll(function(){
    Scroll.OnScrollGreedy();

    if(scrollTimeout){
        clearTimeout(scrollTimeout);
        scrollTimeout = null;
    }
    scrollTimeout = setTimeout(Scroll.OnScroll, scrollTimeoutInterval);
  });
}

Scroll.OnScroll = function(){
  if(Scroll.autoScroll) Scroll.autoScroll.stop();
}

Scroll.OnScrollGreedy = function(){
  Application.UpdateTitle();
}

Scroll.AutoScrollTo = function(pos){
  if(Scroll.autoScroll) Scroll.autoScroll.stop();

  var curScroll = DOM._body.scrollTop();
  var distance = Math.abs(curScroll-pos);
  Scroll.autoScroll = DOM._body.animate(
    { scrollTop: pos },
    {
      duration: distance/1.5,
      start: Scroll.DisableManual,
      always: Scroll.EnableManual
    }
  );
}

Scroll.EnableManual = function(){
  DOM._htmlBody.off('scroll touchmove mousewheel');
}

Scroll.DisableManual = function(){
  DOM._htmlBody.on('scroll touchmove mousewheel', function(e){
    e.preventDefault();
    e.stopPropagation();
    return false;
  });
}