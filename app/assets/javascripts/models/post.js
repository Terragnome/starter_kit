var Post = Post || {};

Post.init = function(){
  $(".post_actions").each(function(i, obj){
    $(obj).find(".icon_button").each(function(j, btnObj){
      $(btnObj).unbind("click");
      $(btnObj).click(function(e){
        Post.share(btnObj);     
      })
    });
  });
}

Post.share = function(obj){
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