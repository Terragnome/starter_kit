var Input = Input || {};

Input.Init = function(){}

Input.EnablePointerEvents = function(){ DOM._htmlBody.attr('pointer-events', 'auto'); }
Input.DisablePointerEvents = function(){ DOM._htmlBody.attr('pointer-events', 'none'); }