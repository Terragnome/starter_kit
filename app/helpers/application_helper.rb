module ApplicationHelper
  def ajax_link_to(*args, **kwargs)
    link_to(*args, 'data-push'=>true, **kwargs)
  end
end