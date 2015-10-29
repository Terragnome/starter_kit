class PostsController < ApplicationController 
  @@feed_length = 6 # This should be a multiple of 6

  before_filter :prepare_feed, :only=>[:latest, :feed]

  def latest
    respond_to do |format|
      format.html{render action: 'feed'}
      format.js{render action: 'feed'}
    end    
  end

  def tag_feed
    tags ||= params.has_key?(:tags) ? params[:tags].split(",").each{|x| x.to_sym} : [:all]

    # redirect_to latest_path and return if tags.count == 0
    redirect_to feed_path(tags.first) and return if tags.count <= 1

    respond_to do |format|
      format.html{render action: 'feed'}
      format.js{render action: 'feed'}
    end
  end

  def feed
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    begin
      @post = Post.active.where(:id=>params[:id]).take()
      @post ||= Post.active.where(:slug=>params[:id]).take()
    rescue
    end

    redirect_to latest_path and return if not @post

    respond_to do |format|
      format.html
      format.js
    end
  end

  def share
    @post = Post.active.where(:id=>params[:id]).take()

    @share_count = 0
    if @post
      key = params[:key].to_sym()
      if [:facebook, :twitter].include?(key)
        counter = Counter.find_or_create_by(:countable_type=>@post.class, :countable_id=>@post.id, :key=>key)
        counter.increment()
        counter.save()
        @share_count = counter.counter
      end
    end

    respond_to do |format|
      format.js{render action: 'share'}
    end
  end

  private

    def prepare_feed
      @tag ||= params.has_key?(:tag) ? params[:tag].to_sym : :all
      @page ||= params.has_key?(:page) ? params[:page].to_i : 1
      @scroll ||= params.has_key?(:scroll) ? params[:scroll] : :next

      if @tag == :all
        @posts=Post.active.paginate(:page=>@page, :per_page=>@@feed_length)
      else
        @posts=Post.active.tagged_with(@tag).paginate(:page=>@page, :per_page=>@@feed_length)
      end

      @tags=Post.tag_counts_on(:tags).order('taggings_count DESC')

      @selected_tags = []
      @tags.each{|tag| @selected_tags.push(tag) if tag.name == @tag.to_s}
      @selected_tags.sort_by{|x| x.name}

      @tags = @tags-@selected_tags

      @posts.reverse if @scroll == :prev
    end

end