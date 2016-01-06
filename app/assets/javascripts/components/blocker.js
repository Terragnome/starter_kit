var Blocker = Blocker || {};

Blocker.init = function(blocker){
  Blocker._blocker = blocker;
}

Blocker.toggle = function(){
  var isOn = (Blocker._blocker.css('display') == 'none');
  Blocker.setDisplay(isOn);
}
Blocker.enable = function(){ DOM.setDisplay(blocker, true); }
Blocker.disable = function(){ DOM.setDisplay(blocker, false); }

Blocker.setDisplay = function(isOn){
  var blocker = Blocker._blocker;
  if(isOn){
    DOM._htmlBody.css('pointer-events', 'none');
    blocker.fadeIn('fast', Blocker.enable);
  }else{
    DOM._htmlBody.css('pointer-events', 'auto');
    blocker.fadeOut('fast', Blocker.disable);
  }
}