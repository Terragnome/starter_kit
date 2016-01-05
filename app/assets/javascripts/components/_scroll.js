var Scroll = Scroll || {};

var scrollTimeout;
Scroll.Init = function(scrollTimeoutInterval){
  // Scroll.autoScroll = null;

  $(document).scroll(function(){
    if(scrollTimeout){
        clearTimeout(scrollTimeout);
        scrollTimeout = null;
    }
    scrollTimeout = setTimeout(Scroll.OnScroll, scrollTimeoutInterval);
  });
}

Scroll.OnScroll = function(){}

Scroll.AutoScrollTo = function(pos){
  // if(Scroll.autoScroll) Scroll.autoScroll.stop();

  // var curScroll = DOM._body.scrollTop();
  // var distance = Math.abs(curScroll-pos);
  // Scroll.autoScroll = DOM._body.animate(
  //   { scrollTop: pos },
  //   {
  //     duration: distance/1.75,
  //     start: Scroll.DisableManual,
  //     always: Scroll.EnableManual
  //   }
  // );
  DOM._body.scrollTop(pos);
  //
}

Scroll.EnableManual = function(){
  DOM._htmlBody.off('scroll touchmove mousewheel');
  Input.EnablePointerEvents();
}

Scroll.DisableManual = function(){
  DOM._htmlBody.on('scroll touchmove mousewheel', function(e){
    e.preventDefault();
    e.stopPropagation();
    return false;
  });
  Input.DisablePointerEvents();
}