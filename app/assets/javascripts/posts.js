var Post = Post || {};

Post.Init = function(){
	$('html,body').scrollTop(0);
	
	$('.share_button').each(function(){ $(this).click(Post.OnShare); });
	$('.share_close').each(function(){ $(this).click(Post.OnShareClose); });
	$('.share_copy_link').each(function(){ $(this).click(Post.OnShareCopyLink); });

	$(document).unbind('keydown');
	$(document).keydown(function(e) {
		switch(e.keyCode){
			case 37:
				$('#previous_post').click();
				break;
			case 39:
				$('#next_post').click();
				break;
		}
	});
}

Post.OnShare = function(){ Post.ShowShare($(this).parent().parent()); }
Post.OnShareClose = function(){ Post.HideShare($(this).parent().parent()); }
Post.OnShareCopyLink = function(){ $(window).clipboardData.setData("Text", "google.com"); }
Post.HideShare = function(postObj){ Post.SetShare(postObj, false); }
Post.ShowShare = function(postObj){ Post.SetShare(postObj, true); }
Post.SetShare = function(postObj, isOn){
	var blocker = Application.GetBlocker();
	Application.SetObjDisplay(blocker, isOn);

	var allShare = $('.share');
	allShare.hide();

	var share = $(postObj).find(".share");
	if(share != null)
	{
		if(isOn){
			share.show();
			share.appendTo('#popups');
			share.css('left', ($(window).outerWidth()-share.outerWidth())/2+"px");
			share.css('top', ($(window).outerHeight()-share.outerHeight())/2+"px");
			share.fadeIn(150);

			blocker.one('click', function(){ Post.HideShare(postObj); });
		}else{
			share.hide();
			share.appendTo(postObj.find('.share_container'));
		}
	}
}