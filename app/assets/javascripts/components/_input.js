var Input = Input || {};

Input.init = function(){}

Input.enablePointerEvents = function(){ DOM._htmlBody.attr('pointer-events', 'auto'); }
Input.disablePointerEvents = function(){ DOM._htmlBody.attr('pointer-events', 'none'); }