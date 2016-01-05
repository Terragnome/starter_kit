var Blocker = Blocker || {};

Blocker.Init = function(blocker){
  Blocker._blocker = blocker;
}

Blocker.Toggle = function(){
  var isOn = (Blocker._blocker.css('display') == 'none');
  Blocker.SetDisplay(isOn);
}
Blocker.Enable = function(){ DOM.SetDisplay(blocker, true); }
Blocker.Disable = function(){ DOM.SetDisplay(blocker, false); }

Blocker.SetDisplay = function(isOn){
  var blocker = Blocker._blocker;
  if(isOn){
    DOM._htmlBody.css('pointer-events', 'none');
    blocker.fadeIn('fast', Blocker.Enable);
  }else{
    DOM._htmlBody.css('pointer-events', 'auto');
    blocker.fadeOut('fast', Blocker.Disable);
  }
}