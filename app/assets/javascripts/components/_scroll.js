var Scroll = Scroll || {};

var scrollTimeout;
Scroll.init = function(scrollTimeoutInterval){
  // Scroll.autoScroll = null;

  $(document).scroll(function(){
    if(scrollTimeout){
        clearTimeout(scrollTimeout);
        scrollTimeout = null;
    }
    scrollTimeout = setTimeout(Scroll.onScroll, scrollTimeoutInterval);
  });

  Scroll.onScroll.callbacks = $.Callbacks();
}

Scroll.onScroll = function(){
  Scroll.onScroll.callbacks.fire();

}

Scroll.autoScrollTo = function(pos){
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

Scroll.enableManual = function(){
  DOM._htmlBody.off('scroll touchmove mousewheel');
  Input.enablePointerEvents();
}

Scroll.disableManual = function(){
  DOM._htmlBody.on('scroll touchmove mousewheel', function(e){
    e.preventDefault();
    e.stopPropagation();
    return false;
  });
  Input.disablePointerEvents();
}