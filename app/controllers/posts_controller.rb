class PostsController < ApplicationController 
  @@feed_length = 5

  def latest
    @tag=:all
    @page=1

    @posts=Post.active.paginate(:page=>@page, :per_page=>@@feed_length)

    respond_to do |format|
      format.html{render action: 'feed'}
      format.js{render action: 'feed'}
    end
  end

  def feed
    @tag = params.has_key?(:tag) ? params[:tag].to_sym : :all
    @page = params.has_key?(:page) ? params[:page].to_i : 1
    @scroll = params.has_key?(:scroll) ? params[:scroll] : :next

    if @tag == :all
      @posts=Post.active.paginate(:page=>@page, :per_page=>@@feed_length)
    else
      @posts=Post.active.tagged_with(@tag).paginate(:page=>@page, :per_page=>@@feed_length)
    end

    @posts.reverse if @scroll == :prev

    respond_to do |format|
      format.html
      format.js
    end
  end

  def index_by_tag
    tag=params[:tag]
    @posts=Post.active.tagged_with(tag)
    @tags=@posts.tag_counts_on(:tags)

    respond_to do |format|
      format.html{render action: 'index'}
      format.js{render action: 'index'}
    end
  end

  def index_by_user
    user=User.find_by_nickname(params[:nickname])
    @posts=user.posts.active
    @tags=@posts.tag_counts_on(:tags)

    respond_to do |format|
      format.html{render action: 'index'}
      format.js{render action: 'index'}
    end
  end

  def index
    @posts=Post.active
    @tags=@posts.tag_counts_on(:tags)
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    begin
      @post=Post.active.find(params[:id])
    rescue
      redirect_to latest_path and return
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

end