var Post = Post || {};

Post.Init = function(){
  $(".post_actions").each(function(i, obj){
    $(obj).find(".icon_button").each(function(j, btnObj){
      $(btnObj).click(function(e){
        Post.Share(btnObj);     
      })
    });
  });
}

Post.Share = function(obj){
  var externalUrl = $(obj).attr('external_url');
  if(externalUrl) window.open(externalUrl);

  var shareUrl = $(obj).attr('share_url');
  if(shareUrl){
    var request = $.ajax({
      type: "PUT",
      url: shareUrl,
      dataType: "script"
    })
    .done(function(data){
      if(data){ $(obj).text(data); }
    })
    .fail(function(data){})
    .always(function(data){});
  }
}