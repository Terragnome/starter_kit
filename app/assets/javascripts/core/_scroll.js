var Scroll = Scroll || {};

Scroll.init = function(scrollTimeoutInterval){
  Scroll.scrollTimeout;

  $(document).scroll(function(){
    if(Scroll.scrollTimeout){
        clearTimeout(Scroll.scrollTimeout);
        Scroll.scrollTimeout = null;
    }
    Scroll.scrollTimeout = setTimeout(Scroll.onScroll, scrollTimeoutInterval);
  });

  if(Scroll.onScroll.callbacks) Scroll.onScroll.callbacks.empty();
  Scroll.onScroll.callbacks = $.Callbacks();
}

Scroll.onScroll = function(){
  Scroll.onScroll.callbacks.fire();
}

Scroll.scrollTo = function(pos, isAnimated){
  if(Scroll.autoScroll) Scroll.autoScroll.stop();

  if(isAnimated){
    var curScroll = DOM._body.scrollTop();
    var distance = Math.abs(curScroll-pos);
    Scroll.autoScroll = DOM._body.animate(
      { scrollTop: pos },
      {
        duration: distance/1.75,
        start: Scroll.DisableManual,
        always: Scroll.EnableManual
      }
    );    
  }else{
    DOM._body.scrollTop(pos);
  }
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